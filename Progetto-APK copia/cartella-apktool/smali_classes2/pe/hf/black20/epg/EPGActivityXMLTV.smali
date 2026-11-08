.class public Lpe/hf/black20/epg/EPGActivityXMLTV;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static A0:Landroid/os/Handler; = null

.field public static B0:Lcom/google/android/gms/internal/cast/X; = null

.field public static C0:Lr0/b; = null

.field public static f0:Landroid/app/ProgressDialog; = null

.field public static g0:Landroid/widget/TextView; = null

.field public static h0:Landroid/widget/TextView; = null

.field public static i0:Landroid/widget/TextView; = null

.field public static j0:Landroid/widget/ListView; = null

.field public static k0:Landroid/widget/ListView; = null

.field public static l0:I = 0x18

.field public static m0:I = 0x0

.field public static n0:I = 0x0

.field public static o0:I = 0x0

.field public static p0:I = 0x0

.field public static q0:I = 0xe

.field public static r0:I = 0x0

.field public static s0:I = 0x1

.field public static t0:I = 0x23

.field public static u0:Ljava/lang/String;

.field public static v0:Ljava/lang/String;

.field public static w0:Ljava/lang/String;

.field public static x0:Ljava/lang/String;

.field public static y0:Ljava/lang/String;

.field public static z0:Lorg/json/JSONArray;


# instance fields
.field public final G:Lpe/hf/black20/epg/EPGActivityXMLTV;

.field public H:Landroid/content/SharedPreferences;

.field public I:Ljava/util/ArrayList;

.field public J:Ljava/util/ArrayList;

.field public K:Ljava/util/ArrayList;

.field public L:Ljava/util/ArrayList;

.field public M:LZ6/b;

.field public N:Lc7/a;

.field public O:Lc7/d;

.field public P:Lc7/b;

.field public Q:Lc7/b;

.field public R:Lh7/i;

.field public S:I

.field public T:Ljava/lang/String;

.field public U:Landroid/widget/HorizontalScrollView;

.field public V:Landroid/widget/TextView;

.field public W:Landroid/widget/FrameLayout;

.field public X:Landroid/widget/FrameLayout;

.field public Y:Landroid/widget/FrameLayout;

.field public Z:Landroid/widget/LinearLayout;

.field public a0:Ljava/lang/Thread;

.field public b0:Ljava/lang/Thread;

.field public c0:Lw0/j;

.field public d0:Ljava/util/ArrayList;

.field public e0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->G:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->I:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->S:I

    .line 22
    .line 23
    const-string v0, "No"

    .line 24
    .line 25
    iput-object v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->T:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->d0:Ljava/util/ArrayList;

    .line 33
    .line 34
    const-string v0, ""

    .line 35
    .line 36
    iput-object v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->e0:Ljava/lang/String;

    .line 37
    .line 38
    return-void
.end method

.method public static a(Lpe/hf/black20/epg/EPGActivityXMLTV;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->K:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->K:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/util/HashMap;

    .line 17
    .line 18
    const-string v2, "category_id"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    sget-object v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->v0:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v3, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->G:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iput v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->S:I

    .line 37
    .line 38
    iget-object v1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->Z:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    iget-object v4, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->K:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroid/widget/Button;

    .line 57
    .line 58
    const v2, 0x7f090001

    .line 59
    .line 60
    .line 61
    invoke-static {v3, v2}, LF/n;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    iget-object v1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->Z:Landroid/widget/LinearLayout;

    .line 70
    .line 71
    iget-object v4, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->K:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Landroid/widget/Button;

    .line 88
    .line 89
    const v2, 0x7f090002

    .line 90
    .line 91
    .line 92
    invoke-static {v3, v2}, LF/n;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0}, Lpe/hf/black20/epg/EPGActivityXMLTV;->b()V

    .line 103
    .line 104
    .line 105
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    const-string v0, "XCIPTV_TAG"

    .line 2
    .line 3
    const-string v1, "--------------LoadTVChannels----------------"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->f0:Landroid/app/ProgressDialog;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    sget-object v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->f0:Landroid/app/ProgressDialog;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->f0:Landroid/app/ProgressDialog;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->L:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->L:Ljava/util/ArrayList;

    .line 36
    .line 37
    iget-object v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 40
    .line 41
    .line 42
    new-instance v0, Ljava/lang/Thread;

    .line 43
    .line 44
    new-instance v1, Ld7/a;

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-direct {v1, p0, v2}, Ld7/a;-><init>(Lpe/hf/black20/epg/EPGActivityXMLTV;I)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->b0:Ljava/lang/Thread;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0e0031

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Landroid/app/ProgressDialog;

    .line 11
    .line 12
    iget-object v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->G:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 13
    .line 14
    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->f0:Landroid/app/ProgressDialog;

    .line 18
    .line 19
    const-string v1, "Please Wait Loading TV Guide..."

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Landroid/util/DisplayMetrics;

    .line 25
    .line 26
    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 27
    .line 28
    .line 29
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 v2, 0x1e

    .line 32
    .line 33
    if-lt v1, v2, :cond_0

    .line 34
    .line 35
    invoke-static {p0}, Lb7/Z;->m(Lpe/hf/black20/epg/EPGActivityXMLTV;)Landroid/view/Display;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 66
    .line 67
    sput v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->m0:I

    .line 68
    .line 69
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 70
    .line 71
    sput v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->n0:I

    .line 72
    .line 73
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 74
    .line 75
    div-int/lit16 p1, p1, 0xa0

    .line 76
    .line 77
    sput p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 78
    .line 79
    const-string p1, "pe.hf.black20"

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->H:Landroid/content/SharedPreferences;

    .line 87
    .line 88
    new-instance p1, Lc7/d;

    .line 89
    .line 90
    invoke-direct {p1, v0}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->O:Lc7/d;

    .line 94
    .line 95
    new-instance p1, Lc7/a;

    .line 96
    .line 97
    invoke-direct {p1, p0, v1}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->N:Lc7/a;

    .line 101
    .line 102
    new-instance p1, Lc7/b;

    .line 103
    .line 104
    const/4 v2, 0x1

    .line 105
    invoke-direct {p1, v0, v2}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 106
    .line 107
    .line 108
    iput-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->P:Lc7/b;

    .line 109
    .line 110
    new-instance p1, Lc7/b;

    .line 111
    .line 112
    invoke-direct {p1, v0, v1}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 113
    .line 114
    .line 115
    iput-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->Q:Lc7/b;

    .line 116
    .line 117
    new-instance p1, Lr0/b;

    .line 118
    .line 119
    invoke-direct {p1, v0, v2}, Lr0/b;-><init>(Landroid/content/Context;I)V

    .line 120
    .line 121
    .line 122
    sput-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->C0:Lr0/b;

    .line 123
    .line 124
    iget-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->N:Lc7/a;

    .line 125
    .line 126
    const-string v3, "Default (XC)"

    .line 127
    .line 128
    const-string v4, "ORT_PROFILE"

    .line 129
    .line 130
    invoke-static {v4, v3, p1}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iput-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->R:Lh7/i;

    .line 135
    .line 136
    iget-object p1, p1, Lh7/i;->e:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {p1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    sput-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->w0:Ljava/lang/String;

    .line 143
    .line 144
    iget-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->R:Lh7/i;

    .line 145
    .line 146
    iget-object p1, p1, Lh7/i;->c:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {p1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    sput-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->x0:Ljava/lang/String;

    .line 153
    .line 154
    iget-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->R:Lh7/i;

    .line 155
    .line 156
    iget-object p1, p1, Lh7/i;->d:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {p1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    sput-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->y0:Ljava/lang/String;

    .line 163
    .line 164
    const p1, 0x7f0b02d2

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Landroid/widget/FrameLayout;

    .line 172
    .line 173
    iput-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->X:Landroid/widget/FrameLayout;

    .line 174
    .line 175
    const p1, 0x7f0b02db

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Landroid/widget/FrameLayout;

    .line 183
    .line 184
    iput-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->Y:Landroid/widget/FrameLayout;

    .line 185
    .line 186
    const p1, 0x7f0b02d4

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Landroid/widget/LinearLayout;

    .line 194
    .line 195
    invoke-static {}, Lpe/hf/black20/util/Methods;->P()Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-nez p1, :cond_2

    .line 200
    .line 201
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->T(Landroid/content/Context;)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eqz p1, :cond_1

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_1
    iget-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->Y:Landroid/widget/FrameLayout;

    .line 209
    .line 210
    const/16 v3, 0x8

    .line 211
    .line 212
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .line 214
    .line 215
    sget p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->m0:I

    .line 216
    .line 217
    div-int/lit8 p1, p1, 0x6

    .line 218
    .line 219
    sput p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->p0:I

    .line 220
    .line 221
    sget p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->n0:I

    .line 222
    .line 223
    div-int/lit8 p1, p1, 0x3

    .line 224
    .line 225
    sput p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 226
    .line 227
    const/4 p1, 0x2

    .line 228
    sput p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->s0:I

    .line 229
    .line 230
    const/16 p1, 0x14

    .line 231
    .line 232
    sput p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->q0:I

    .line 233
    .line 234
    sget p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 235
    .line 236
    mul-int/lit8 p1, p1, 0x32

    .line 237
    .line 238
    sput p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->t0:I

    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_2
    :goto_1
    iget-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->Y:Landroid/widget/FrameLayout;

    .line 242
    .line 243
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    .line 245
    .line 246
    sget p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->m0:I

    .line 247
    .line 248
    div-int/lit8 p1, p1, 0xe

    .line 249
    .line 250
    sput p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->p0:I

    .line 251
    .line 252
    sget p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->n0:I

    .line 253
    .line 254
    div-int/lit8 p1, p1, 0x4

    .line 255
    .line 256
    sput p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->r0:I

    .line 257
    .line 258
    sput v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->s0:I

    .line 259
    .line 260
    const/16 p1, 0x10

    .line 261
    .line 262
    sput p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->q0:I

    .line 263
    .line 264
    sget p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->o0:I

    .line 265
    .line 266
    mul-int/lit8 p1, p1, 0x23

    .line 267
    .line 268
    sput p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->t0:I

    .line 269
    .line 270
    :goto_2
    const p1, 0x7f0b0533

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    check-cast p1, Landroid/widget/TextView;

    .line 278
    .line 279
    sput-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->i0:Landroid/widget/TextView;

    .line 280
    .line 281
    const p1, 0x7f0b0538

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    check-cast p1, Landroid/widget/TextView;

    .line 289
    .line 290
    sput-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->g0:Landroid/widget/TextView;

    .line 291
    .line 292
    const p1, 0x7f0b0539

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    check-cast p1, Landroid/widget/TextView;

    .line 300
    .line 301
    sput-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->h0:Landroid/widget/TextView;

    .line 302
    .line 303
    const p1, 0x7f0b0543

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    check-cast p1, Landroid/widget/TextView;

    .line 311
    .line 312
    iput-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->V:Landroid/widget/TextView;

    .line 313
    .line 314
    const p1, 0x7f0b0250

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    check-cast p1, Landroid/widget/HorizontalScrollView;

    .line 322
    .line 323
    iput-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->U:Landroid/widget/HorizontalScrollView;

    .line 324
    .line 325
    const p1, 0x7f0b02cb

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    check-cast p1, Landroid/widget/FrameLayout;

    .line 333
    .line 334
    iput-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->W:Landroid/widget/FrameLayout;

    .line 335
    .line 336
    const p1, 0x7f0b02c7

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    check-cast p1, Landroid/widget/LinearLayout;

    .line 344
    .line 345
    iput-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->Z:Landroid/widget/LinearLayout;

    .line 346
    .line 347
    const p1, 0x7f0b032f

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    check-cast p1, Landroid/widget/ListView;

    .line 355
    .line 356
    sput-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->j0:Landroid/widget/ListView;

    .line 357
    .line 358
    const p1, 0x7f0b0333

    .line 359
    .line 360
    .line 361
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    check-cast p1, Landroid/widget/ListView;

    .line 366
    .line 367
    sput-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->k0:Landroid/widget/ListView;

    .line 368
    .line 369
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 370
    .line 371
    .line 372
    sget-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->j0:Landroid/widget/ListView;

    .line 373
    .line 374
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 375
    .line 376
    .line 377
    iget-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->X:Landroid/widget/FrameLayout;

    .line 378
    .line 379
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 380
    .line 381
    .line 382
    iget-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->U:Landroid/widget/HorizontalScrollView;

    .line 383
    .line 384
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 385
    .line 386
    .line 387
    sget-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->k0:Landroid/widget/ListView;

    .line 388
    .line 389
    new-instance v3, Ll/K0;

    .line 390
    .line 391
    invoke-direct {v3, p0, v2}, Ll/K0;-><init>(Ljava/lang/Object;I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {p1, v3}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 395
    .line 396
    .line 397
    const-string p1, "yyyyMMddHHmmss"

    .line 398
    .line 399
    invoke-static {p1}, LZ6/b;->a(Ljava/lang/String;)LZ6/b;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    iput-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->M:LZ6/b;

    .line 404
    .line 405
    const-string p1, "MM/dd/yyyy HH:mm:ss"

    .line 406
    .line 407
    invoke-static {p1}, LZ6/b;->a(Ljava/lang/String;)LZ6/b;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    new-instance v2, Ljava/util/Date;

    .line 412
    .line 413
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 414
    .line 415
    .line 416
    iget-object p1, p1, LZ6/b;->G:LZ6/C;

    .line 417
    .line 418
    invoke-virtual {p1, v2}, LZ6/C;->c(Ljava/util/Date;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    const-string v2, "ORT_PROCESS_STATUS"

    .line 426
    .line 427
    invoke-virtual {p1, v2}, LQ5/a;->b(Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    move-result p1

    .line 431
    const/4 v2, 0x0

    .line 432
    if-nez p1, :cond_4

    .line 433
    .line 434
    const-string p1, "XCIPTV_TAG"

    .line 435
    .line 436
    const-string v0, "--------------LoadCategories----------------"

    .line 437
    .line 438
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .line 440
    .line 441
    sget-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->f0:Landroid/app/ProgressDialog;

    .line 442
    .line 443
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 444
    .line 445
    .line 446
    move-result p1

    .line 447
    if-nez p1, :cond_3

    .line 448
    .line 449
    sget-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->f0:Landroid/app/ProgressDialog;

    .line 450
    .line 451
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 452
    .line 453
    .line 454
    sget-object p1, Lpe/hf/black20/epg/EPGActivityXMLTV;->f0:Landroid/app/ProgressDialog;

    .line 455
    .line 456
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 457
    .line 458
    .line 459
    :cond_3
    iget-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->I:Ljava/util/ArrayList;

    .line 460
    .line 461
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 462
    .line 463
    .line 464
    new-instance p1, Ljava/util/ArrayList;

    .line 465
    .line 466
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .line 468
    .line 469
    iput-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->K:Ljava/util/ArrayList;

    .line 470
    .line 471
    new-instance p1, Ljava/lang/Thread;

    .line 472
    .line 473
    new-instance v0, Ld7/a;

    .line 474
    .line 475
    invoke-direct {v0, p0, v1}, Ld7/a;-><init>(Lpe/hf/black20/epg/EPGActivityXMLTV;I)V

    .line 476
    .line 477
    .line 478
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 479
    .line 480
    .line 481
    iput-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->a0:Ljava/lang/Thread;

    .line 482
    .line 483
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 484
    .line 485
    .line 486
    goto :goto_3

    .line 487
    :cond_4
    const p1, 0x7f1301ad

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object p1

    .line 494
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    const v3, 0x7f0e011d

    .line 499
    .line 500
    .line 501
    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    new-instance v3, Landroid/app/AlertDialog$Builder;

    .line 506
    .line 507
    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 519
    .line 520
    const-string v6, "#99000000"

    .line 521
    .line 522
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 523
    .line 524
    .line 525
    move-result v6

    .line 526
    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 527
    .line 528
    .line 529
    const v6, 0x7f0b0586

    .line 530
    .line 531
    .line 532
    invoke-static {v4, v5, v3, v1, v6}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 533
    .line 534
    .line 535
    move-result-object v4

    .line 536
    check-cast v4, Landroid/widget/TextView;

    .line 537
    .line 538
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    .line 540
    .line 541
    const p1, 0x7f0b014f

    .line 542
    .line 543
    .line 544
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 545
    .line 546
    .line 547
    move-result-object p1

    .line 548
    check-cast p1, Landroid/widget/Button;

    .line 549
    .line 550
    const v1, 0x7f1301ee

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    .line 559
    .line 560
    new-instance v0, Ll/c;

    .line 561
    .line 562
    const/16 v1, 0x11

    .line 563
    .line 564
    invoke-direct {v0, v1, p0, v3}, Ll/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 571
    .line 572
    .line 573
    :goto_3
    sget-object p1, Lpe/hf/black20/util/Config;->b:Ljava/lang/String;

    .line 574
    .line 575
    const-string v0, "no"

    .line 576
    .line 577
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result p1

    .line 581
    const-string v0, "No"

    .line 582
    .line 583
    if-eqz p1, :cond_7

    .line 584
    .line 585
    iget-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->H:Landroid/content/SharedPreferences;

    .line 586
    .line 587
    const-string v1, "filter_status"

    .line 588
    .line 589
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object p1

    .line 593
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-result p1

    .line 597
    if-nez p1, :cond_6

    .line 598
    .line 599
    iget-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->H:Landroid/content/SharedPreferences;

    .line 600
    .line 601
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object p1

    .line 605
    const-string v3, ""

    .line 606
    .line 607
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 608
    .line 609
    .line 610
    move-result p1

    .line 611
    if-nez p1, :cond_6

    .line 612
    .line 613
    iget-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->H:Landroid/content/SharedPreferences;

    .line 614
    .line 615
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object p1

    .line 619
    const-string v1, "null"

    .line 620
    .line 621
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    move-result p1

    .line 625
    if-eqz p1, :cond_5

    .line 626
    .line 627
    goto :goto_4

    .line 628
    :cond_5
    const-string p1, "Yes"

    .line 629
    .line 630
    iput-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->T:Ljava/lang/String;

    .line 631
    .line 632
    goto :goto_5

    .line 633
    :cond_6
    :goto_4
    iput-object v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->T:Ljava/lang/String;

    .line 634
    .line 635
    goto :goto_5

    .line 636
    :cond_7
    iput-object v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->T:Ljava/lang/String;

    .line 637
    .line 638
    :goto_5
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "ORT_isEPGActivityXMLTVVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->a0:Ljava/lang/Thread;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->b0:Ljava/lang/Thread;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->c0:Lw0/j;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 33
    .line 34
    .line 35
    :cond_2
    sget-object v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->B0:Lcom/google/android/gms/internal/cast/X;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    sget-object v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->A0:Landroid/os/Handler;

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    sget-object v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->A0:Landroid/os/Handler;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    iget-object v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->N:Lc7/a;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->O:Lc7/d;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->P:Lc7/b;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->Q:Lc7/b;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 68
    .line 69
    .line 70
    sget-object v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->C0:Lr0/b;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 73
    .line 74
    .line 75
    sput-object v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->j0:Landroid/widget/ListView;

    .line 76
    .line 77
    sput-object v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->k0:Landroid/widget/ListView;

    .line 78
    .line 79
    sput-object v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->z0:Lorg/json/JSONArray;

    .line 80
    .line 81
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const-string v2, "ORT_isEPGActivityXMLTVVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "ORT_isEPGActivityXMLTVVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    invoke-static {}, Lpe/hf/black20/util/Methods;->P()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lpe/hf/black20/epg/EPGActivityXMLTV;->G:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 13
    .line 14
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->T(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v0, 0x1e

    .line 23
    .line 24
    if-lt p1, v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, LE1/a;->z(Landroid/view/Window;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, LE1/a;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, LE1/a;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {}, LE1/a;->A()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {}, LE1/a;->C()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    or-int/2addr v0, v1

    .line 60
    invoke-static {p1, v0}, LE1/a;->t(Landroid/view/WindowInsetsController;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, LE1/a;->k(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, LE1/a;->s(Landroid/view/WindowInsetsController;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const/16 v0, 0x1002

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const/16 v0, 0xf06

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 99
    .line 100
    .line 101
    :cond_2
    :goto_0
    return-void
.end method
