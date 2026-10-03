.class public abstract Lcom/google/android/gms/internal/ads/y8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/f8;

.field public static final b:Lcom/google/android/gms/internal/ads/f8;

.field public static final c:Lcom/google/android/gms/internal/ads/f8;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "gads:separate_url_generation:enabled"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/f8;->j(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/f8;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/y8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/f8;

    .line 11
    .line 12
    const-string v1, "googleads.g.doubleclick.net;pubads.g.doubleclick.net"

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    const-string v3, "gads:google_ad_request_domains"

    .line 16
    .line 17
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/f8;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/gms/internal/ads/y8;->b:Lcom/google/android/gms/internal/ads/f8;

    .line 21
    .line 22
    const-string v0, "gads:url_cache:max_size"

    .line 23
    .line 24
    const-wide/16 v1, 0xc8

    .line 25
    .line 26
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/f8;->b(JLjava/lang/String;)Lcom/google/android/gms/internal/ads/f8;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/google/android/gms/internal/ads/y8;->c:Lcom/google/android/gms/internal/ads/f8;

    .line 31
    .line 32
    return-void
.end method
