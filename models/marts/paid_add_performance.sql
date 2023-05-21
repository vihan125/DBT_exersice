
/* Creating the final tabel of MCDM which is pushed to BigQuery to generate report*/

{{ config(materialized='table') }}

with paid_add_performance as (
    select
        date,
        add_to_cart,
        clicks,
        comments,
        engagements,
        impressions,
        installs,
        likes,
        link_clicks,
        post_click_conversions,
        post_view_conversions,
        posts,
        purchase,
        registrations,
        revenue,
        shares,
        spend,
        total_conversions,
        video_views,
        ad_id,
        adset_id,
        campaign_id,
        channel,
        creative_id,
        placement_id,

        from (

            select * from {{ ref ('stg_bing')}}
            union all 
            select * from {{ ref ('stg_facebook')}}
            union all
            select * from {{ ref ('stg_tiktok')}}
            union all
            select * from {{ ref ('stg_twitter')}}

        )

)

select * from paid_add_performance