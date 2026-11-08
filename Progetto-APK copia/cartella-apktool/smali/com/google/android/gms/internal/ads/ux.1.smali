.class public final Lcom/google/android/gms/internal/ads/ux;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lp3/a;

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public final d:Lcom/google/android/gms/ads/internal/ClientApi;

.field public e:Lcom/google/android/gms/internal/ads/cb;

.field public final f:LP3/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lp3/a;Ljava/util/concurrent/ScheduledExecutorService;LP3/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ux;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ux;->b:Lp3/a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ux;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    new-instance p1, Lcom/google/android/gms/ads/internal/ClientApi;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/google/android/gms/ads/internal/ClientApi;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ux;->d:Lcom/google/android/gms/ads/internal/ClientApi;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ux;->f:LP3/a;

    .line 18
    .line 19
    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/ads/mx;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/mx;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->r:Lcom/google/android/gms/internal/ads/J7;

    .line 4
    .line 5
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 6
    .line 7
    iget-object v3, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 8
    .line 9
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->s:Lcom/google/android/gms/internal/ads/J7;

    .line 20
    .line 21
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

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
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/mx;-><init>(JJ)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method


# virtual methods
.method public final a(Ll3/T0;Ll3/O;)Lcom/google/android/gms/internal/ads/lx;
    .locals 12

    .line 1
    iget v0, p1, Ll3/T0;->H:I

    .line 2
    .line 3
    invoke-static {v0}, Lf3/a;->a(I)Lf3/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ux;->b:Lp3/a;

    .line 16
    .line 17
    if-eq v0, v1, :cond_3

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x5

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    :goto_0
    const/4 v0, 0x0

    .line 26
    return-object v0

    .line 27
    :cond_1
    new-instance v11, Lcom/google/android/gms/internal/ads/lx;

    .line 28
    .line 29
    iget v3, v2, Lp3/a;->I:I

    .line 30
    .line 31
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ux;->e:Lcom/google/android/gms/internal/ads/cb;

    .line 32
    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/ux;->b()Lcom/google/android/gms/internal/ads/mx;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/ux;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    .line 39
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/ux;->f:LP3/a;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ux;->d:Lcom/google/android/gms/ads/internal/ClientApi;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ux;->a:Landroid/content/Context;

    .line 44
    .line 45
    const/4 v10, 0x0

    .line 46
    move-object v0, v11

    .line 47
    move-object v5, p1

    .line 48
    move-object v6, p2

    .line 49
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/lx;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/cb;Ll3/T0;Ll3/O;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/mx;LP3/a;I)V

    .line 50
    .line 51
    .line 52
    return-object v11

    .line 53
    :cond_2
    new-instance v11, Lcom/google/android/gms/internal/ads/lx;

    .line 54
    .line 55
    iget v3, v2, Lp3/a;->I:I

    .line 56
    .line 57
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ux;->e:Lcom/google/android/gms/internal/ads/cb;

    .line 58
    .line 59
    invoke-static {}, Lcom/google/android/gms/internal/ads/ux;->b()Lcom/google/android/gms/internal/ads/mx;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/ux;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 64
    .line 65
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/ux;->f:LP3/a;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ux;->d:Lcom/google/android/gms/ads/internal/ClientApi;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ux;->a:Landroid/content/Context;

    .line 70
    .line 71
    const/4 v10, 0x2

    .line 72
    move-object v0, v11

    .line 73
    move-object v5, p1

    .line 74
    move-object v6, p2

    .line 75
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/lx;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/cb;Ll3/T0;Ll3/O;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/mx;LP3/a;I)V

    .line 76
    .line 77
    .line 78
    return-object v11

    .line 79
    :cond_3
    new-instance v11, Lcom/google/android/gms/internal/ads/lx;

    .line 80
    .line 81
    iget v3, v2, Lp3/a;->I:I

    .line 82
    .line 83
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ux;->e:Lcom/google/android/gms/internal/ads/cb;

    .line 84
    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/ads/ux;->b()Lcom/google/android/gms/internal/ads/mx;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/ux;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 90
    .line 91
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/ux;->f:LP3/a;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ux;->d:Lcom/google/android/gms/ads/internal/ClientApi;

    .line 94
    .line 95
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ux;->a:Landroid/content/Context;

    .line 96
    .line 97
    const/4 v10, 0x1

    .line 98
    move-object v0, v11

    .line 99
    move-object v5, p1

    .line 100
    move-object v6, p2

    .line 101
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/lx;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/cb;Ll3/T0;Ll3/O;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/mx;LP3/a;I)V

    .line 102
    .line 103
    .line 104
    return-object v11
.end method
