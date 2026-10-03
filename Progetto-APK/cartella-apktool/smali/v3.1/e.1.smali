.class public final synthetic Lv3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/RB;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lv3/e;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lv3/e;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)LD4/b;
    .locals 5

    .line 1
    iget v0, p0, Lv3/e;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lv3/e;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/fp;

    .line 9
    .line 10
    new-instance v0, Lv3/r;

    .line 11
    .line 12
    new-instance v2, Landroid/util/JsonReader;

    .line 13
    .line 14
    new-instance v3, Ljava/io/InputStreamReader;

    .line 15
    .line 16
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/fp;->a:Ljava/io/InputStream;

    .line 17
    .line 18
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/fp;->b:Lcom/google/android/gms/internal/ads/Wc;

    .line 25
    .line 26
    invoke-direct {v0, v2, p1}, Lv3/r;-><init>(Landroid/util/JsonReader;Lcom/google/android/gms/internal/ads/Wc;)V

    .line 27
    .line 28
    .line 29
    check-cast v1, Lcom/google/android/gms/internal/ads/Wc;

    .line 30
    .line 31
    :try_start_0
    sget-object p1, Ll3/p;->f:Ll3/p;

    .line 32
    .line 33
    iget-object p1, p1, Ll3/p;->a:Lp3/d;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Wc;->G:Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lp3/d;->h(Landroid/os/Bundle;)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, v0, Lv3/r;->b:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    const-string p1, "{}"

    .line 49
    .line 50
    iput-object p1, v0, Lv3/r;->b:Ljava/lang/String;

    .line 51
    .line 52
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :pswitch_0
    check-cast v1, Lv3/j;

    .line 58
    .line 59
    check-cast p1, Ljava/util/ArrayList;

    .line 60
    .line 61
    const-string v0, "google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lv3/j;->A3(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/aC;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v2, Lv3/G;

    .line 68
    .line 69
    invoke-direct {v2, v1, p1}, Lv3/G;-><init>(Lv3/j;Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, v1, Lv3/j;->M:Lcom/google/android/gms/internal/ads/jC;

    .line 73
    .line 74
    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/ads/Cw;->b2(LD4/b;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/KB;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :pswitch_1
    check-cast v1, Lv3/j;

    .line 80
    .line 81
    check-cast p1, Landroid/net/Uri;

    .line 82
    .line 83
    const-string v0, "google.afma.nativeAds.getPublisherCustomRenderedClickSignals"

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Lv3/j;->A3(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/aC;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    new-instance v2, Lv3/f;

    .line 90
    .line 91
    invoke-direct {v2, p1}, Lv3/f;-><init>(Landroid/net/Uri;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, v1, Lv3/j;->M:Lcom/google/android/gms/internal/ads/jC;

    .line 95
    .line 96
    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/ads/Cw;->b2(LD4/b;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/KB;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    return-object p1

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
