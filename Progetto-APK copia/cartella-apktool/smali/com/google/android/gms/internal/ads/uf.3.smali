.class public final synthetic Lcom/google/android/gms/internal/ads/uf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/vf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/vf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uf;->a:Lcom/google/android/gms/internal/ads/vf;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/sK;Lcom/google/android/gms/internal/ads/sK;)[Lcom/google/android/gms/internal/ads/aK;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v8, Lcom/google/android/gms/internal/ads/oM;

    .line 4
    .line 5
    new-instance v2, La/x;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/uf;->a:Lcom/google/android/gms/internal/ads/vf;

    .line 11
    .line 12
    iget-object v3, v9, Lcom/google/android/gms/internal/ads/vf;->G:Landroid/content/Context;

    .line 13
    .line 14
    iput-object v3, v2, La/x;->b:Ljava/lang/Object;

    .line 15
    .line 16
    sget-object v4, Lcom/google/android/gms/internal/ads/EL;->c:Lcom/google/android/gms/internal/ads/EL;

    .line 17
    .line 18
    iput-object v4, v2, La/x;->c:Ljava/lang/Object;

    .line 19
    .line 20
    sget-object v4, Lcom/google/android/gms/internal/ads/eM;->p:Lcom/google/android/gms/internal/ads/GH;

    .line 21
    .line 22
    iput-object v4, v2, La/x;->d:Ljava/lang/Object;

    .line 23
    .line 24
    iget-boolean v4, v2, La/x;->a:Z

    .line 25
    .line 26
    xor-int/2addr v4, v1

    .line 27
    invoke-static {v4}, Lo3/r;->M(Z)V

    .line 28
    .line 29
    .line 30
    iput-boolean v1, v2, La/x;->a:Z

    .line 31
    .line 32
    iget-object v4, v2, La/x;->e:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v4, Lcom/google/android/gms/internal/ads/bD;

    .line 35
    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    new-instance v4, Lcom/google/android/gms/internal/ads/bD;

    .line 39
    .line 40
    new-array v5, v0, [Lcom/google/android/gms/internal/ads/ti;

    .line 41
    .line 42
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/bD;-><init>([Lcom/google/android/gms/internal/ads/ti;)V

    .line 43
    .line 44
    .line 45
    iput-object v4, v2, La/x;->e:Ljava/lang/Object;

    .line 46
    .line 47
    :cond_0
    iget-object v4, v2, La/x;->f:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v4, Lcom/google/android/gms/internal/ads/aM;

    .line 50
    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    iget-object v4, v2, La/x;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v4, Landroid/content/Context;

    .line 56
    .line 57
    new-instance v5, Lcom/google/android/gms/internal/ads/aM;

    .line 58
    .line 59
    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/ads/aM;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    iput-object v5, v2, La/x;->f:Ljava/lang/Object;

    .line 63
    .line 64
    :cond_1
    new-instance v7, Lcom/google/android/gms/internal/ads/lM;

    .line 65
    .line 66
    invoke-direct {v7, v2}, Lcom/google/android/gms/internal/ads/lM;-><init>(La/x;)V

    .line 67
    .line 68
    .line 69
    new-instance v4, Lcom/google/android/gms/internal/ads/I7;

    .line 70
    .line 71
    const/4 v10, 0x6

    .line 72
    invoke-direct {v4, v3, v10}, Lcom/google/android/gms/internal/ads/I7;-><init>(Landroid/content/Context;I)V

    .line 73
    .line 74
    .line 75
    move-object v2, v8

    .line 76
    move-object v5, p1

    .line 77
    move-object v6, p3

    .line 78
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/oM;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/I7;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/sK;Lcom/google/android/gms/internal/ads/lM;)V

    .line 79
    .line 80
    .line 81
    new-instance p3, Lcom/google/android/gms/internal/ads/k;

    .line 82
    .line 83
    new-instance v2, Lcom/google/android/gms/internal/ads/I7;

    .line 84
    .line 85
    iget-object v3, v9, Lcom/google/android/gms/internal/ads/vf;->G:Landroid/content/Context;

    .line 86
    .line 87
    invoke-direct {v2, v3, v10}, Lcom/google/android/gms/internal/ads/I7;-><init>(Landroid/content/Context;I)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p3, v3, v2, p1, p2}, Lcom/google/android/gms/internal/ads/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/I7;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/sK;)V

    .line 91
    .line 92
    .line 93
    const/4 p1, 0x2

    .line 94
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/aK;

    .line 95
    .line 96
    aput-object v8, p1, v0

    .line 97
    .line 98
    aput-object p3, p1, v1

    .line 99
    .line 100
    return-object p1
.end method
