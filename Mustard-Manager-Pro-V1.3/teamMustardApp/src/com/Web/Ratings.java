package com.Web;

import java.util.ArrayList;

public class Ratings {
	private ArrayList<Rating> ratings;
	public Ratings()
	{
		ratings = new ArrayList <>();
	}
	public void addRating(Rating rating)
	{
		ratings.add(rating);
	}
	public ArrayList <Rating> getRatings()
	{
		return ratings;
	}
	public void setRatings(ArrayList<Rating>ratings)
	{
		this.ratings=ratings;
	}
}
