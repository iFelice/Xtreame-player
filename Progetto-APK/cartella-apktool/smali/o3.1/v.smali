.class public final Lo3/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lr2/l;

.field public static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lo3/v;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    sget-object v0, Lo3/v;->b:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lo3/v;->a:Lr2/l;

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Q7;->a(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->d4:Lcom/google/android/gms/internal/ads/J7;

    .line 25
    .line 26
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 27
    .line 28
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-static {p1}, Lo3/m;->q(Landroid/content/Context;)Lr2/l;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/x;

    .line 50
    .line 51
    new-instance v2, Lcom/google/android/gms/internal/ads/y1;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/x;-><init>(Lcom/google/android/gms/internal/ads/y1;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance v2, Lcom/google/android/gms/internal/ads/x;

    .line 64
    .line 65
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/x;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Lr2/l;

    .line 69
    .line 70
    new-instance v3, LA0/w;

    .line 71
    .line 72
    invoke-direct {v3, v2}, LA0/w;-><init>(Lcom/google/android/gms/internal/ads/x;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, v3, v1}, Lr2/l;-><init>(LA0/w;Lcom/google/android/gms/internal/ads/x;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lr2/l;->e()V

    .line 79
    .line 80
    .line 81
    :goto_0
    sput-object p1, Lo3/v;->a:Lr2/l;

    .line 82
    .line 83
    :cond_2
    monitor-exit v0

    .line 84
    return-void

    .line 85
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p1
.end method

.method public static a(ILjava/lang/String;Ljava/util/HashMap;[B)Lo3/t;
    .locals 11

    .line 1
    new-instance v8, Lo3/t;

    .line 2
    .line 3
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/te;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v4, LF/i;

    .line 7
    .line 8
    invoke-direct {v4, p1, v8}, LF/i;-><init>(Ljava/lang/String;Lo3/t;)V

    .line 9
    .line 10
    .line 11
    new-instance v9, Lp3/g;

    .line 12
    .line 13
    invoke-direct {v9}, Lp3/g;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v10, Lo3/s;

    .line 17
    .line 18
    move-object v0, v10

    .line 19
    move v1, p0

    .line 20
    move-object v2, p1

    .line 21
    move-object v3, v8

    .line 22
    move-object v5, p3

    .line 23
    move-object v6, p2

    .line 24
    move-object v7, v9

    .line 25
    invoke-direct/range {v0 .. v7}, Lo3/s;-><init>(ILjava/lang/String;Lo3/t;LF/i;[BLjava/util/HashMap;Lp3/g;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lp3/g;->c()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    :try_start_0
    invoke-virtual {v10}, Lo3/s;->c()Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-nez p3, :cond_0

    .line 39
    .line 40
    const/4 p3, 0x0

    .line 41
    :cond_0
    invoke-static {}, Lp3/g;->c()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-nez p2, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance p2, Lm2/o;

    .line 49
    .line 50
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p2, Lm2/o;->G:Ljava/lang/Object;

    .line 54
    .line 55
    const-string p1, "GET"

    .line 56
    .line 57
    iput-object p1, p2, Lm2/o;->H:Ljava/lang/Object;

    .line 58
    .line 59
    iput-object p0, p2, Lm2/o;->I:Ljava/lang/Object;

    .line 60
    .line 61
    iput-object p3, p2, Lm2/o;->J:Ljava/lang/Object;

    .line 62
    .line 63
    const-string p0, "onNetworkRequest"

    .line 64
    .line 65
    invoke-virtual {v9, p0, p2}, Lp3/g;->d(Ljava/lang/String;Lp3/f;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/m3; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    sget-object p0, Lo3/v;->a:Lr2/l;

    .line 78
    .line 79
    invoke-virtual {p0, v10}, Lr2/l;->c(Lcom/google/android/gms/internal/ads/v3;)V

    .line 80
    .line 81
    .line 82
    return-object v8
.end method
