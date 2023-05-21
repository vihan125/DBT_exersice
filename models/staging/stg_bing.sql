
/* Mapping raw data of Bing advertiesments to the Improvado MCDM model */

with stg_bing as (

    select 
        date,
        0 as add_to_cart,
        clicks,
        0 as comments,
        0 as engagements,
        imps as impressions,
        0 as installs,
        imps as likes,
        0 as link_clicks,
        clicks as post_click_conversions,
        0 as post_view_conversions,
        0 as posts,
        0 as purchase,
        0 as registrations,
        revenue,
        0 as shares,
        spend,
        conv as total_conversions,
        0 as video_views,
        ad_id,
        adset_id,
        campaign_id,
        channel,
        0 as creative_id,
        0 as placement_id,
        from {{ ref('src_ads_bing_all_data')}} 
)

select * from stg_bing