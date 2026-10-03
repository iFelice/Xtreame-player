.class public final Lcom/google/android/gms/internal/ads/O9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/N9;


# instance fields
.field public final synthetic G:I

.field public final H:Lcom/google/android/gms/internal/ads/qo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/qo;I)V
    .locals 2

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/ads/O9;->G:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const-string v1, "The Inspector Manager must not be null"

    .line 5
    .line 6
    if-eq p2, v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v1}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/O9;->H:Lcom/google/android/gms/internal/ads/qo;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v1}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/O9;->H:Lcom/google/android/gms/internal/ads/qo;

    .line 24
    .line 25
    return-void
.end method

.method private final a(Ljava/util/Map;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const-string v0, "persistentData"

    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v0, "persistentData"

    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/CharSequence;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/O9;->H:Lcom/google/android/gms/internal/ads/qo;

    .line 27
    .line 28
    const-string v1, "persistentData"

    .line 29
    .line 30
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/String;

    .line 35
    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/qo;->x:Ljava/lang/String;

    .line 38
    .line 39
    sget-object p1, Lk3/l;->A:Lk3/l;

    .line 40
    .line 41
    iget-object p1, p1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/qo;->x:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Lo3/L;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    monitor-exit v0

    .line 56
    throw p1

    .line 57
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/O9;->G:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    const-string p1, "extras"

    .line 9
    .line 10
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p1, "expires"

    .line 18
    .line 19
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const-wide v0, 0x7fffffffffffffffL

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    :try_start_0
    const-string p1, "expires"

    .line 31
    .line 32
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/O9;->H:Lcom/google/android/gms/internal/ads/qo;

    .line 43
    .line 44
    const-string v2, "extras"

    .line 45
    .line 46
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Ljava/lang/String;

    .line 51
    .line 52
    monitor-enter p1

    .line 53
    :try_start_1
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/qo;->o:Ljava/lang/String;

    .line 54
    .line 55
    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/qo;->q:J

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/qo;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    monitor-exit p1

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p2

    .line 63
    monitor-exit p1

    .line 64
    throw p2

    .line 65
    :cond_2
    :goto_0
    return-void

    .line 66
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/O9;->a(Ljava/util/Map;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
