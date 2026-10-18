.class public final Lcom/google/android/gms/internal/ads/Tp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ij;
.implements Lcom/google/android/gms/internal/ads/sj;


# static fields
.field public static final I:Ljava/lang/Object;

.field public static J:I


# instance fields
.field public final G:Lo3/K;

.field public final H:Lcom/google/android/gms/internal/ads/Wp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Tp;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Wp;Lo3/L;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Tp;->H:Lcom/google/android/gms/internal/ads/Wp;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Tp;->G:Lo3/K;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 12

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->J5:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tp;->G:Lo3/K;

    .line 21
    .line 22
    check-cast v0, Lo3/L;

    .line 23
    .line 24
    invoke-virtual {v0}, Lo3/L;->r()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/Tp;->I:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    sget v2, Lcom/google/android/gms/internal/ads/Tp;->J:I

    .line 34
    .line 35
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->K5:Lcom/google/android/gms/internal/ads/J7;

    .line 36
    .line 37
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    if-ge v2, v1, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tp;->H:Lcom/google/android/gms/internal/ads/Wp;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance v2, Landroid/os/Bundle;

    .line 58
    .line 59
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Wp;->d:Lcom/google/android/gms/internal/ads/aj;

    .line 63
    .line 64
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/aj;->l:Lcom/google/android/gms/internal/ads/pk;

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/pk;->zza()V

    .line 67
    .line 68
    .line 69
    sget-object v7, Lcom/google/android/gms/internal/ads/Iw;->H:Lcom/google/android/gms/internal/ads/Iw;

    .line 70
    .line 71
    new-instance v4, Landroid/os/Bundle;

    .line 72
    .line 73
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/aj;->i:Lcom/google/android/gms/internal/ads/vu;

    .line 77
    .line 78
    invoke-virtual {v5, v2, v4}, Lcom/google/android/gms/internal/ads/vu;->a(Landroid/os/Bundle;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/WB;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    new-instance v2, Lcom/google/android/gms/internal/ads/rs;

    .line 83
    .line 84
    sget-object v9, Lcom/google/android/gms/internal/ads/Gw;->d:Lcom/google/android/gms/internal/ads/fC;

    .line 85
    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    const/4 v8, 0x0

    .line 91
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/aj;->a:Lcom/google/android/gms/internal/ads/Kw;

    .line 92
    .line 93
    move-object v5, v2

    .line 94
    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/rs;-><init>(Lcom/google/android/gms/internal/ads/Gw;Ljava/lang/Object;Ljava/lang/String;LD4/b;Ljava/util/List;LD4/b;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    new-instance v3, LP0/j;

    .line 102
    .line 103
    invoke-direct {v3, v1, p1}, LP0/j;-><init>(Ljava/lang/Object;Z)V

    .line 104
    .line 105
    .line 106
    sget-object p1, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 107
    .line 108
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 109
    .line 110
    .line 111
    monitor-enter v0

    .line 112
    :try_start_1
    sget p1, Lcom/google/android/gms/internal/ads/Tp;->J:I

    .line 113
    .line 114
    add-int/lit8 p1, p1, 0x1

    .line 115
    .line 116
    sput p1, Lcom/google/android/gms/internal/ads/Tp;->J:I

    .line 117
    .line 118
    monitor-exit v0

    .line 119
    return-void

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    throw p1

    .line 123
    :catchall_1
    move-exception p1

    .line 124
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    throw p1

    .line 126
    :cond_1
    :goto_0
    return-void
.end method

.method public final n()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Tp;->a(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final y(Ll3/z0;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Tp;->a(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
