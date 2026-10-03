.class public final LB0/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lp0/G;

.field public c:Ly4/t;

.field public d:Ly4/t;

.field public final e:Ly4/t;

.field public f:Ly4/t;

.field public final g:Ly4/t;

.field public final h:Ly4/h;

.field public final i:Landroid/os/Looper;

.field public final j:I

.field public final k:Lm0/d;

.field public final l:I

.field public final m:Z

.field public final n:LB0/I0;

.field public final o:LB0/H0;

.field public final p:J

.field public final q:J

.field public final r:J

.field public final s:LB0/k;

.field public final t:J

.field public final u:J

.field public final v:Z

.field public w:Z

.field public final x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    new-instance v0, LB0/e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, v1}, LB0/e;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, LB0/e;

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-direct {v2, p1, v3}, LB0/e;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    new-instance v4, LB0/e;

    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    invoke-direct {v4, p1, v5}, LB0/e;-><init>(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    new-instance v5, LB0/y;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-direct {v5, v6}, LB0/y;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v6, LB0/e;

    .line 26
    .line 27
    const/4 v7, 0x4

    .line 28
    invoke-direct {v6, p1, v7}, LB0/e;-><init>(Landroid/content/Context;I)V

    .line 29
    .line 30
    .line 31
    new-instance v7, LC0/h;

    .line 32
    .line 33
    invoke-direct {v7, v3}, LC0/h;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, LB0/z;->a:Landroid/content/Context;

    .line 43
    .line 44
    iput-object v0, p0, LB0/z;->c:Ly4/t;

    .line 45
    .line 46
    iput-object v2, p0, LB0/z;->d:Ly4/t;

    .line 47
    .line 48
    iput-object v4, p0, LB0/z;->e:Ly4/t;

    .line 49
    .line 50
    iput-object v5, p0, LB0/z;->f:Ly4/t;

    .line 51
    .line 52
    iput-object v6, p0, LB0/z;->g:Ly4/t;

    .line 53
    .line 54
    iput-object v7, p0, LB0/z;->h:Ly4/h;

    .line 55
    .line 56
    sget-object p1, Lp0/M;->a:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_0
    iput-object p1, p0, LB0/z;->i:Landroid/os/Looper;

    .line 70
    .line 71
    sget-object p1, Lm0/d;->b:Lm0/d;

    .line 72
    .line 73
    iput-object p1, p0, LB0/z;->k:Lm0/d;

    .line 74
    .line 75
    iput v1, p0, LB0/z;->l:I

    .line 76
    .line 77
    iput-boolean v1, p0, LB0/z;->m:Z

    .line 78
    .line 79
    sget-object p1, LB0/I0;->c:LB0/I0;

    .line 80
    .line 81
    iput-object p1, p0, LB0/z;->n:LB0/I0;

    .line 82
    .line 83
    const-wide/16 v2, 0x1388

    .line 84
    .line 85
    iput-wide v2, p0, LB0/z;->p:J

    .line 86
    .line 87
    const-wide/16 v2, 0x3a98

    .line 88
    .line 89
    iput-wide v2, p0, LB0/z;->q:J

    .line 90
    .line 91
    const-wide/16 v2, 0xbb8

    .line 92
    .line 93
    iput-wide v2, p0, LB0/z;->r:J

    .line 94
    .line 95
    sget-object p1, LB0/H0;->f:LB0/H0;

    .line 96
    .line 97
    iput-object p1, p0, LB0/z;->o:LB0/H0;

    .line 98
    .line 99
    const-wide/16 v2, 0x14

    .line 100
    .line 101
    invoke-static {v2, v3}, Lp0/M;->R(J)J

    .line 102
    .line 103
    .line 104
    move-result-wide v5

    .line 105
    const-wide/16 v2, 0x1f4

    .line 106
    .line 107
    invoke-static {v2, v3}, Lp0/M;->R(J)J

    .line 108
    .line 109
    .line 110
    move-result-wide v7

    .line 111
    new-instance p1, LB0/k;

    .line 112
    .line 113
    const v9, 0x3f7fbe77    # 0.999f

    .line 114
    .line 115
    .line 116
    move-object v4, p1

    .line 117
    invoke-direct/range {v4 .. v9}, LB0/k;-><init>(JJF)V

    .line 118
    .line 119
    .line 120
    iput-object p1, p0, LB0/z;->s:LB0/k;

    .line 121
    .line 122
    sget-object p1, Lp0/f;->a:Lp0/G;

    .line 123
    .line 124
    iput-object p1, p0, LB0/z;->b:Lp0/G;

    .line 125
    .line 126
    iput-wide v2, p0, LB0/z;->t:J

    .line 127
    .line 128
    const-wide/16 v2, 0x7d0

    .line 129
    .line 130
    iput-wide v2, p0, LB0/z;->u:J

    .line 131
    .line 132
    iput-boolean v1, p0, LB0/z;->v:Z

    .line 133
    .line 134
    const-string p1, ""

    .line 135
    .line 136
    iput-object p1, p0, LB0/z;->x:Ljava/lang/String;

    .line 137
    .line 138
    const/16 p1, -0x3e8

    .line 139
    .line 140
    iput p1, p0, LB0/z;->j:I

    .line 141
    .line 142
    new-instance p1, Lf/S;

    .line 143
    .line 144
    const/16 v0, 0x1b

    .line 145
    .line 146
    invoke-direct {p1, v0}, Lf/S;-><init>(I)V

    .line 147
    .line 148
    .line 149
    return-void
.end method


# virtual methods
.method public final a()LB0/O;
    .locals 2

    .line 1
    iget-boolean v0, p0, LB0/z;->w:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean v1, p0, LB0/z;->w:Z

    .line 9
    .line 10
    new-instance v0, LB0/O;

    .line 11
    .line 12
    invoke-direct {v0, p0}, LB0/O;-><init>(LB0/z;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
