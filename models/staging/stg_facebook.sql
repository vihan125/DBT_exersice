
/* Mapping raw data of facebook advertiesments to the Improvado MCDM model */

with stg_facebook as (

    select 
        date,
        add_to_cart,
        clicks as clicks,
        comments + comments_2 as comments,
        views_2 + clicks_2 as engagements,
        impressions,
        mobile_app_install as installs,
        likes,
        inline_link_clicks as link_clicks,
        inline_link_clicks as post_click_conversions,
        views + views_2 as post_view_conversions,
        shares + shares_2 as posts,
        purchase + purchase_2 as purchase,
        complete_registration as registrations,
        purchase_value as revenue,
        shares + shares_2 as shares,
        spend,
        purchase_2 as total_conversions,
        views as video_views,
        ad_id,
        adset_id,
        campaign_id,
        channel,
        creative_id,
        0 as placement_id,
        from {{ ref('src_ads_creative_facebook_all_data')}}
    
)

select * from stg_facebook