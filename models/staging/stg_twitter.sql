with stg_twitter as (

    select 
        date,
        0 as add_to_cart,
        clicks,
        comments,
        engagements,
        impressions,
        0 as installs,
        likes,
        url_clicks as link_clicks,
        0 as post_click_conversions,
        0 as post_view_conversions,
        retweets as posts,
        0 as purchase,
        0 as registrations,
        0 as revenue,
        retweets as shares,
        spend,
        0 as total_conversions,
        video_total_views as video_views,
        0 as ad_id,
        0 as adset_id,
        campaign_id,
        channel,
        0 as creative_id,
        0 as placement_id,

        from {{ ref('src_promoted_tweets_twitter_all_data')}}
    
)

select * from stg_twitter