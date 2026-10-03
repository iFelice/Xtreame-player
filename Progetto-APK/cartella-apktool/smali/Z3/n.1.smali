.class public final synthetic LZ3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv4/d;
.implements LZ3/W;


# instance fields
.field public final G:Ljava/lang/Object;

.field public final H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LZ3/n;->G:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, LZ3/n;->H:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final i(LZ3/l;)V
    .locals 7

    .line 1
    iget-object v0, p0, LZ3/n;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v1, p0, LZ3/n;->H:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lb7/n;

    .line 8
    .line 9
    invoke-static {}, LZ3/G;->a()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p1, LZ3/l;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v5, 0x3

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    new-instance v0, LZ3/a0;

    .line 24
    .line 25
    iget-boolean p1, p1, LZ3/l;->l:Z

    .line 26
    .line 27
    if-eq v4, p1, :cond_0

    .line 28
    .line 29
    const-string p1, "ConsentForm#show can only be invoked once."

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p1, "Privacy options form is being loading. Please try again later."

    .line 33
    .line 34
    :goto_0
    invoke-direct {v0, v5, p1}, LZ3/a0;-><init>(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, LZ3/a0;->a()LK/k;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v1, p1}, Lb7/n;->a(LK/k;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_1
    iget-object v2, p1, LZ3/l;->g:LZ3/s;

    .line 47
    .line 48
    iget-object v4, v2, LZ3/s;->H:LZ3/w;

    .line 49
    .line 50
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    new-instance v6, LZ3/r;

    .line 54
    .line 55
    invoke-direct {v6, v4, v3}, LZ3/r;-><init>(LZ3/w;I)V

    .line 56
    .line 57
    .line 58
    iget-object v2, v2, LZ3/s;->G:Landroid/os/Handler;

    .line 59
    .line 60
    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    new-instance v2, LZ3/j;

    .line 64
    .line 65
    invoke-direct {v2, p1, v0}, LZ3/j;-><init>(LZ3/l;Landroid/app/Activity;)V

    .line 66
    .line 67
    .line 68
    iget-object v4, p1, LZ3/l;->a:Landroid/app/Application;

    .line 69
    .line 70
    invoke-virtual {v4, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 71
    .line 72
    .line 73
    iget-object v4, p1, LZ3/l;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 74
    .line 75
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p1, LZ3/l;->b:LZ3/u;

    .line 79
    .line 80
    iput-object v0, v2, LZ3/u;->a:Landroid/app/Activity;

    .line 81
    .line 82
    new-instance v2, Landroid/app/Dialog;

    .line 83
    .line 84
    const v4, 0x1030010

    .line 85
    .line 86
    .line 87
    invoke-direct {v2, v0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p1, LZ3/l;->g:LZ3/s;

    .line 91
    .line 92
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-nez v0, :cond_2

    .line 103
    .line 104
    new-instance p1, LZ3/a0;

    .line 105
    .line 106
    const-string v0, "Activity with null windows is passed in."

    .line 107
    .line 108
    invoke-direct {p1, v5, v0}, LZ3/a0;-><init>(ILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, LZ3/a0;->a()LK/k;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {v1, p1}, Lb7/n;->a(LK/k;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_2
    const/4 v4, -0x1

    .line 120
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 121
    .line 122
    .line 123
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 124
    .line 125
    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    .line 130
    .line 131
    const/high16 v3, 0x1000000

    .line 132
    .line 133
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 134
    .line 135
    .line 136
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 137
    .line 138
    const/16 v4, 0x23

    .line 139
    .line 140
    if-lt v3, v4, :cond_3

    .line 141
    .line 142
    invoke-static {v0}, LE1/a;->r(Landroid/view/Window;)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_3
    const/16 v4, 0x1e

    .line 147
    .line 148
    if-lt v3, v4, :cond_4

    .line 149
    .line 150
    invoke-static {v0}, LH/a;->e(Landroid/view/Window;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_4
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    or-int/lit16 v3, v3, 0x700

    .line 163
    .line 164
    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 165
    .line 166
    .line 167
    :goto_1
    iget-object v0, p1, LZ3/l;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 173
    .line 174
    .line 175
    iput-object v2, p1, LZ3/l;->f:Landroid/app/Dialog;

    .line 176
    .line 177
    iget-object p1, p1, LZ3/l;->g:LZ3/s;

    .line 178
    .line 179
    const-string v0, "UMP_messagePresented"

    .line 180
    .line 181
    const-string v1, ""

    .line 182
    .line 183
    invoke-virtual {p1, v0, v1}, LZ3/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :goto_2
    return-void
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, LZ3/n;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LZ3/X;

    .line 4
    .line 5
    invoke-interface {v0}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Application;

    .line 10
    .line 11
    iget-object v1, p0, LZ3/n;->H:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, LZ3/X;

    .line 14
    .line 15
    invoke-interface {v1}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, LZ3/e;

    .line 20
    .line 21
    new-instance v2, LZ3/c0;

    .line 22
    .line 23
    invoke-direct {v2, v0, v1}, LZ3/c0;-><init>(Landroid/app/Application;LZ3/e;)V

    .line 24
    .line 25
    .line 26
    return-object v2
.end method
