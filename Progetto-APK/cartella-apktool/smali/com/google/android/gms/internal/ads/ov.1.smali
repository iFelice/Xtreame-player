.class public final Lcom/google/android/gms/internal/ads/ov;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vv;


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/cj;


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/Om;Lcom/google/android/gms/internal/ads/Xu;)LD4/b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ov;->b(Lcom/google/android/gms/internal/ads/Om;Lcom/google/android/gms/internal/ads/uv;Lcom/google/android/gms/internal/ads/cj;)LD4/b;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/internal/ads/Om;Lcom/google/android/gms/internal/ads/uv;Lcom/google/android/gms/internal/ads/cj;)LD4/b;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    :try_start_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ov;->a:Lcom/google/android/gms/internal/ads/cj;

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    goto :goto_2

    .line 9
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lcom/google/android/gms/internal/ads/tv;

    .line 12
    .line 13
    check-cast p2, Lcom/google/android/gms/internal/ads/Xu;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/Xu;->f(Lcom/google/android/gms/internal/ads/tv;)Lcom/google/android/gms/internal/ads/Dg;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget p2, p1, Lcom/google/android/gms/internal/ads/Dg;->a:I

    .line 20
    .line 21
    packed-switch p2, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Dg;->b()Lcom/google/android/gms/internal/ads/Qg;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Dg;->a()Lcom/google/android/gms/internal/ads/Eg;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ov;->a:Lcom/google/android/gms/internal/ads/cj;

    .line 34
    .line 35
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ov;->a:Lcom/google/android/gms/internal/ads/cj;

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cj;->zzb()Lcom/google/android/gms/internal/ads/Li;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Li;->b()Lcom/google/android/gms/internal/ads/Fw;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Li;->a(LD4/b;)Lcom/google/android/gms/internal/ads/Fw;

    .line 46
    .line 47
    .line 48
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    .line 50
    return-object p1

    .line 51
    :goto_2
    monitor-exit p0

    .line 52
    throw p1

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzd()Ljava/lang/Object;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ov;->a:Lcom/google/android/gms/internal/ads/cj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method
