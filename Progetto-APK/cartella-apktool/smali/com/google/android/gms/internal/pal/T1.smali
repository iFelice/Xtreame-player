.class public final Lcom/google/android/gms/internal/pal/T1;
.super Lcom/google/android/gms/internal/pal/Y1;
.source "SourceFile"


# instance fields
.field public final h:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/pal/A1;Lcom/google/android/gms/internal/pal/L4;I)V
    .locals 7

    .line 1
    const/16 v6, 0x3d

    .line 2
    .line 3
    const-string v2, "RjfRn/7K/Mx2/M8Fl6a7u1D5niklht4X0VG1cOixOa4SuaPG6Qd7la4v6f0IM/MO"

    .line 4
    .line 5
    const-string v3, "cZ2qwY2ZIJRch325gepGJtH7dQ9IcqmfWvaHdfiFi6Y="

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v4, p2

    .line 10
    move v5, p3

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/pal/Y1;-><init>(Lcom/google/android/gms/internal/pal/A1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/pal/L4;II)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p1, Lcom/google/android/gms/internal/pal/A1;->q:Lcom/google/android/gms/internal/ads/R4;

    .line 15
    .line 16
    iget p2, p1, Lcom/google/android/gms/internal/ads/R4;->a:I

    .line 17
    .line 18
    packed-switch p2, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/R4;->b:Z

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_0
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/R4;->b:Z

    .line 25
    .line 26
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/pal/T1;->h:Z

    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/Y1;->e:Ljava/lang/reflect/Method;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/Y1;->a:Lcom/google/android/gms/internal/pal/A1;

    .line 5
    .line 6
    iget-object v2, v2, Lcom/google/android/gms/internal/pal/A1;->a:Landroid/content/Context;

    .line 7
    .line 8
    iget-boolean v3, p0, Lcom/google/android/gms/internal/pal/T1;->h:Z

    .line 9
    .line 10
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/4 v4, 0x2

    .line 15
    new-array v4, v4, [Ljava/lang/Object;

    .line 16
    .line 17
    aput-object v2, v4, v0

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v3, v4, v2

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Long;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    iget-object v3, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 34
    .line 35
    monitor-enter v3

    .line 36
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 37
    .line 38
    iget-boolean v5, v4, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 43
    .line 44
    .line 45
    iput-boolean v0, v4, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 46
    .line 47
    :cond_0
    iget-object v0, v4, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 48
    .line 49
    check-cast v0, Lcom/google/android/gms/internal/pal/m0;

    .line 50
    .line 51
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/pal/m0;->G(Lcom/google/android/gms/internal/pal/m0;J)V

    .line 52
    .line 53
    .line 54
    monitor-exit v3

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw v0
.end method
