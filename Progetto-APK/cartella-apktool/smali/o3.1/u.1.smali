.class public final Lo3/u;
.super Lcom/google/android/gms/internal/ads/v3;
.source "SourceFile"


# instance fields
.field public final S:Lcom/google/android/gms/internal/ads/te;

.field public final T:Lp3/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/te;)V
    .locals 2

    .line 1
    new-instance v0, LC2/g;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, p2, v1}, LC2/g;-><init>(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/v3;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/w3;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lo3/u;->S:Lcom/google/android/gms/internal/ads/te;

    .line 13
    .line 14
    new-instance p2, Lp3/g;

    .line 15
    .line 16
    invoke-direct {p2}, Lp3/g;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lo3/u;->T:Lp3/g;

    .line 20
    .line 21
    invoke-static {}, Lp3/g;->c()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Lm2/o;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, v0, Lm2/o;->G:Ljava/lang/Object;

    .line 34
    .line 35
    const-string p1, "GET"

    .line 36
    .line 37
    iput-object p1, v0, Lm2/o;->H:Ljava/lang/Object;

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    iput-object p1, v0, Lm2/o;->I:Ljava/lang/Object;

    .line 41
    .line 42
    iput-object p1, v0, Lm2/o;->J:Ljava/lang/Object;

    .line 43
    .line 44
    const-string p1, "onNetworkRequest"

    .line 45
    .line 46
    invoke-virtual {p2, p1, v0}, Lp3/g;->d(Ljava/lang/String;Lp3/f;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/u3;)Lcom/google/android/gms/internal/ads/x3;
    .locals 2

    .line 1
    invoke-static {p1}, Lf/b;->n0(Lcom/google/android/gms/internal/ads/u3;)Lr2/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/x3;

    .line 6
    .line 7
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/x3;-><init>(Ljava/lang/Object;Lr2/b;)V

    .line 8
    .line 9
    .line 10
    return-object v1
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/u3;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/u3;->c:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v1, p0, Lo3/u;->T:Lp3/g;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lp3/g;->c()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v2, LK/k;

    .line 18
    .line 19
    const/4 v3, 0x6

    .line 20
    iget v4, p1, Lcom/google/android/gms/internal/ads/u3;->a:I

    .line 21
    .line 22
    invoke-direct {v2, v4, v0, v3}, LK/k;-><init>(ILjava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    const-string v0, "onNetworkResponse"

    .line 26
    .line 27
    invoke-virtual {v1, v0, v2}, Lp3/g;->d(Ljava/lang/String;Lp3/f;)V

    .line 28
    .line 29
    .line 30
    const/16 v0, 0xc8

    .line 31
    .line 32
    if-lt v4, v0, :cond_1

    .line 33
    .line 34
    const/16 v0, 0x12c

    .line 35
    .line 36
    if-lt v4, v0, :cond_2

    .line 37
    .line 38
    :cond_1
    new-instance v0, Lp3/e;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-direct {v0, v3, v2}, Lp3/e;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    const-string v2, "onNetworkRequestError"

    .line 46
    .line 47
    invoke-virtual {v1, v2, v0}, Lp3/g;->d(Ljava/lang/String;Lp3/f;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    invoke-static {}, Lp3/g;->c()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/u3;->b:[B

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    new-instance v2, LC2/g;

    .line 62
    .line 63
    const/16 v3, 0x8

    .line 64
    .line 65
    invoke-direct {v2, v0, v3}, LC2/g;-><init>(Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    const-string v0, "onNetworkResponseBody"

    .line 69
    .line 70
    invoke-virtual {v1, v0, v2}, Lp3/g;->d(Ljava/lang/String;Lp3/f;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    :goto_1
    iget-object v0, p0, Lo3/u;->S:Lcom/google/android/gms/internal/ads/te;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/te;->b(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    return-void
.end method
