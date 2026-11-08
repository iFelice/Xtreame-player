.class public final Lcom/google/android/gms/internal/ads/mK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/internal/ads/Nr;

.field public final c:Lcom/google/android/gms/internal/ads/kK;

.field public final d:Lcom/google/android/gms/internal/ads/Mx;

.field public e:Lcom/google/android/gms/internal/ads/Gz;

.field public f:Lcom/google/android/gms/internal/ads/Gz;

.field public final g:Lcom/google/android/gms/internal/ads/lK;

.field public final h:Lcom/google/android/gms/internal/ads/u1;

.field public final i:Landroid/os/Looper;

.field public final j:I

.field public final k:Lcom/google/android/gms/internal/ads/bH;

.field public final l:I

.field public final m:Z

.field public final n:Lcom/google/android/gms/internal/ads/ZK;

.field public final o:J

.field public final p:J

.field public final q:Z

.field public r:Z

.field public final s:Ljava/lang/String;

.field public final t:Lcom/google/android/gms/internal/ads/eK;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/uf;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/kK;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/kK;-><init>(Lcom/google/android/gms/internal/ads/uf;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/google/android/gms/internal/ads/Mx;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/Mx;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/P7;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/P7;-><init>(Landroid/content/Context;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/google/android/gms/internal/ads/b;

    .line 18
    .line 19
    const/4 v4, 0x4

    .line 20
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/b;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Lcom/google/android/gms/internal/ads/lK;

    .line 24
    .line 25
    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/ads/lK;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    new-instance v5, Lcom/google/android/gms/internal/ads/u1;

    .line 29
    .line 30
    const/16 v6, 0x16

    .line 31
    .line 32
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/u1;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mK;->a:Landroid/content/Context;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mK;->c:Lcom/google/android/gms/internal/ads/kK;

    .line 44
    .line 45
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mK;->d:Lcom/google/android/gms/internal/ads/Mx;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/mK;->e:Lcom/google/android/gms/internal/ads/Gz;

    .line 48
    .line 49
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/mK;->f:Lcom/google/android/gms/internal/ads/Gz;

    .line 50
    .line 51
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/mK;->g:Lcom/google/android/gms/internal/ads/lK;

    .line 52
    .line 53
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/mK;->h:Lcom/google/android/gms/internal/ads/u1;

    .line 54
    .line 55
    sget p1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 56
    .line 57
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mK;->i:Landroid/os/Looper;

    .line 69
    .line 70
    sget-object p1, Lcom/google/android/gms/internal/ads/bH;->b:Lcom/google/android/gms/internal/ads/bH;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mK;->k:Lcom/google/android/gms/internal/ads/bH;

    .line 73
    .line 74
    iput v2, p0, Lcom/google/android/gms/internal/ads/mK;->l:I

    .line 75
    .line 76
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/mK;->m:Z

    .line 77
    .line 78
    sget-object p1, Lcom/google/android/gms/internal/ads/ZK;->c:Lcom/google/android/gms/internal/ads/ZK;

    .line 79
    .line 80
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mK;->n:Lcom/google/android/gms/internal/ads/ZK;

    .line 81
    .line 82
    new-instance p1, Lcom/google/android/gms/internal/ads/eK;

    .line 83
    .line 84
    const-wide/16 v0, 0x14

    .line 85
    .line 86
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Et;->t(J)J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    const-wide/16 v3, 0x1f4

    .line 91
    .line 92
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Et;->t(J)J

    .line 93
    .line 94
    .line 95
    move-result-wide v5

    .line 96
    invoke-direct {p1, v0, v1, v5, v6}, Lcom/google/android/gms/internal/ads/eK;-><init>(JJ)V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mK;->t:Lcom/google/android/gms/internal/ads/eK;

    .line 100
    .line 101
    sget-object p1, Lcom/google/android/gms/internal/ads/pl;->a:Lcom/google/android/gms/internal/ads/Nr;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mK;->b:Lcom/google/android/gms/internal/ads/Nr;

    .line 104
    .line 105
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/mK;->o:J

    .line 106
    .line 107
    const-wide/16 p1, 0x7d0

    .line 108
    .line 109
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/mK;->p:J

    .line 110
    .line 111
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/mK;->q:Z

    .line 112
    .line 113
    const-string p1, ""

    .line 114
    .line 115
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mK;->s:Ljava/lang/String;

    .line 116
    .line 117
    const/16 p1, -0x3e8

    .line 118
    .line 119
    iput p1, p0, Lcom/google/android/gms/internal/ads/mK;->j:I

    .line 120
    .line 121
    return-void
.end method
