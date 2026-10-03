.class public final synthetic Lcom/google/android/gms/internal/ads/pp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vz;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/internal/ads/Wc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Wc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/pp;->a:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pp;->b:Lcom/google/android/gms/internal/ads/Wc;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Wc;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/ads/pp;->a:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pp;->b:Lcom/google/android/gms/internal/ads/Wc;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/pp;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pp;->b:Lcom/google/android/gms/internal/ads/Wc;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lorg/json/JSONObject;

    .line 9
    .line 10
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Wc;->G:Landroid/os/Bundle;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    sget-object v1, Ll3/p;->f:Ll3/p;

    .line 15
    .line 16
    iget-object v2, v1, Ll3/p;->a:Lp3/d;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Lp3/d;->h(Landroid/os/Bundle;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    :try_start_1
    iget-object v1, v1, Ll3/p;->a:Lp3/d;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lp3/d;->j(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-object p1, v0

    .line 32
    :catch_1
    :cond_0
    :goto_0
    return-object p1

    .line 33
    :pswitch_0
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/Wc;->G:Landroid/os/Bundle;

    .line 34
    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/Hc;

    .line 36
    .line 37
    const-string v2, "ms"

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    const-string p1, ""

    .line 46
    .line 47
    :cond_1
    move-object v6, p1

    .line 48
    iget-boolean v10, v1, Lcom/google/android/gms/internal/ads/Wc;->Q:Z

    .line 49
    .line 50
    iget-boolean v11, v1, Lcom/google/android/gms/internal/ads/Wc;->R:Z

    .line 51
    .line 52
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Wc;->I:Landroid/content/pm/ApplicationInfo;

    .line 53
    .line 54
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Wc;->J:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/Wc;->L:Landroid/content/pm/PackageInfo;

    .line 57
    .line 58
    const/4 v7, -0x1

    .line 59
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Wc;->N:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/Wc;->K:Ljava/util/List;

    .line 62
    .line 63
    move-object v2, v0

    .line 64
    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/Hc;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;ZZ)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
