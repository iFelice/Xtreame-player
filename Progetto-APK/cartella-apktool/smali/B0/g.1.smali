.class public final LB0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly4/t;

.field public final b:Landroid/os/Handler;

.field public c:LB0/f;

.field public d:Lm0/d;

.field public e:I

.field public f:I

.field public g:F

.field public h:Ln0/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;LB0/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, LB0/g;->g:F

    .line 7
    .line 8
    new-instance v0, LB0/e;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p1, v1}, LB0/e;-><init>(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ly4/k;->Y(Ly4/t;)Ly4/t;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, LB0/g;->a:Ly4/t;

    .line 19
    .line 20
    iput-object p3, p0, LB0/g;->c:LB0/f;

    .line 21
    .line 22
    new-instance p1, Landroid/os/Handler;

    .line 23
    .line 24
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, LB0/g;->b:Landroid/os/Handler;

    .line 28
    .line 29
    iput v1, p0, LB0/g;->e:I

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, LB0/g;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, LB0/g;->h:Ln0/b;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, LB0/g;->a:Ly4/t;

    .line 14
    .line 15
    invoke-interface {v0}, Ly4/t;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/media/AudioManager;

    .line 20
    .line 21
    iget-object v1, p0, LB0/g;->h:Ln0/b;

    .line 22
    .line 23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v3, 0x1a

    .line 26
    .line 27
    if-lt v2, v3, :cond_1

    .line 28
    .line 29
    iget-object v1, v1, Ln0/b;->f:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Hf;->n(Ljava/lang/Object;)Landroid/media/AudioFocusRequest;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Hf;->c(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, v1, Ln0/b;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public final b(I)V
    .locals 4

    .line 1
    iget-object v0, p0, LB0/g;->c:LB0/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, LB0/X;

    .line 6
    .line 7
    iget-object v0, v0, LB0/X;->N:Lp0/I;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lp0/I;->b()Lp0/H;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v0, v0, Lp0/I;->a:Landroid/os/Handler;

    .line 17
    .line 18
    const/16 v2, 0x21

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, v1, Lp0/H;->a:Landroid/os/Message;

    .line 26
    .line 27
    invoke-virtual {v1}, Lp0/H;->b()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    iget v0, p0, LB0/g;->e:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, LB0/g;->e:I

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    const p1, 0x3e4ccccd    # 0.2f

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    :goto_0
    iget v0, p0, LB0/g;->g:F

    .line 18
    .line 19
    cmpl-float v0, v0, p1

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iput p1, p0, LB0/g;->g:F

    .line 25
    .line 26
    iget-object p1, p0, LB0/g;->c:LB0/f;

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    check-cast p1, LB0/X;

    .line 31
    .line 32
    iget-object p1, p1, LB0/X;->N:Lp0/I;

    .line 33
    .line 34
    const/16 v0, 0x22

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lp0/I;->e(I)Z

    .line 37
    .line 38
    .line 39
    :cond_3
    return-void
.end method

.method public final d(IZ)I
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_8

    .line 4
    .line 5
    iget p1, p0, LB0/g;->f:I

    .line 6
    .line 7
    if-ne p1, v1, :cond_8

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, -0x1

    .line 11
    if-eqz p2, :cond_5

    .line 12
    .line 13
    iget p2, p0, LB0/g;->e:I

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    if-ne p2, v4, :cond_0

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    iget-object p2, p0, LB0/g;->h:Ln0/b;

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    if-nez p2, :cond_2

    .line 26
    .line 27
    new-instance p2, Lp0/C;

    .line 28
    .line 29
    invoke-direct {p2, p1, v1}, Lp0/C;-><init>(II)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    new-instance p1, Lp0/C;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iget v5, p2, Ln0/b;->a:I

    .line 39
    .line 40
    iput v5, p1, Lp0/C;->G:I

    .line 41
    .line 42
    iget-object v5, p2, Ln0/b;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 43
    .line 44
    iput-object v5, p1, Lp0/C;->I:Ljava/lang/Object;

    .line 45
    .line 46
    iget-object v5, p2, Ln0/b;->c:Landroid/os/Handler;

    .line 47
    .line 48
    iput-object v5, p1, Lp0/C;->J:Ljava/lang/Object;

    .line 49
    .line 50
    iget-object v5, p2, Ln0/b;->d:Lm0/d;

    .line 51
    .line 52
    iput-object v5, p1, Lp0/C;->K:Ljava/lang/Object;

    .line 53
    .line 54
    iget-boolean p2, p2, Ln0/b;->e:Z

    .line 55
    .line 56
    iput-boolean p2, p1, Lp0/C;->H:Z

    .line 57
    .line 58
    move-object p2, p1

    .line 59
    :goto_0
    iget-object p1, p0, LB0/g;->d:Lm0/d;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iput-object p1, p2, Lp0/C;->K:Ljava/lang/Object;

    .line 65
    .line 66
    iput-boolean v0, p2, Lp0/C;->H:Z

    .line 67
    .line 68
    new-instance v7, LB0/d;

    .line 69
    .line 70
    invoke-direct {v7, p0}, LB0/d;-><init>(LB0/g;)V

    .line 71
    .line 72
    .line 73
    iget-object v8, p0, LB0/g;->b:Landroid/os/Handler;

    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iput-object v7, p2, Lp0/C;->I:Ljava/lang/Object;

    .line 79
    .line 80
    iput-object v8, p2, Lp0/C;->J:Ljava/lang/Object;

    .line 81
    .line 82
    new-instance p1, Ln0/b;

    .line 83
    .line 84
    iget v6, p2, Lp0/C;->G:I

    .line 85
    .line 86
    iget-object v0, p2, Lp0/C;->K:Ljava/lang/Object;

    .line 87
    .line 88
    move-object v9, v0

    .line 89
    check-cast v9, Lm0/d;

    .line 90
    .line 91
    iget-boolean v10, p2, Lp0/C;->H:Z

    .line 92
    .line 93
    move-object v5, p1

    .line 94
    invoke-direct/range {v5 .. v10}, Ln0/b;-><init>(ILandroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Lm0/d;Z)V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, LB0/g;->h:Ln0/b;

    .line 98
    .line 99
    :goto_1
    iget-object p1, p0, LB0/g;->a:Ly4/t;

    .line 100
    .line 101
    invoke-interface {p1}, Ly4/t;->get()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Landroid/media/AudioManager;

    .line 106
    .line 107
    iget-object p2, p0, LB0/g;->h:Ln0/b;

    .line 108
    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 110
    .line 111
    const/16 v5, 0x1a

    .line 112
    .line 113
    if-lt v0, v5, :cond_3

    .line 114
    .line 115
    iget-object p2, p2, Ln0/b;->f:Ljava/lang/Object;

    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Hf;->n(Ljava/lang/Object;)Landroid/media/AudioFocusRequest;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/Hf;->B(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    goto :goto_2

    .line 129
    :cond_3
    iget-object v0, p2, Ln0/b;->b:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 130
    .line 131
    iget-object v5, p2, Ln0/b;->d:Lm0/d;

    .line 132
    .line 133
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    iget p2, p2, Ln0/b;->a:I

    .line 137
    .line 138
    invoke-virtual {p1, v0, v2, p2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    :goto_2
    if-ne p1, v1, :cond_4

    .line 143
    .line 144
    invoke-virtual {p0, v4}, LB0/g;->c(I)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_4
    invoke-virtual {p0, v1}, LB0/g;->c(I)V

    .line 149
    .line 150
    .line 151
    const/4 v1, -0x1

    .line 152
    :goto_3
    return v1

    .line 153
    :cond_5
    iget p1, p0, LB0/g;->e:I

    .line 154
    .line 155
    if-eq p1, v1, :cond_7

    .line 156
    .line 157
    if-eq p1, v2, :cond_6

    .line 158
    .line 159
    return v1

    .line 160
    :cond_6
    return v0

    .line 161
    :cond_7
    return v3

    .line 162
    :cond_8
    invoke-virtual {p0}, LB0/g;->a()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v0}, LB0/g;->c(I)V

    .line 166
    .line 167
    .line 168
    return v1
.end method
