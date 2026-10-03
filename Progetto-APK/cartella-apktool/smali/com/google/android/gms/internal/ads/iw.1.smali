.class public abstract Lcom/google/android/gms/internal/ads/iw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lg4/h;

.field public static b:LW3/i;

.field public static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/iw;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/iw;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/iw;->b:LW3/i;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, LW3/i;

    .line 9
    .line 10
    invoke-direct {v1, p0}, LW3/i;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/google/android/gms/internal/ads/iw;->b:LW3/i;

    .line 14
    .line 15
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/iw;->a:Lg4/h;

    .line 16
    .line 17
    if-eqz p0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lg4/h;->g()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    sget-object p0, Lcom/google/android/gms/internal/ads/iw;->a:Lg4/h;

    .line 26
    .line 27
    invoke-virtual {p0}, Lg4/h;->h()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 37
    .line 38
    sget-object p0, Lcom/google/android/gms/internal/ads/iw;->a:Lg4/h;

    .line 39
    .line 40
    invoke-virtual {p0}, Lg4/h;->g()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_3

    .line 45
    .line 46
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/iw;->b:LW3/i;

    .line 47
    .line 48
    const-string p1, "the appSetIdClient shouldn\'t be null"

    .line 49
    .line 50
    invoke-static {p0, p1}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p0}, LA3/a;->a()Lg4/h;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    sput-object p0, Lcom/google/android/gms/internal/ads/iw;->a:Lg4/h;

    .line 58
    .line 59
    :cond_3
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method
