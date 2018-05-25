package com.android.myapplication.adapters;

import android.content.Context;
import android.content.Intent;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.myapplication.R;
import com.android.myapplication.activities.AnimeActivity;
import com.android.myapplication.model.Anime;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.RequestOptions;

import java.util.ArrayList;
import java.util.List;

public class RecyclerViewAdapter extends RecyclerView.Adapter<RecyclerViewAdapter.MyViewHolder> {
    private Context mcContext;
    private List<Anime> mData;
    RequestOptions option;

    public RecyclerViewAdapter(Context mcContext, List<Anime> mData) {
        this.mcContext = mcContext;
        this.mData = mData;
        option = new RequestOptions().centerCrop().placeholder(R.drawable.loading_shape).error(R.drawable.loading_shape);
    }

    @Override
    public MyViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view;
        LayoutInflater inflater = LayoutInflater.from(mcContext);
        view = inflater.inflate(R.layout.anime_row_item,parent,false);
        final MyViewHolder viewHolder = new MyViewHolder(view);
        viewHolder.view_container.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(mcContext, AnimeActivity.class);
                i.putExtra("position",mData.get(viewHolder.getAdapterPosition()).getPosition());
                i.putExtra("anime_description",mData.get(viewHolder.getAdapterPosition()).getDescription());
                i.putExtra("salary",mData.get(viewHolder.getAdapterPosition()).getSalary());
                i.putExtra("requirement",mData.get(viewHolder.getAdapterPosition()).getRequirement());
                i.putExtra("area",mData.get(viewHolder.getAdapterPosition()).getArea());
                i.putExtra("company",mData.get(viewHolder.getAdapterPosition()).getCompany());
                i.putExtra("anime_img",mData.get(viewHolder.getAdapterPosition()).getImage_url());
                mcContext.startActivity(i);
            }
        });
        return viewHolder;
    }

    @Override
    public void onBindViewHolder(MyViewHolder holder, int position) {
        holder.tv_position.setText(mData.get(position).getPosition());
        holder.tv_company.setText(mData.get(position).getCompany());
        holder.tv_salary.setText(mData.get(position).getSalary());
        holder.tv_area.setText(mData.get(position).getArea());
        Glide.with(mcContext).load(mData.get(position).getImage_url()).apply(option).into(holder.img_thumbnail);
    }

    @Override
    public int getItemCount() {
        return mData.size();
    }

    public void setfilter(List<Anime> filtermodelist) {
        mData = new ArrayList<>();
        mData.addAll(filtermodelist);
        notifyDataSetChanged();
    }

    public static  class MyViewHolder extends RecyclerView.ViewHolder {
        TextView tv_position;
        TextView tv_company;
        TextView tv_salary;
        TextView tv_area;
        ImageView img_thumbnail;
        LinearLayout view_container;
        public MyViewHolder(View itemView) {
            super(itemView);
            view_container = itemView.findViewById(R.id.container);
            tv_position = itemView.findViewById(R.id.position);
            tv_area = itemView.findViewById(R.id.area);
            tv_company = itemView.findViewById(R.id.company);
            tv_salary = itemView.findViewById(R.id.salary);
            img_thumbnail = itemView.findViewById(R.id.thumbnail);
        }
    }
}
