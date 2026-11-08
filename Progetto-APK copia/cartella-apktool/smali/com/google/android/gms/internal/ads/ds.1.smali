.class public final Lcom/google/android/gms/internal/ads/ds;
.super Ll3/E;
.source "SourceFile"


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Lcom/google/android/gms/internal/ads/fg;

.field public final I:Lcom/google/android/gms/internal/ads/Xv;

.field public final J:Ll/s1;

.field public K:Ll3/w;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Bg;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ll3/E;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/Xv;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Xv;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ds;->I:Lcom/google/android/gms/internal/ads/Xv;

    .line 10
    .line 11
    new-instance v1, Ll/s1;

    .line 12
    .line 13
    const/4 v2, 0x6

    .line 14
    invoke-direct {v1, v2}, Ll/s1;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ds;->J:Ll/s1;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ds;->H:Lcom/google/android/gms/internal/ads/fg;

    .line 20
    .line 21
    iput-object p3, v0, Lcom/google/android/gms/internal/ads/Xv;->c:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ds;->G:Landroid/content/Context;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final C1(Lcom/google/android/gms/internal/ads/qa;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ds;->J:Ll/s1;

    .line 2
    .line 3
    iput-object p1, v0, Ll/s1;->e:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method

.method public final J1(Ll3/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ds;->K:Ll3/w;

    .line 2
    .line 3
    return-void
.end method

.method public final L2(Ljava/lang/String;Lcom/google/android/gms/internal/ads/p9;Lcom/google/android/gms/internal/ads/n9;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ds;->J:Ll/s1;

    .line 2
    .line 3
    iget-object v1, v0, Ll/s1;->f:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lr/m;

    .line 6
    .line 7
    invoke-virtual {v1, p1, p2}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    iget-object p2, v0, Ll/s1;->g:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p2, Lr/m;

    .line 15
    .line 16
    invoke-virtual {p2, p1, p3}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final a1(Li3/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ds;->I:Lcom/google/android/gms/internal/ads/Xv;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/Xv;->k:Li3/d;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean v1, p1, Li3/d;->G:Z

    .line 8
    .line 9
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Xv;->e:Z

    .line 10
    .line 11
    iget-object p1, p1, Li3/d;->H:Ll3/U;

    .line 12
    .line 13
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/Xv;->l:Ll3/U;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final b2(Lcom/google/android/gms/internal/ads/j9;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ds;->J:Ll/s1;

    .line 2
    .line 3
    iput-object p1, v0, Ll/s1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method

.method public final c1(Lcom/google/android/gms/internal/ads/l9;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ds;->J:Ll/s1;

    .line 2
    .line 3
    iput-object p1, v0, Ll/s1;->a:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method

.method public final e1(Lcom/google/android/gms/internal/ads/v9;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ds;->J:Ll/s1;

    .line 2
    .line 3
    iput-object p1, v0, Ll/s1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method

.method public final i3(Lcom/google/android/gms/internal/ads/M8;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ds;->I:Lcom/google/android/gms/internal/ads/Xv;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/Xv;->h:Lcom/google/android/gms/internal/ads/M8;

    .line 4
    .line 5
    return-void
.end method

.method public final p2(Lcom/google/android/gms/internal/ads/s9;Ll3/d1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ds;->J:Ll/s1;

    .line 2
    .line 3
    iput-object p1, v0, Ll/s1;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ds;->I:Lcom/google/android/gms/internal/ads/Xv;

    .line 6
    .line 7
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/Xv;->b:Ll3/d1;

    .line 8
    .line 9
    return-void
.end method

.method public final p3(Lcom/google/android/gms/internal/ads/la;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ds;->I:Lcom/google/android/gms/internal/ads/Xv;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/Xv;->n:Lcom/google/android/gms/internal/ads/la;

    .line 4
    .line 5
    new-instance p1, Ll3/Y0;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {p1, v1, v2, v1}, Ll3/Y0;-><init>(ZZZ)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/Xv;->d:Ll3/Y0;

    .line 13
    .line 14
    return-void
.end method

.method public final q2(Ll3/Y;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ds;->I:Lcom/google/android/gms/internal/ads/Xv;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/Xv;->u:Ll3/Y;

    .line 4
    .line 5
    return-void
.end method

.method public final z1(Li3/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ds;->I:Lcom/google/android/gms/internal/ads/Xv;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/Xv;->j:Li3/a;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p1, Li3/a;->G:Z

    .line 8
    .line 9
    iput-boolean p1, v0, Lcom/google/android/gms/internal/ads/Xv;->e:Z

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final zze()Ll3/C;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ds;->J:Ll/s1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v5, Lcom/google/android/gms/internal/ads/Nl;

    .line 7
    .line 8
    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/Nl;-><init>(Ll/s1;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/Nl;->c:Lcom/google/android/gms/internal/ads/v9;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x6

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/Nl;->a:Lcom/google/android/gms/internal/ads/l9;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/Nl;->b:Lcom/google/android/gms/internal/ads/j9;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/Nl;->f:Lr/m;

    .line 53
    .line 54
    invoke-virtual {v1}, Lr/m;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    const/4 v2, 0x3

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/Nl;->e:Lcom/google/android/gms/internal/ads/qa;

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    const/4 v2, 0x7

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ds;->I:Lcom/google/android/gms/internal/ads/Xv;

    .line 81
    .line 82
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/Xv;->f:Ljava/util/ArrayList;

    .line 83
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    .line 85
    .line 86
    iget v3, v1, Lr/m;->I:I

    .line 87
    .line 88
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    :goto_0
    iget v4, v1, Lr/m;->I:I

    .line 93
    .line 94
    if-ge v3, v4, :cond_5

    .line 95
    .line 96
    invoke-virtual {v1, v3}, Lr/m;->f(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    add-int/lit8 v3, v3, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/Xv;->g:Ljava/util/ArrayList;

    .line 109
    .line 110
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/Xv;->b:Ll3/d1;

    .line 111
    .line 112
    if-nez v0, :cond_6

    .line 113
    .line 114
    invoke-static {}, Ll3/d1;->l()Ll3/d1;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/Xv;->b:Ll3/d1;

    .line 119
    .line 120
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/es;

    .line 121
    .line 122
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ds;->K:Ll3/w;

    .line 123
    .line 124
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ds;->G:Landroid/content/Context;

    .line 125
    .line 126
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ds;->H:Lcom/google/android/gms/internal/ads/fg;

    .line 127
    .line 128
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ds;->I:Lcom/google/android/gms/internal/ads/Xv;

    .line 129
    .line 130
    move-object v1, v0

    .line 131
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/es;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/fg;Lcom/google/android/gms/internal/ads/Xv;Lcom/google/android/gms/internal/ads/Nl;Ll3/w;)V

    .line 132
    .line 133
    .line 134
    return-object v0
.end method
