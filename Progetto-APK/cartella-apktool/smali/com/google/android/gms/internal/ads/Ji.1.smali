.class public final synthetic Lcom/google/android/gms/internal/ads/Ji;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Dw;
.implements Lcom/google/android/gms/internal/ads/dC;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/Li;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Li;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/Ji;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ji;->H:Lcom/google/android/gms/internal/ads/Li;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ji;->H:Lcom/google/android/gms/internal/ads/Li;

    check-cast p1, Lcom/google/android/gms/internal/ads/Tv;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Li;->d:Lcom/google/android/gms/internal/ads/bh;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/Sv;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bh;->a:Ljava/util/Map;

    .line 9
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/Sv;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bh;->a:Ljava/util/Map;

    .line 10
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/Sv;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/eh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Sv;->b:Lorg/json/JSONObject;

    check-cast v3, Lcom/google/android/gms/internal/ads/jh;

    iget v4, v3, Lcom/google/android/gms/internal/ads/jh;->a:I

    packed-switch v4, :pswitch_data_0

    .line 11
    const-string v4, "timestamp"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 12
    const-string v6, "npa_reset"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    .line 13
    :cond_1
    const-string v6, "npa"

    .line 14
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 15
    :goto_1
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/jh;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/Ld;

    .line 16
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Ld;->b:Lcom/google/android/gms/internal/ads/Kd;

    invoke-virtual {v3, v2, v4, v5}, Lcom/google/android/gms/internal/ads/Kd;->a(IJ)V

    goto :goto_0

    :pswitch_0
    if-eqz v2, :cond_0

    .line 17
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->x8:Lcom/google/android/gms/internal/ads/J7;

    .line 18
    sget-object v5, Ll3/q;->d:Ll3/q;

    iget-object v5, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 19
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    move-result-object v4

    .line 20
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/jh;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/qo;

    .line 21
    monitor-enter v3

    :try_start_0
    iput-object v2, v3, Lcom/google/android/gms/internal/ads/qo;->p:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3

    throw p1

    .line 22
    :cond_3
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bh;->b:Ljava/util/Map;

    .line 23
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/Sv;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bh;->b:Ljava/util/Map;

    .line 24
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/Sv;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/dh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Sv;->b:Lorg/json/JSONObject;

    new-instance v4, Ljava/util/HashMap;

    .line 25
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 26
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 27
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 28
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 29
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 30
    :cond_5
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/dh;->a(Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_6
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    iget p1, p0, Lcom/google/android/gms/internal/ads/Ji;->G:I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ji;->H:Lcom/google/android/gms/internal/ads/Li;

    packed-switch p1, :pswitch_data_0

    .line 1
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/Li;->f:Lcom/google/android/gms/internal/ads/nk;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/nk;->m(Z)V

    return-void

    .line 3
    :pswitch_0
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/Li;->f:Lcom/google/android/gms/internal/ads/nk;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/nk;->p(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Ji;->G:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ji;->H:Lcom/google/android/gms/internal/ads/Li;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Ljava/lang/Void;

    .line 10
    .line 11
    iget-object p1, v2, Lcom/google/android/gms/internal/ads/Li;->f:Lcom/google/android/gms/internal/ads/nk;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/nk;->m(Z)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/Wc;

    .line 18
    .line 19
    iget-object p1, v2, Lcom/google/android/gms/internal/ads/Li;->f:Lcom/google/android/gms/internal/ads/nk;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/nk;->p(Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
