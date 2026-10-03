.class public Lpe/hf/black20/ChannelListActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final THEME:Ljava/lang/String; = "yes"

.field public static final logoIcon:Ljava/lang/String;

.field public static r0:Ljava/lang/String;

.field public static s0:I

.field public static t0:I

.field public static u0:F

.field public static v0:Ljava/util/ArrayList;

.field public static w0:Landroid/widget/GridView;

.field public static x0:Landroid/widget/ListView;

.field public static y0:Ljava/util/ArrayList;


# instance fields
.field public final G:Lpe/hf/black20/ChannelListActivity;

.field public H:Landroid/content/SharedPreferences;

.field public I:Landroid/widget/ProgressBar;

.field public J:Ljava/util/ArrayList;

.field public K:Ljava/util/ArrayList;

.field public L:Ljava/util/ArrayList;

.field public M:Ljava/util/ArrayList;

.field public N:Lc7/a;

.field public O:Lc7/d;

.field public P:Lc7/b;

.field public Q:Lc7/b;

.field public R:Lh7/i;

.field public S:Landroid/widget/ImageButton;

.field public T:Landroid/widget/ImageButton;

.field public U:Landroid/widget/ImageButton;

.field public V:Landroid/widget/ImageButton;

.field public W:Landroid/widget/ImageButton;

.field public X:Landroid/widget/TextView;

.field public Y:Landroid/widget/TextView;

.field public Z:Landroid/widget/TextView;

.field public a0:Landroid/widget/EditText;

.field public b0:Landroid/widget/FrameLayout;

.field public c0:Landroid/widget/FrameLayout;

.field public d0:Landroid/widget/FrameLayout;

.field public e0:Landroid/widget/FrameLayout;

.field public f0:Ljava/lang/String;

.field public g0:Ljava/lang/String;

.field public h0:Ljava/lang/String;

.field public i0:Ljava/lang/String;

.field public j0:Ljava/lang/String;

.field public k0:Ljava/lang/String;

.field public l0:Lw0/j;

.field public m0:Z

.field public n0:Landroid/widget/FrameLayout;

.field public o0:Landroid/widget/Button;

.field public p0:Landroid/widget/Button;

.field public q0:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "native-lib"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "default"

    .line 7
    .line 8
    sput-object v0, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lpe/hf/black20/ChannelListActivity;->v0:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-static {}, Lpe/hf/black20/util/Methods;->J()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lpe/hf/black20/ChannelListActivity;->logoIcon:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lpe/hf/black20/ChannelListActivity;->J:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lpe/hf/black20/ChannelListActivity;->L:Ljava/util/ArrayList;

    .line 19
    .line 20
    const-string v0, "no"

    .line 21
    .line 22
    iput-object v0, p0, Lpe/hf/black20/ChannelListActivity;->f0:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, ""

    .line 25
    .line 26
    iput-object v1, p0, Lpe/hf/black20/ChannelListActivity;->g0:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Lpe/hf/black20/ChannelListActivity;->h0:Ljava/lang/String;

    .line 29
    .line 30
    const-string v0, "0"

    .line 31
    .line 32
    iput-object v0, p0, Lpe/hf/black20/ChannelListActivity;->i0:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v0, p0, Lpe/hf/black20/ChannelListActivity;->j0:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "12"

    .line 37
    .line 38
    iput-object v0, p0, Lpe/hf/black20/ChannelListActivity;->k0:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lpe/hf/black20/ChannelListActivity;->m0:Z

    .line 42
    .line 43
    return-void
.end method

.method public static a(Lpe/hf/black20/ChannelListActivity;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 10
    .line 11
    invoke-virtual {v0}, Lc7/d;->I0()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-ge v3, v4, :cond_0

    .line 27
    .line 28
    new-instance v4, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lh7/c;

    .line 38
    .line 39
    iget-object v5, v5, Lh7/c;->a:Ljava/lang/String;

    .line 40
    .line 41
    const-string v6, "id"

    .line 42
    .line 43
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Lh7/c;

    .line 51
    .line 52
    iget-object v5, v5, Lh7/c;->b:Ljava/lang/String;

    .line 53
    .line 54
    const-string v6, "isactive"

    .line 55
    .line 56
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Lh7/c;

    .line 64
    .line 65
    iget-object v5, v5, Lh7/c;->c:Ljava/lang/String;

    .line 66
    .line 67
    const-string v6, "name"

    .line 68
    .line 69
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->n0:Landroid/widget/FrameLayout;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Lb7/M;

    .line 84
    .line 85
    iget-object v3, p0, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 86
    .line 87
    invoke-direct {v0, v2, v3, v1}, Lb7/M;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    .line 88
    .line 89
    .line 90
    iget-object v3, p0, Lpe/hf/black20/ChannelListActivity;->q0:Landroid/widget/ListView;

    .line 91
    .line 92
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->q0:Landroid/widget/ListView;

    .line 96
    .line 97
    const/4 v3, 0x1

    .line 98
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->p0:Landroid/widget/Button;

    .line 102
    .line 103
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->p0:Landroid/widget/Button;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->q0:Landroid/widget/ListView;

    .line 112
    .line 113
    new-instance v3, Lf/f;

    .line 114
    .line 115
    const/4 v4, 0x2

    .line 116
    invoke-direct {v3, v4, p0, v1}, Lf/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->q0:Landroid/widget/ListView;

    .line 123
    .line 124
    new-instance v3, Lb7/w;

    .line 125
    .line 126
    invoke-direct {v3, p0, v1, v2}, Lb7/w;-><init>(Ljava/lang/Object;Ljava/util/ArrayList;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public static b(Lpe/hf/black20/ChannelListActivity;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "XCIPTV_TAG"

    .line 5
    .line 6
    const-string v1, "-------calling WhatListToLoad"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "ORT_WHICH_CAT"

    .line 16
    .line 17
    const-string v2, "TV"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v3, 0x6

    .line 28
    const/4 v4, 0x0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    const-string v0, "FAV"

    .line 32
    .line 33
    invoke-static {v1, v2, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    const-string v0, "CATCHUP"

    .line 40
    .line 41
    invoke-static {v1, v2, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    const-string v0, "RADIO"

    .line 48
    .line 49
    invoke-static {v1, v2, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string v0, "VOD"

    .line 57
    .line 58
    invoke-static {v1, v2, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v5, 0x0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    new-instance v0, Lb7/D;

    .line 66
    .line 67
    invoke-direct {v0, p0, v5}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;Lb7/A;)V

    .line 68
    .line 69
    .line 70
    new-array p0, v4, [Ljava/lang/Void;

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    const-string v0, "SERIES"

    .line 77
    .line 78
    invoke-static {v1, v2, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    new-instance v0, Lb7/D;

    .line 85
    .line 86
    invoke-direct {v0, p0, v5}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;Lb7/y;)V

    .line 87
    .line 88
    .line 89
    new-array p0, v4, [Ljava/lang/Void;

    .line 90
    .line 91
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    new-instance v0, Lb7/D;

    .line 96
    .line 97
    invoke-direct {v0, p0, v3}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    .line 98
    .line 99
    .line 100
    new-array p0, v4, [Ljava/lang/Void;

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    :goto_0
    new-instance v0, Lb7/D;

    .line 107
    .line 108
    invoke-direct {v0, p0, v3}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    .line 109
    .line 110
    .line 111
    new-array p0, v4, [Ljava/lang/Void;

    .line 112
    .line 113
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 114
    .line 115
    .line 116
    :goto_1
    return-void
.end method

.method public static native bi()Ljava/lang/String;
.end method

.method public static c(Lpe/hf/black20/ChannelListActivity;Lc7/d;Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f0e011e

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 29
    .line 30
    const-string v5, "#4f000000"

    .line 31
    .line 32
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const v5, 0x7f0b0586

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v4, v2, v1, v5}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Landroid/widget/TextView;

    .line 47
    .line 48
    const v4, 0x7f130084

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 52
    .line 53
    .line 54
    const v3, 0x7f0b014f

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    move-object v9, v3

    .line 62
    check-cast v9, Landroid/widget/Button;

    .line 63
    .line 64
    const v3, 0x7f13023c

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    new-instance v10, Lf/N;

    .line 75
    .line 76
    const/4 v8, 0x1

    .line 77
    move-object v3, v10

    .line 78
    move-object v4, p0

    .line 79
    move-object v5, v2

    .line 80
    move-object v6, p1

    .line 81
    move-object v7, p2

    .line 82
    invoke-direct/range {v3 .. v8}, Lf/N;-><init>(Ljava/lang/Object;Landroid/app/AlertDialog;Lc7/d;Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    const p1, 0x7f0b014b

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Landroid/widget/Button;

    .line 96
    .line 97
    const p2, 0x7f1301e7

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    new-instance p2, Ll/c;

    .line 108
    .line 109
    const/4 v0, 0x5

    .line 110
    invoke-direct {p2, v0, p0, v2}, Ll/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 117
    .line 118
    .line 119
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 6

    .line 1
    const-string v0, "ORT_WHICH_CAT"

    .line 2
    .line 3
    const-string v1, "TV"

    .line 4
    .line 5
    invoke-static {v0, v1, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    new-instance v0, Lb7/D;

    .line 14
    .line 15
    invoke-direct {v0, p0, v3}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-array v1, v4, [Ljava/lang/Void;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 21
    .line 22
    .line 23
    new-instance v0, Lb7/D;

    .line 24
    .line 25
    invoke-direct {v0, p0, v3}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;Lb7/B;)V

    .line 26
    .line 27
    .line 28
    new-array v1, v4, [Ljava/lang/Void;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :cond_0
    const-string v2, "FAV"

    .line 36
    .line 37
    invoke-static {v0, v1, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/16 v5, 0x8

    .line 42
    .line 43
    if-nez v2, :cond_4

    .line 44
    .line 45
    const-string v2, "CATCHUP"

    .line 46
    .line 47
    invoke-static {v0, v1, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_4

    .line 52
    .line 53
    const-string v2, "RADIO"

    .line 54
    .line 55
    invoke-static {v0, v1, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const-string v2, "VOD"

    .line 63
    .line 64
    invoke-static {v0, v1, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->e0:Landroid/widget/FrameLayout;

    .line 71
    .line 72
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lb7/D;

    .line 76
    .line 77
    invoke-direct {v0, p0, v3}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;La/r;)V

    .line 78
    .line 79
    .line 80
    new-array v1, v4, [Ljava/lang/Void;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    .line 84
    .line 85
    new-instance v0, Lb7/D;

    .line 86
    .line 87
    invoke-direct {v0, p0, v3}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;Lb7/z;)V

    .line 88
    .line 89
    .line 90
    new-array v1, v4, [Ljava/lang/Void;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    const-string v2, "SERIES"

    .line 97
    .line 98
    invoke-static {v0, v1, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->e0:Landroid/widget/FrameLayout;

    .line 105
    .line 106
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    new-instance v0, Lb7/D;

    .line 110
    .line 111
    invoke-direct {v0, p0}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;)V

    .line 112
    .line 113
    .line 114
    new-array v1, v4, [Ljava/lang/Void;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    .line 118
    .line 119
    new-instance v0, Lb7/D;

    .line 120
    .line 121
    invoke-direct {v0, p0, v3}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;Lb7/C;)V

    .line 122
    .line 123
    .line 124
    new-array v1, v4, [Ljava/lang/Void;

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->e0:Landroid/widget/FrameLayout;

    .line 131
    .line 132
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    new-instance v0, Lb7/D;

    .line 136
    .line 137
    invoke-direct {v0, p0, v3}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;Lb7/B;)V

    .line 138
    .line 139
    .line 140
    new-array v1, v4, [Ljava/lang/Void;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    :goto_0
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->e0:Landroid/widget/FrameLayout;

    .line 147
    .line 148
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    new-instance v0, Lb7/D;

    .line 152
    .line 153
    invoke-direct {v0, p0, v3}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    new-array v1, v4, [Ljava/lang/Void;

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 159
    .line 160
    .line 161
    new-instance v0, Lb7/D;

    .line 162
    .line 163
    invoke-direct {v0, p0, v3}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;Lb7/B;)V

    .line 164
    .line 165
    .line 166
    new-array v1, v4, [Ljava/lang/Void;

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 169
    .line 170
    .line 171
    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 15
    .line 16
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 19
    .line 20
    .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v2, 0x1e

    .line 24
    .line 25
    if-lt v1, v2, :cond_0

    .line 26
    .line 27
    invoke-static {p0}, LE1/a;->f(Lpe/hf/black20/ChannelListActivity;)Landroid/view/Display;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 58
    .line 59
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 60
    .line 61
    mul-float v2, v2, v3

    .line 62
    .line 63
    iput v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 74
    .line 75
    .line 76
    const p1, 0x7f0e002b

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 80
    .line 81
    .line 82
    const/16 p1, 0x1c

    .line 83
    .line 84
    if-lt v1, p1, :cond_1

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1}, LN/d0;->s(Landroid/view/WindowManager$LayoutParams;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    new-instance p1, Lpe/hf/black20/util/b;

    .line 105
    .line 106
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

    .line 107
    .line 108
    invoke-direct {p1, v0}, Lpe/hf/black20/util/b;-><init>(Landroid/app/Activity;)V

    .line 109
    .line 110
    .line 111
    iget v2, p1, Lpe/hf/black20/util/b;->c:F

    .line 112
    .line 113
    float-to-int v2, v2

    .line 114
    sput v2, Lpe/hf/black20/ChannelListActivity;->s0:I

    .line 115
    .line 116
    iget v2, p1, Lpe/hf/black20/util/b;->b:F

    .line 117
    .line 118
    float-to-int v2, v2

    .line 119
    sput v2, Lpe/hf/black20/ChannelListActivity;->t0:I

    .line 120
    .line 121
    invoke-virtual {p1}, Lpe/hf/black20/util/b;->a()F

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    sput p1, Lpe/hf/black20/ChannelListActivity;->u0:F

    .line 126
    .line 127
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const-string v2, "ORT_WHICH_CAT"

    .line 132
    .line 133
    const-string v3, "TV"

    .line 134
    .line 135
    invoke-virtual {p1, v2, v3}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    const-string p1, "pe.hf.black20"

    .line 139
    .line 140
    const/4 v4, 0x0

    .line 141
    invoke-virtual {v0, p1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->H:Landroid/content/SharedPreferences;

    .line 146
    .line 147
    new-instance p1, Lc7/d;

    .line 148
    .line 149
    invoke-direct {p1, v0}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 153
    .line 154
    new-instance p1, Lc7/a;

    .line 155
    .line 156
    invoke-direct {p1, p0, v4}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 157
    .line 158
    .line 159
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->N:Lc7/a;

    .line 160
    .line 161
    new-instance p1, Lc7/b;

    .line 162
    .line 163
    const/4 v5, 0x1

    .line 164
    invoke-direct {p1, v0, v5}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 165
    .line 166
    .line 167
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->P:Lc7/b;

    .line 168
    .line 169
    new-instance p1, Lc7/b;

    .line 170
    .line 171
    invoke-direct {p1, v0, v4}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 172
    .line 173
    .line 174
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->Q:Lc7/b;

    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    const/4 v6, 0x0

    .line 189
    if-ne p1, v5, :cond_2

    .line 190
    .line 191
    iput-boolean v5, p0, Lpe/hf/black20/ChannelListActivity;->m0:Z

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_2
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->H:Landroid/content/SharedPreferences;

    .line 195
    .line 196
    const-string v7, "language"

    .line 197
    .line 198
    invoke-interface {p1, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_4

    .line 203
    .line 204
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->H:Landroid/content/SharedPreferences;

    .line 205
    .line 206
    invoke-interface {p1, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    const-string v7, "ar"

    .line 211
    .line 212
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-eqz p1, :cond_3

    .line 217
    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {p1, v5}, Landroid/view/View;->setLayoutDirection(I)V

    .line 227
    .line 228
    .line 229
    iput-boolean v5, p0, Lpe/hf/black20/ChannelListActivity;->m0:Z

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutDirection(I)V

    .line 241
    .line 242
    .line 243
    iput-boolean v4, p0, Lpe/hf/black20/ChannelListActivity;->m0:Z

    .line 244
    .line 245
    :cond_4
    :goto_1
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->H:Landroid/content/SharedPreferences;

    .line 246
    .line 247
    const-string v7, "xciptv_profile"

    .line 248
    .line 249
    invoke-interface {p1, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    const-string v8, "ORT_PROFILE"

    .line 254
    .line 255
    if-eqz p1, :cond_5

    .line 256
    .line 257
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    iget-object v9, p0, Lpe/hf/black20/ChannelListActivity;->H:Landroid/content/SharedPreferences;

    .line 262
    .line 263
    invoke-interface {v9, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    invoke-virtual {p1, v8, v7}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 268
    .line 269
    .line 270
    :cond_5
    const-string p1, "xtreamcodes"

    .line 271
    .line 272
    const-string v7, "ORT_WHICH_PANEL"

    .line 273
    .line 274
    const-string v9, "m3u"

    .line 275
    .line 276
    invoke-static {v7, p1, v9}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    if-nez p1, :cond_6

    .line 281
    .line 282
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->N:Lc7/a;

    .line 283
    .line 284
    const-string v7, "Default (XC)"

    .line 285
    .line 286
    invoke-static {v8, v7, p1}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->R:Lh7/i;

    .line 291
    .line 292
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    iget-object v7, p0, Lpe/hf/black20/ChannelListActivity;->R:Lh7/i;

    .line 297
    .line 298
    iget-object v7, v7, Lh7/i;->a:Ljava/lang/String;

    .line 299
    .line 300
    const-string v8, "ORT_PROFILE_ID"

    .line 301
    .line 302
    invoke-virtual {p1, v8, v7}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 303
    .line 304
    .line 305
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    iget-object v7, p0, Lpe/hf/black20/ChannelListActivity;->R:Lh7/i;

    .line 310
    .line 311
    iget-object v7, v7, Lh7/i;->e:Ljava/lang/String;

    .line 312
    .line 313
    const-string v8, "ORT_PROFILE_SERVER"

    .line 314
    .line 315
    invoke-virtual {p1, v8, v7}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 316
    .line 317
    .line 318
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    iget-object v7, p0, Lpe/hf/black20/ChannelListActivity;->R:Lh7/i;

    .line 323
    .line 324
    iget-object v7, v7, Lh7/i;->c:Ljava/lang/String;

    .line 325
    .line 326
    const-string v8, "ORT_PROFILE_USERNAME"

    .line 327
    .line 328
    invoke-virtual {p1, v8, v7}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 329
    .line 330
    .line 331
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    iget-object v7, p0, Lpe/hf/black20/ChannelListActivity;->R:Lh7/i;

    .line 336
    .line 337
    iget-object v7, v7, Lh7/i;->d:Ljava/lang/String;

    .line 338
    .line 339
    const-string v8, "ORT_PROFILE_PASSWORD"

    .line 340
    .line 341
    invoke-virtual {p1, v8, v7}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 342
    .line 343
    .line 344
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .line 348
    .line 349
    sput-object p1, Lpe/hf/black20/ChannelListActivity;->y0:Ljava/util/ArrayList;

    .line 350
    .line 351
    const p1, 0x7f0b03da

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    check-cast p1, Landroid/widget/ProgressBar;

    .line 359
    .line 360
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 361
    .line 362
    const p1, 0x7f0b0231

    .line 363
    .line 364
    .line 365
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    check-cast p1, Landroid/widget/GridView;

    .line 370
    .line 371
    sput-object p1, Lpe/hf/black20/ChannelListActivity;->w0:Landroid/widget/GridView;

    .line 372
    .line 373
    const p1, 0x7f0b032e

    .line 374
    .line 375
    .line 376
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    check-cast p1, Landroid/widget/ListView;

    .line 381
    .line 382
    sput-object p1, Lpe/hf/black20/ChannelListActivity;->x0:Landroid/widget/ListView;

    .line 383
    .line 384
    const p1, 0x7f0b0525

    .line 385
    .line 386
    .line 387
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    check-cast p1, Landroid/widget/TextView;

    .line 392
    .line 393
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->X:Landroid/widget/TextView;

    .line 394
    .line 395
    const p1, 0x7f0b0580

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    check-cast p1, Landroid/widget/TextView;

    .line 403
    .line 404
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->Y:Landroid/widget/TextView;

    .line 405
    .line 406
    const p1, 0x7f0b050f

    .line 407
    .line 408
    .line 409
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    check-cast p1, Landroid/widget/TextView;

    .line 414
    .line 415
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->Z:Landroid/widget/TextView;

    .line 416
    .line 417
    const p1, 0x7f0b02c8

    .line 418
    .line 419
    .line 420
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    check-cast p1, Landroid/widget/FrameLayout;

    .line 425
    .line 426
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->b0:Landroid/widget/FrameLayout;

    .line 427
    .line 428
    const p1, 0x7f0b02d9

    .line 429
    .line 430
    .line 431
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    check-cast p1, Landroid/widget/FrameLayout;

    .line 436
    .line 437
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->c0:Landroid/widget/FrameLayout;

    .line 438
    .line 439
    const p1, 0x7f0b02dd

    .line 440
    .line 441
    .line 442
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    check-cast p1, Landroid/widget/FrameLayout;

    .line 447
    .line 448
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->e0:Landroid/widget/FrameLayout;

    .line 449
    .line 450
    const p1, 0x7f0b01cc

    .line 451
    .line 452
    .line 453
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    check-cast p1, Landroid/widget/EditText;

    .line 458
    .line 459
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->a0:Landroid/widget/EditText;

    .line 460
    .line 461
    invoke-virtual {p1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 462
    .line 463
    .line 464
    const p1, 0x7f0b02f1

    .line 465
    .line 466
    .line 467
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 468
    .line 469
    .line 470
    move-result-object p1

    .line 471
    check-cast p1, Landroid/widget/FrameLayout;

    .line 472
    .line 473
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->d0:Landroid/widget/FrameLayout;

    .line 474
    .line 475
    const/16 v7, 0x8

    .line 476
    .line 477
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 478
    .line 479
    .line 480
    const p1, 0x7f0b011a

    .line 481
    .line 482
    .line 483
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    check-cast p1, Landroid/widget/ImageButton;

    .line 488
    .line 489
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->T:Landroid/widget/ImageButton;

    .line 490
    .line 491
    const p1, 0x7f0b011b

    .line 492
    .line 493
    .line 494
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    check-cast p1, Landroid/widget/ImageButton;

    .line 499
    .line 500
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->U:Landroid/widget/ImageButton;

    .line 501
    .line 502
    const p1, 0x7f0b0126

    .line 503
    .line 504
    .line 505
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    check-cast p1, Landroid/widget/ImageButton;

    .line 510
    .line 511
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->S:Landroid/widget/ImageButton;

    .line 512
    .line 513
    const p1, 0x7f0b0128

    .line 514
    .line 515
    .line 516
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    check-cast p1, Landroid/widget/ImageButton;

    .line 521
    .line 522
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->V:Landroid/widget/ImageButton;

    .line 523
    .line 524
    const p1, 0x7f0b0129

    .line 525
    .line 526
    .line 527
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 528
    .line 529
    .line 530
    move-result-object p1

    .line 531
    check-cast p1, Landroid/widget/ImageButton;

    .line 532
    .line 533
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->W:Landroid/widget/ImageButton;

    .line 534
    .line 535
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 536
    .line 537
    .line 538
    const p1, 0x7f0b02d6

    .line 539
    .line 540
    .line 541
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 542
    .line 543
    .line 544
    move-result-object p1

    .line 545
    check-cast p1, Landroid/widget/FrameLayout;

    .line 546
    .line 547
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->n0:Landroid/widget/FrameLayout;

    .line 548
    .line 549
    const p1, 0x7f0b00f3

    .line 550
    .line 551
    .line 552
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 553
    .line 554
    .line 555
    move-result-object p1

    .line 556
    check-cast p1, Landroid/widget/Button;

    .line 557
    .line 558
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->o0:Landroid/widget/Button;

    .line 559
    .line 560
    const p1, 0x7f0b00bb

    .line 561
    .line 562
    .line 563
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 564
    .line 565
    .line 566
    move-result-object p1

    .line 567
    check-cast p1, Landroid/widget/Button;

    .line 568
    .line 569
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->p0:Landroid/widget/Button;

    .line 570
    .line 571
    const p1, 0x7f0b0338

    .line 572
    .line 573
    .line 574
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 575
    .line 576
    .line 577
    move-result-object p1

    .line 578
    check-cast p1, Landroid/widget/ListView;

    .line 579
    .line 580
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->q0:Landroid/widget/ListView;

    .line 581
    .line 582
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->n0:Landroid/widget/FrameLayout;

    .line 583
    .line 584
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 585
    .line 586
    .line 587
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->o0:Landroid/widget/Button;

    .line 588
    .line 589
    new-instance v8, Lb7/x;

    .line 590
    .line 591
    invoke-direct {v8, p0, v4}, Lb7/x;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {p1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    .line 596
    .line 597
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->p0:Landroid/widget/Button;

    .line 598
    .line 599
    new-instance v8, Lb7/x;

    .line 600
    .line 601
    invoke-direct {v8, p0, v5}, Lb7/x;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {p1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    .line 606
    .line 607
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 608
    .line 609
    .line 610
    move-result-object p1

    .line 611
    invoke-virtual {p1, v2, v3}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object p1

    .line 615
    const-string v8, "VOD"

    .line 616
    .line 617
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    move-result p1

    .line 621
    if-eqz p1, :cond_7

    .line 622
    .line 623
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->W:Landroid/widget/ImageButton;

    .line 624
    .line 625
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 626
    .line 627
    .line 628
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 629
    .line 630
    .line 631
    move-result-object p1

    .line 632
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 633
    .line 634
    .line 635
    move-result-object p1

    .line 636
    const-string v9, "forFavorNot"

    .line 637
    .line 638
    invoke-virtual {p1, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object p1

    .line 642
    iput-object p1, p0, Lpe/hf/black20/ChannelListActivity;->h0:Ljava/lang/String;

    .line 643
    .line 644
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->H:Landroid/content/SharedPreferences;

    .line 645
    .line 646
    const-string v9, "time_format"

    .line 647
    .line 648
    invoke-interface {p1, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 649
    .line 650
    .line 651
    move-result p1

    .line 652
    if-eqz p1, :cond_8

    .line 653
    .line 654
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->H:Landroid/content/SharedPreferences;

    .line 655
    .line 656
    invoke-interface {p1, v9, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object p1

    .line 660
    const-string v9, "24"

    .line 661
    .line 662
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    move-result p1

    .line 666
    if-eqz p1, :cond_8

    .line 667
    .line 668
    iput-object v9, p0, Lpe/hf/black20/ChannelListActivity;->k0:Ljava/lang/String;

    .line 669
    .line 670
    :cond_8
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->S:Landroid/widget/ImageButton;

    .line 671
    .line 672
    new-instance v9, Lb7/x;

    .line 673
    .line 674
    const/4 v10, 0x2

    .line 675
    invoke-direct {v9, p0, v10}, Lb7/x;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {p1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    .line 680
    .line 681
    sget-object p1, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 682
    .line 683
    const-string v9, "default"

    .line 684
    .line 685
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    move-result p1

    .line 689
    if-nez p1, :cond_a

    .line 690
    .line 691
    sget-object p1, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 692
    .line 693
    const-string v9, "ASC"

    .line 694
    .line 695
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 696
    .line 697
    .line 698
    move-result p1

    .line 699
    if-eqz p1, :cond_9

    .line 700
    .line 701
    goto :goto_2

    .line 702
    :cond_9
    sget-object p1, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 703
    .line 704
    const-string v9, "DESC"

    .line 705
    .line 706
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    move-result p1

    .line 710
    if-eqz p1, :cond_b

    .line 711
    .line 712
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->V:Landroid/widget/ImageButton;

    .line 713
    .line 714
    const v9, 0x7f080578

    .line 715
    .line 716
    .line 717
    invoke-virtual {v0, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 718
    .line 719
    .line 720
    move-result-object v9

    .line 721
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 722
    .line 723
    .line 724
    goto :goto_3

    .line 725
    :cond_a
    :goto_2
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->V:Landroid/widget/ImageButton;

    .line 726
    .line 727
    const v9, 0x7f080575

    .line 728
    .line 729
    .line 730
    invoke-virtual {v0, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 731
    .line 732
    .line 733
    move-result-object v9

    .line 734
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 735
    .line 736
    .line 737
    :cond_b
    :goto_3
    invoke-static {v2, v3, v8}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 738
    .line 739
    .line 740
    move-result p1

    .line 741
    if-nez p1, :cond_c

    .line 742
    .line 743
    const-string p1, "SERIES"

    .line 744
    .line 745
    invoke-static {v2, v3, p1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 746
    .line 747
    .line 748
    move-result p1

    .line 749
    if-eqz p1, :cond_d

    .line 750
    .line 751
    :cond_c
    const-string p1, "NEW"

    .line 752
    .line 753
    sput-object p1, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 754
    .line 755
    :cond_d
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->V:Landroid/widget/ImageButton;

    .line 756
    .line 757
    new-instance v2, Lb7/x;

    .line 758
    .line 759
    const/4 v3, 0x3

    .line 760
    invoke-direct {v2, p0, v3}, Lb7/x;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 764
    .line 765
    .line 766
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->W:Landroid/widget/ImageButton;

    .line 767
    .line 768
    new-instance v2, Lb7/x;

    .line 769
    .line 770
    const/4 v3, 0x4

    .line 771
    invoke-direct {v2, p0, v3}, Lb7/x;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 775
    .line 776
    .line 777
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->U:Landroid/widget/ImageButton;

    .line 778
    .line 779
    new-instance v2, Lb7/x;

    .line 780
    .line 781
    const/4 v8, 0x5

    .line 782
    invoke-direct {v2, p0, v8}, Lb7/x;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 786
    .line 787
    .line 788
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->T:Landroid/widget/ImageButton;

    .line 789
    .line 790
    new-instance v2, Lb7/x;

    .line 791
    .line 792
    const/4 v8, 0x6

    .line 793
    invoke-direct {v2, p0, v8}, Lb7/x;-><init>(Lpe/hf/black20/ChannelListActivity;I)V

    .line 794
    .line 795
    .line 796
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 797
    .line 798
    .line 799
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->a0:Landroid/widget/EditText;

    .line 800
    .line 801
    new-instance v2, Landroidx/leanback/widget/H;

    .line 802
    .line 803
    invoke-direct {v2, p0, v5}, Landroidx/leanback/widget/H;-><init>(Ljava/lang/Object;I)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 807
    .line 808
    .line 809
    const p1, 0x7f0b0297

    .line 810
    .line 811
    .line 812
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 813
    .line 814
    .line 815
    move-result-object p1

    .line 816
    check-cast p1, Landroid/widget/ImageView;

    .line 817
    .line 818
    sget v2, Lpe/hf/black20/ChannelListActivity;->t0:I

    .line 819
    .line 820
    int-to-double v8, v2

    .line 821
    const-wide/high16 v11, 0x3fe8000000000000L    # 0.75

    .line 822
    .line 823
    mul-double v11, v11, v8

    .line 824
    .line 825
    double-to-int v2, v11

    .line 826
    const-wide/high16 v11, 0x3fd0000000000000L    # 0.25

    .line 827
    .line 828
    mul-double v8, v8, v11

    .line 829
    .line 830
    double-to-int v5, v8

    .line 831
    sget v8, Lpe/hf/black20/ChannelListActivity;->s0:I

    .line 832
    .line 833
    div-int/lit8 v9, v8, 0x9

    .line 834
    .line 835
    div-int/2addr v8, v7

    .line 836
    iget-object v7, p0, Lpe/hf/black20/ChannelListActivity;->Z:Landroid/widget/TextView;

    .line 837
    .line 838
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 839
    .line 840
    .line 841
    move-result-object v7

    .line 842
    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 843
    .line 844
    sget v11, Lpe/hf/black20/CategoriesActivity;->K0:I

    .line 845
    .line 846
    div-int/2addr v11, v3

    .line 847
    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 848
    .line 849
    iget-object v11, p0, Lpe/hf/black20/ChannelListActivity;->Z:Landroid/widget/TextView;

    .line 850
    .line 851
    invoke-virtual {v11, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 855
    .line 856
    .line 857
    move-result-object v7

    .line 858
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 859
    .line 860
    int-to-float v9, v9

    .line 861
    sget v11, Lpe/hf/black20/ChannelListActivity;->u0:F

    .line 862
    .line 863
    mul-float v9, v9, v11

    .line 864
    .line 865
    float-to-int v9, v9

    .line 866
    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 867
    .line 868
    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 869
    .line 870
    invoke-virtual {p1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    .line 872
    .line 873
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->c0:Landroid/widget/FrameLayout;

    .line 874
    .line 875
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 876
    .line 877
    .line 878
    move-result-object p1

    .line 879
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 880
    .line 881
    int-to-float v7, v8

    .line 882
    sget v8, Lpe/hf/black20/ChannelListActivity;->u0:F

    .line 883
    .line 884
    mul-float v8, v8, v7

    .line 885
    .line 886
    float-to-int v8, v8

    .line 887
    iput v8, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 888
    .line 889
    iget-object v8, p0, Lpe/hf/black20/ChannelListActivity;->c0:Landroid/widget/FrameLayout;

    .line 890
    .line 891
    invoke-virtual {v8, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 892
    .line 893
    .line 894
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->b0:Landroid/widget/FrameLayout;

    .line 895
    .line 896
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 897
    .line 898
    .line 899
    move-result-object p1

    .line 900
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 901
    .line 902
    int-to-float v5, v5

    .line 903
    sget v8, Lpe/hf/black20/ChannelListActivity;->u0:F

    .line 904
    .line 905
    mul-float v5, v5, v8

    .line 906
    .line 907
    float-to-int v5, v5

    .line 908
    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 909
    .line 910
    mul-float v8, v8, v7

    .line 911
    .line 912
    float-to-int v5, v8

    .line 913
    invoke-virtual {p1, v4, v5, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 914
    .line 915
    .line 916
    iget-object v5, p0, Lpe/hf/black20/ChannelListActivity;->b0:Landroid/widget/FrameLayout;

    .line 917
    .line 918
    invoke-virtual {v5, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 919
    .line 920
    .line 921
    sget-object p1, Lpe/hf/black20/ChannelListActivity;->w0:Landroid/widget/GridView;

    .line 922
    .line 923
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 924
    .line 925
    .line 926
    move-result-object p1

    .line 927
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 928
    .line 929
    int-to-float v5, v2

    .line 930
    sget v8, Lpe/hf/black20/ChannelListActivity;->u0:F

    .line 931
    .line 932
    mul-float v5, v5, v8

    .line 933
    .line 934
    const/high16 v9, 0x41a00000    # 20.0f

    .line 935
    .line 936
    mul-float v9, v9, v8

    .line 937
    .line 938
    sub-float/2addr v5, v9

    .line 939
    float-to-int v5, v5

    .line 940
    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 941
    .line 942
    iget-boolean v5, p0, Lpe/hf/black20/ChannelListActivity;->m0:Z

    .line 943
    .line 944
    const/high16 v11, 0x41200000    # 10.0f

    .line 945
    .line 946
    if-eqz v5, :cond_e

    .line 947
    .line 948
    float-to-int v5, v9

    .line 949
    mul-float v9, v7, v8

    .line 950
    .line 951
    mul-float v8, v8, v11

    .line 952
    .line 953
    add-float/2addr v8, v9

    .line 954
    float-to-int v8, v8

    .line 955
    invoke-virtual {p1, v5, v8, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 956
    .line 957
    .line 958
    goto :goto_4

    .line 959
    :cond_e
    mul-float v5, v7, v8

    .line 960
    .line 961
    mul-float v8, v8, v11

    .line 962
    .line 963
    add-float/2addr v8, v5

    .line 964
    float-to-int v5, v8

    .line 965
    float-to-int v8, v9

    .line 966
    invoke-virtual {p1, v4, v5, v8, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 967
    .line 968
    .line 969
    :goto_4
    sget-object v5, Lpe/hf/black20/ChannelListActivity;->w0:Landroid/widget/GridView;

    .line 970
    .line 971
    invoke-virtual {v5, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    .line 973
    .line 974
    sget-object p1, Lpe/hf/black20/ChannelListActivity;->w0:Landroid/widget/GridView;

    .line 975
    .line 976
    int-to-double v8, v2

    .line 977
    const-wide v11, 0x4018cccccccccccdL    # 6.2

    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    div-double/2addr v8, v11

    .line 983
    sget v2, Lpe/hf/black20/ChannelListActivity;->u0:F

    .line 984
    .line 985
    float-to-double v11, v2

    .line 986
    mul-double v8, v8, v11

    .line 987
    .line 988
    double-to-int v2, v8

    .line 989
    invoke-virtual {p1, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 990
    .line 991
    .line 992
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->n0:Landroid/widget/FrameLayout;

    .line 993
    .line 994
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 995
    .line 996
    .line 997
    move-result-object p1

    .line 998
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 999
    .line 1000
    sget v2, Lpe/hf/black20/ChannelListActivity;->u0:F

    .line 1001
    .line 1002
    mul-float v7, v7, v2

    .line 1003
    .line 1004
    float-to-int v2, v7

    .line 1005
    invoke-virtual {p1, v4, v2, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1006
    .line 1007
    .line 1008
    sget-object p1, Lpe/hf/black20/util/Config;->b:Ljava/lang/String;

    .line 1009
    .line 1010
    const-string v2, "no"

    .line 1011
    .line 1012
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1013
    .line 1014
    .line 1015
    move-result p1

    .line 1016
    if-eqz p1, :cond_f

    .line 1017
    .line 1018
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->H:Landroid/content/SharedPreferences;

    .line 1019
    .line 1020
    const-string v2, "filter_status"

    .line 1021
    .line 1022
    invoke-interface {p1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object p1

    .line 1026
    const-string v4, "No"

    .line 1027
    .line 1028
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1029
    .line 1030
    .line 1031
    move-result p1

    .line 1032
    if-nez p1, :cond_f

    .line 1033
    .line 1034
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->H:Landroid/content/SharedPreferences;

    .line 1035
    .line 1036
    invoke-interface {p1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1037
    .line 1038
    .line 1039
    move-result-object p1

    .line 1040
    const-string v4, ""

    .line 1041
    .line 1042
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1043
    .line 1044
    .line 1045
    move-result p1

    .line 1046
    if-nez p1, :cond_f

    .line 1047
    .line 1048
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->H:Landroid/content/SharedPreferences;

    .line 1049
    .line 1050
    invoke-interface {p1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object p1

    .line 1054
    const-string v2, "null"

    .line 1055
    .line 1056
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1057
    .line 1058
    .line 1059
    move-result p1

    .line 1060
    :cond_f
    invoke-static {}, Lpe/hf/black20/ChannelListActivity;->bi()Ljava/lang/String;

    .line 1061
    .line 1062
    .line 1063
    move-result-object p1

    .line 1064
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v0

    .line 1068
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1073
    .line 1074
    .line 1075
    move-result p1

    .line 1076
    if-nez p1, :cond_10

    .line 1077
    .line 1078
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 1079
    .line 1080
    .line 1081
    :cond_10
    const/16 p1, 0x21

    .line 1082
    .line 1083
    if-lt v1, p1, :cond_11

    .line 1084
    .line 1085
    invoke-virtual {p0}, Lpe/hf/black20/ChannelListActivity;->d()V

    .line 1086
    .line 1087
    .line 1088
    goto :goto_5

    .line 1089
    :cond_11
    const/16 p1, 0x17

    .line 1090
    .line 1091
    const-string v0, "Permission is granted2"

    .line 1092
    .line 1093
    const-string v2, "ContentValues"

    .line 1094
    .line 1095
    if-lt v1, p1, :cond_13

    .line 1096
    .line 1097
    invoke-static {p0}, Lb7/u;->d(Lpe/hf/black20/ChannelListActivity;)I

    .line 1098
    .line 1099
    .line 1100
    move-result p1

    .line 1101
    if-nez p1, :cond_12

    .line 1102
    .line 1103
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {p0}, Lpe/hf/black20/ChannelListActivity;->d()V

    .line 1107
    .line 1108
    .line 1109
    goto :goto_5

    .line 1110
    :cond_12
    const-string p1, "Permission is revoked2"

    .line 1111
    .line 1112
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    .line 1114
    .line 1115
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 1116
    .line 1117
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    .line 1119
    .line 1120
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1121
    .line 1122
    filled-new-array {p1}, [Ljava/lang/String;

    .line 1123
    .line 1124
    .line 1125
    move-result-object p1

    .line 1126
    invoke-static {p0, p1, v10}, LD/c;->D(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1127
    .line 1128
    .line 1129
    goto :goto_5

    .line 1130
    :cond_13
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {p0}, Lpe/hf/black20/ChannelListActivity;->d()V

    .line 1134
    .line 1135
    .line 1136
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
    const-string v2, "ORT_isChannelListActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->l0:Lw0/j;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lpe/hf/black20/ChannelListActivity;->l0:Lw0/j;

    .line 23
    .line 24
    :cond_0
    const-string v0, "default"

    .line 25
    .line 26
    sput-object v0, Lpe/hf/black20/ChannelListActivity;->r0:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->N:Lc7/a;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->P:Lc7/b;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->Q:Lc7/b;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

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
    const-string v2, "ORT_isChannelListActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->l0:Lw0/j;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lpe/hf/black20/ChannelListActivity;->l0:Lw0/j;

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    const/4 v1, 0x4

    .line 6
    const-string v2, "was "

    .line 7
    .line 8
    const-string v3, "Permission: "

    .line 9
    .line 10
    const-string v4, "XCIPTV_TAG"

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-eq p1, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p1, "External storage1"

    .line 20
    .line 21
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    aget p1, p3, v5

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    aget-object p2, p2, v5

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    aget p2, p3, v5

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lpe/hf/black20/ChannelListActivity;->d()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const-string p1, "External storage2"

    .line 64
    .line 65
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    aget p1, p3, v5

    .line 69
    .line 70
    if-nez p1, :cond_3

    .line 71
    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    aget-object p2, p2, v5

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    aget p2, p3, v5

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lpe/hf/black20/ChannelListActivity;->d()V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->I:Landroid/widget/ProgressBar;

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    :goto_0
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
    const-string v1, "ORT_isChannelListActivityVisible"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lpe/hf/black20/ChannelListActivity;->w0:Landroid/widget/GridView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->d0:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string v0, "input_method"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 34
    .line 35
    iget-object v1, p0, Lpe/hf/black20/ChannelListActivity;->a0:Landroid/widget/EditText;

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    new-instance v0, Lw0/j;

    .line 41
    .line 42
    const/4 v1, 0x5

    .line 43
    invoke-direct {v0, p0, v1}, Lw0/j;-><init>(Landroid/app/Activity;I)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lpe/hf/black20/ChannelListActivity;->l0:Lw0/j;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    .line 3
    .line 4
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
    const-string v2, "ORT_isChannelListActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lpe/hf/black20/ChannelListActivity;->e0:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
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
    iget-object p1, p0, Lpe/hf/black20/ChannelListActivity;->G:Lpe/hf/black20/ChannelListActivity;

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
