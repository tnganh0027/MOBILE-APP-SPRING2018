package com.android.myapplication.activities;

import android.os.Bundle;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.v7.app.AppCompatActivity;
import android.widget.ImageView;
import android.widget.TextView;

import com.android.myapplication.R;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.RequestOptions;

public class AnimeActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_anime);
        //hide the default actionBar
        getSupportActionBar().hide();
        //Recive data
        String position = getIntent().getExtras().getString("position");
        String description = getIntent().getExtras().getString("anime_description");
        String salary = getIntent().getExtras().getString("salary");
        String requirement = getIntent().getExtras().getString("requirement");
        String area = getIntent().getExtras().getString("area");
        String image_url = getIntent().getExtras().getString("anime_img");
        String company = getIntent().getExtras().getString("anime_rating");
        //ini view
        CollapsingToolbarLayout collapsingToolbarLayout = findViewById(R.id.collasingtoolbar_id);
        collapsingToolbarLayout.setTitleEnabled(true);
        TextView tv_position = findViewById(R.id.aa_position);
        TextView tv_salary = findViewById(R.id.aa_salary);
        TextView tv_requirement = findViewById(R.id.aa_requirement);
        TextView tv_description = findViewById(R.id.aa_description);
        TextView tv_company = findViewById(R.id.aa_company);
        TextView tv_area = findViewById(R.id.aa_area);
        ImageView img = findViewById(R.id.aa_thumbnail);
        //seting value to each view
        tv_position.setText(position);
        tv_requirement.setText(requirement);
        tv_description.setText(description);
        tv_company.setText(company);
        tv_area.setText(area);
        tv_salary.setText(salary);
        collapsingToolbarLayout.setTitle(position);
        RequestOptions requestOptions = new RequestOptions().centerCrop().placeholder(R.drawable.loading_shape).error(R.drawable.loading_shape);

        //set image using glide
        Glide.with(this).load(image_url).apply(requestOptions).into(img);

    }
}
