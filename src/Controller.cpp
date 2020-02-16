#include "Controller.h"
#include <cmath>
#include <iostream>
namespace mrsd
{
	void Controller::control(const mrsd::Game& g, float t)
	{
		float speed = g.playerSpeed;
		std::vector<Player*> players = g.getPlayers();
		for(std::vector<Player*>::iterator it = players.begin(); it != players.end(); it++)
		{
			float current_pos = (*it) -> x;
			// std::cout << current_pos << "\n";
			float safe_pos = pickSafeSpot(g, *it);
			if (safe_pos > current_pos)
			{
				(*it)->x = current_pos+speed;
				std::cout << "Safe at " << safe_pos << "; moved to " << current_pos+speed << "\n";
			}
			else if (safe_pos < current_pos)
			{
				(*it)->x = current_pos-speed;
				std::cout << "Safe at " << safe_pos << "; moved to " << current_pos-speed << "\n";
			}
			// (*it)->x = safe_pos;
			
			// std::cout << t << "\n";
		}
	}

	void Controller::createPlayer(Game& g)
	{
		if(p == 0)
		{
			p = new Player();
			p->dead = true;
		}
		if(p->dead)
		{
			p->dead = false;
			p->x = g.getWidth()/2;
			g.newPlayer(p);
		}
	}

	Prediction Controller::trackProjectile(const Projectile& p, const Game& g)
	{
		Prediction pred;
		float x = p.x;
		float y = p.y;
		float vx = p.vx;
		float vy = p.vy;
		float gravity = g.getGravity();
		float t = ceil((-vy - sqrt(vy*vy - 2*gravity*y))/gravity*10)/10;
		// std::cout << t << "\n";
		float time = g.getGameTime();
		pred.x = x + t*vx;
		pred.t = time + t;
		return pred;
	}

	void Controller::determineSafeSpots(const Game& g, int* danger)
	{		
		// int dangerTime = g.explosionSize/g.playerSpeed;
		int w = g.getWidth();
		std::list<Projectile> projectiles = g.getProjectiles();
		for(std::list<Projectile>::iterator it = projectiles.begin();
				it != projectiles.end(); it++)
		{
			Prediction pred = trackProjectile((*it), g);
			if(pred.t > g.getGameTime()+5) continue;
			for(int i = std::floor(pred.x - g.explosionSize);
				i <= std::ceil(pred.x + g.explosionSize);
				++i)
			{
				if( i >= 0 && i <= w )
					danger[i]++;
			}
		}
		std::list<Explosion> explosions = g.getExplosions();
		for(std::list<Explosion>::iterator it = explosions.begin();
				it != explosions.end(); it++)
		{
			std::cout << (*it).x << "\n";
			for(int i = std::floor((*it).x - g.explosionSize);
				i <= std::ceil((*it).x + g.explosionSize);
				++i)
			{
				if( i >= 0 && i <= w )
					danger[i]++;
			}
		}
	}

	int Controller::pickSafeSpot(const Game& g, Player* p)
	{
		int w = g.getWidth();
		int *danger = new int[w+1];
		std::vector<int> safe(w+1, 0);
		// std::vector<std::vector<int>> safe(g.explosionTime/0.1, safe1);
		for(int i = 0; i < w+1; ++i) danger[i] = 0;
		determineSafeSpots(g, danger);
		for(int i = 0; i<= w; ++i){
			if(danger[i]==0)
			{
				safe[i]=0;
			}
			else{
				safe[i] = 1;
			}
		}
		int current_x = p->x;
		for(int i = 0; current_x+i<w+1; ++i){
			if (safe[current_x+i] == 0){
				return current_x+i;
			}
		}
		for(int i = 0; current_x-i>=0; ++i){
			if (safe[current_x-i] == 0){
				return current_x-i;
			}
		}
		return 100;
	}
}
