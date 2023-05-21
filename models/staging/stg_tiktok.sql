
/* Mapping raw data of tiktok advertiesments to the Improvado MCDM model */

with stg_tiktok as (

    select 
        date,
        add_to_cart,
        clicks,
        0 as comments,
        0 as engagements,
        impressions,
        rt_installs + skan_app_install as installs,
        0 as likes,
        clicks as link_clicks,
        skan_conversion as post_view_conversions,
        conversions as post_click_conversions,
        0 as posts,
        purchase,
        registrations,
        0 as revenue,
        0 as shares,
        spend,
        skan_conversion + conversions as total_conversions,
        video_views,
        ad_id,
        adgroup_id as adset_id,
        campaign_id,
        channel,
        0 as creative_id,
        0 as placement_id,

        from {{ ref('src_ads_tiktok_ads_all_data')}}
    
)

select * from stg_tiktok