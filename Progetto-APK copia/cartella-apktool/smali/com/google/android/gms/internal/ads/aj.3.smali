.class public final Lcom/google/android/gms/internal/ads/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/Kw;

.field public final b:Lp3/a;

.field public final c:Landroid/content/pm/ApplicationInfo;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;

.field public final f:Landroid/content/pm/PackageInfo;

.field public final g:Lcom/google/android/gms/internal/ads/EJ;

.field public final h:Ljava/lang/String;

.field public final i:Lcom/google/android/gms/internal/ads/vu;

.field public final j:Lo3/K;

.field public final k:Lcom/google/android/gms/internal/ads/Yv;

.field public final l:Lcom/google/android/gms/internal/ads/pk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Kw;Lp3/a;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/internal/ads/EJ;Lo3/L;Ljava/lang/String;Lcom/google/android/gms/internal/ads/vu;Lcom/google/android/gms/internal/ads/Yv;Lcom/google/android/gms/internal/ads/pk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aj;->a:Lcom/google/android/gms/internal/ads/Kw;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aj;->b:Lp3/a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aj;->c:Landroid/content/pm/ApplicationInfo;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/aj;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/aj;->e:Ljava/util/List;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/aj;->f:Landroid/content/pm/PackageInfo;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/aj;->g:Lcom/google/android/gms/internal/ads/EJ;

    .line 17
    .line 18
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/aj;->h:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/aj;->i:Lcom/google/android/gms/internal/ads/vu;

    .line 21
    .line 22
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/aj;->j:Lo3/K;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/aj;->k:Lcom/google/android/gms/internal/ads/Yv;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/aj;->l:Lcom/google/android/gms/internal/ads/pk;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/Fw;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    .line 3
    .line 4
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5
    .line 6
    .line 7
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->U1:Lcom/google/android/gms/internal/ads/J7;

    .line 8
    .line 9
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 10
    .line 11
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aj;->k:Lcom/google/android/gms/internal/ads/Yv;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Yv;->s:Landroid/os/Bundle;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const-string v2, "ls"

    .line 35
    .line 36
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aj;->l:Lcom/google/android/gms/internal/ads/pk;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/pk;->zza()V

    .line 42
    .line 43
    .line 44
    sget-object v5, Lcom/google/android/gms/internal/ads/Iw;->H:Lcom/google/android/gms/internal/ads/Iw;

    .line 45
    .line 46
    new-instance v2, Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aj;->i:Lcom/google/android/gms/internal/ads/vu;

    .line 52
    .line 53
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/vu;->a(Landroid/os/Bundle;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/WB;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    new-instance v2, Lcom/google/android/gms/internal/ads/rs;

    .line 58
    .line 59
    sget-object v7, Lcom/google/android/gms/internal/ads/Gw;->d:Lcom/google/android/gms/internal/ads/fC;

    .line 60
    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    const/4 v6, 0x0

    .line 66
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aj;->a:Lcom/google/android/gms/internal/ads/Kw;

    .line 67
    .line 68
    move-object v3, v2

    .line 69
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/rs;-><init>(Lcom/google/android/gms/internal/ads/Gw;Ljava/lang/Object;Ljava/lang/String;LD4/b;Ljava/util/List;LD4/b;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    sget-object v3, Lcom/google/android/gms/internal/ads/Iw;->I:Lcom/google/android/gms/internal/ads/Iw;

    .line 77
    .line 78
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aj;->g:Lcom/google/android/gms/internal/ads/EJ;

    .line 79
    .line 80
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/EJ;->zzb()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, LD4/b;

    .line 85
    .line 86
    const/4 v5, 0x2

    .line 87
    new-array v5, v5, [LD4/b;

    .line 88
    .line 89
    aput-object v2, v5, v0

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    aput-object v4, v5, v0

    .line 93
    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aj;->a:Lcom/google/android/gms/internal/ads/Kw;

    .line 95
    .line 96
    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/internal/ads/Gw;->a(Lcom/google/android/gms/internal/ads/Iw;[LD4/b;)La3/b;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v3, Lv3/d;

    .line 101
    .line 102
    const/16 v4, 0x8

    .line 103
    .line 104
    invoke-direct {v3, p0, v2, v1, v4}, Lv3/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v3}, La3/b;->m(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/rs;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    return-object v0
.end method
