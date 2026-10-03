.class public final Lo3/m;
.super Lcom/google/android/gms/internal/ads/x;
.source "SourceFile"


# instance fields
.field public final J:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/y1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/x;-><init>(Lcom/google/android/gms/internal/ads/y1;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo3/m;->J:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static q(Landroid/content/Context;)Lr2/l;
    .locals 4

    .line 1
    new-instance v0, Lo3/m;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/y1;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lo3/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/y1;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/io/File;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget v2, Lcom/google/android/gms/internal/ads/Ly;->d:I

    .line 18
    .line 19
    new-instance v2, Ljava/io/File;

    .line 20
    .line 21
    const-string v3, "admob_volley"

    .line 22
    .line 23
    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance p0, Lr2/l;

    .line 34
    .line 35
    new-instance v2, LA0/w;

    .line 36
    .line 37
    invoke-direct {v2, v1}, LA0/w;-><init>(Ljava/io/File;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v2, v0}, Lr2/l;-><init>(LA0/w;Lcom/google/android/gms/internal/ads/x;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lr2/l;->e()V

    .line 44
    .line 45
    .line 46
    return-object p0
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/v3;)Lcom/google/android/gms/internal/ads/u3;
    .locals 4

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/v3;->H:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->e4:Lcom/google/android/gms/internal/ads/J7;

    .line 6
    .line 7
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 8
    .line 9
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/v3;->I:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget-object v0, Ll3/p;->f:Ll3/p;

    .line 26
    .line 27
    iget-object v0, v0, Ll3/p;->a:Lp3/d;

    .line 28
    .line 29
    sget-object v0, LJ3/f;->b:LJ3/f;

    .line 30
    .line 31
    iget-object v2, p0, Lo3/m;->J:Landroid/content/Context;

    .line 32
    .line 33
    const v3, 0xcc77c0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, v3}, LJ3/f;->c(Landroid/content/Context;I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    new-instance v0, LJ3/k;

    .line 43
    .line 44
    invoke-direct {v0, v2}, LJ3/k;-><init>(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, LJ3/k;->c(Lcom/google/android/gms/internal/ads/v3;)Lcom/google/android/gms/internal/ads/u3;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v1, "Got gmscore asset response: "

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v1, "Failed to get gmscore asset response: "

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/x;->c(Lcom/google/android/gms/internal/ads/v3;)Lcom/google/android/gms/internal/ads/u3;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1
.end method
