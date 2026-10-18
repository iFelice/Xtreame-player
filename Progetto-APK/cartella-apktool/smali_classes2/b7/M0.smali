.class public Lb7/M0;
.super LY/s;
.source "SourceFile"


# static fields
.field public static e1:Ljava/lang/String; = ""

.field public static f1:I

.field public static g1:I

.field public static h1:I

.field public static i1:I


# instance fields
.field public C0:Landroid/widget/GridView;

.field public D0:Ljava/util/ArrayList;

.field public E0:Ljava/util/ArrayList;

.field public F0:Landroid/widget/LinearLayout;

.field public G0:Landroid/content/SharedPreferences;

.field public H0:Lc7/a;

.field public I0:Lc7/d;

.field public J0:Lh7/i;

.field public K0:Landroid/widget/ImageButton;

.field public L0:Landroid/widget/ImageButton;

.field public M0:Landroid/widget/ImageButton;

.field public N0:Landroid/widget/ImageButton;

.field public O0:Landroid/widget/ImageButton;

.field public P0:Landroid/widget/ImageButton;

.field public Q0:Landroid/widget/EditText;

.field public R0:Z

.field public S0:I

.field public T0:Landroid/widget/TextView;

.field public U0:Landroid/widget/TextView;

.field public V0:Ljava/lang/String;

.field public W0:Landroid/os/Handler;

.field public X0:Lcom/google/android/gms/internal/cast/X;

.field public Y0:Landroid/widget/ProgressBar;

.field public Z0:Landroid/widget/ImageView;

.field public a1:Landroid/widget/FrameLayout;

.field public b1:Landroid/widget/Button;

.field public c1:Landroid/widget/Button;

.field public d1:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LY/s;-><init>()V

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
    iput-object v0, p0, Lb7/M0;->D0:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lb7/M0;->R0:Z

    .line 13
    .line 14
    iput v0, p0, Lb7/M0;->S0:I

    .line 15
    .line 16
    const-string v0, "12"

    .line 17
    .line 18
    iput-object v0, p0, Lb7/M0;->V0:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v0, Landroid/os/Handler;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lb7/M0;->W0:Landroid/os/Handler;

    .line 26
    .line 27
    return-void
.end method

.method public static S(Lb7/M0;)V
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
    iget-object v0, p0, Lb7/M0;->I0:Lc7/d;

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
    iget-object v0, p0, Lb7/M0;->a1:Landroid/widget/FrameLayout;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Lb7/M;

    .line 84
    .line 85
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-direct {v0, v2, v3, v1}, Lb7/M;-><init>(ILandroid/content/Context;Ljava/util/ArrayList;)V

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lb7/M0;->d1:Landroid/widget/ListView;

    .line 93
    .line 94
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lb7/M0;->d1:Landroid/widget/ListView;

    .line 98
    .line 99
    const/4 v2, 0x1

    .line 100
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lb7/M0;->c1:Landroid/widget/Button;

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lb7/M0;->c1:Landroid/widget/Button;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lb7/M0;->d1:Landroid/widget/ListView;

    .line 114
    .line 115
    new-instance v2, Lf/f;

    .line 116
    .line 117
    const/4 v3, 0x4

    .line 118
    invoke-direct {v2, v3, p0, v1}, Lf/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lb7/M0;->d1:Landroid/widget/ListView;

    .line 125
    .line 126
    new-instance v2, Lb7/w;

    .line 127
    .line 128
    const/4 v3, 0x2

    .line 129
    invoke-direct {v2, p0, v1, v3}, Lb7/w;-><init>(Ljava/lang/Object;Ljava/util/ArrayList;I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LY/s;->k0:Z

    .line 3
    .line 4
    return-void
.end method

.method public final D()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LY/s;->k0:Z

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
    const-string v2, "ORT_isORPlayerTVFragmentVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final E()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LY/s;->k0:Z

    .line 3
    .line 4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "ORT_isORPlayerTVFragmentVisible"

    .line 9
    .line 10
    invoke-virtual {v1, v2, v0}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lb7/M0;->G0:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    const-string v1, "xciptv_profile"

    .line 16
    .line 17
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const-string v2, "ORT_PROFILE"

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v3, p0, Lb7/M0;->G0:Landroid/content/SharedPreferences;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v2, v1}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lb7/M0;->H0:Lc7/a;

    .line 40
    .line 41
    const-string v1, "Default (XC)"

    .line 42
    .line 43
    invoke-static {v2, v1, v0}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lb7/M0;->J0:Lh7/i;

    .line 48
    .line 49
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lb7/M0;->J0:Lh7/i;

    .line 54
    .line 55
    iget-object v1, v1, Lh7/i;->a:Ljava/lang/String;

    .line 56
    .line 57
    const-string v2, "ORT_PROFILE_ID"

    .line 58
    .line 59
    invoke-virtual {v0, v2, v1}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 60
    .line 61
    .line 62
    sget-boolean v0, Lpe/hf/black20/ORPlayerMainActivity;->I0:Z

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    const-string v0, "XCIPTV_TAG"

    .line 67
    .line 68
    const-string v1, "--------(ORPlayerHomeActivity.isDataReloadRequired-----------Yes"

    .line 69
    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    sput-boolean v0, Lpe/hf/black20/ORPlayerMainActivity;->I0:Z

    .line 75
    .line 76
    invoke-virtual {p0}, Lb7/M0;->T()V

    .line 77
    .line 78
    .line 79
    :cond_1
    iget-object v0, p0, Lb7/M0;->C0:Landroid/widget/GridView;

    .line 80
    .line 81
    iget v1, p0, Lb7/M0;->S0:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lb7/M0;->C0:Landroid/widget/GridView;

    .line 87
    .line 88
    const v1, 0x7f080906

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelector(I)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final H()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LY/s;->k0:Z

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
    const-string v2, "ORT_isORPlayerTVFragmentVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final T()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lb7/M0;->Y0:Landroid/widget/ProgressBar;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lb7/M0;->Z0:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lb7/M0;->D0:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, LY/s;->l()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v4, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v4, Lc7/b;

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    invoke-direct {v4, v1, v5}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 37
    .line 38
    .line 39
    new-instance v5, Lc7/d;

    .line 40
    .line 41
    invoke-direct {v5, v1}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    new-instance v6, Lc7/b;

    .line 45
    .line 46
    invoke-direct {v6, v1, v2}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 47
    .line 48
    .line 49
    const-string v7, "pe.hf.black20"

    .line 50
    .line 51
    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v7, "ORT_WHICH_CAT"

    .line 56
    .line 57
    const-string v8, "TV"

    .line 58
    .line 59
    const-string v9, "CATCHUP"

    .line 60
    .line 61
    invoke-static {v7, v8, v9}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-eqz v9, :cond_0

    .line 66
    .line 67
    invoke-virtual {v5}, Lc7/d;->i0()Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const-string v9, "RADIO"

    .line 73
    .line 74
    invoke-static {v7, v8, v9}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_1

    .line 79
    .line 80
    invoke-virtual {v5}, Lc7/d;->m0()Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v5}, Lc7/d;->q0()Ljava/util/ArrayList;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    :goto_0
    sget-object v7, Lpe/hf/black20/util/Config;->b:Ljava/lang/String;

    .line 90
    .line 91
    const-string v9, "no"

    .line 92
    .line 93
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    const-string v9, ""

    .line 98
    .line 99
    const-string v10, "Yes"

    .line 100
    .line 101
    const-string v11, "No"

    .line 102
    .line 103
    if-eqz v7, :cond_3

    .line 104
    .line 105
    const-string v7, "filter_status"

    .line 106
    .line 107
    const/4 v12, 0x0

    .line 108
    invoke-interface {v1, v7, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v13

    .line 112
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    if-nez v13, :cond_3

    .line 117
    .line 118
    invoke-interface {v1, v7, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v13

    .line 126
    if-nez v13, :cond_3

    .line 127
    .line 128
    invoke-interface {v1, v7, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const-string v7, "null"

    .line 133
    .line 134
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_2

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    move-object v11, v10

    .line 142
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 143
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    const-string v12, "category_name"

    .line 148
    .line 149
    const-string v13, "category_id"

    .line 150
    .line 151
    const-string v14, "parent_id"

    .line 152
    .line 153
    if-ge v1, v7, :cond_9

    .line 154
    .line 155
    const-string v7, "ORT_PARENTAL_CONTROL_STATUS"

    .line 156
    .line 157
    const-string v15, "locked"

    .line 158
    .line 159
    invoke-static {v7, v15, v15}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    const-string v15, "Live"

    .line 164
    .line 165
    const-string v2, "yes"

    .line 166
    .line 167
    if-eqz v7, :cond_6

    .line 168
    .line 169
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    check-cast v7, Lh7/a;

    .line 174
    .line 175
    iget-object v7, v7, Lh7/a;->a:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    move-object/from16 v16, v3

    .line 182
    .line 183
    const-string v3, "ORT_PROFILE_ID"

    .line 184
    .line 185
    invoke-virtual {v0, v3, v9}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v4, v7, v8, v0}, Lc7/b;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-nez v0, :cond_4

    .line 198
    .line 199
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_5

    .line 204
    .line 205
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    check-cast v0, Lh7/a;

    .line 210
    .line 211
    iget-object v0, v0, Lh7/a;->b:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v6, v0, v15}, Lc7/b;->c0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_4

    .line 222
    .line 223
    new-instance v0, Ljava/util/HashMap;

    .line 224
    .line 225
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    check-cast v2, Lh7/a;

    .line 233
    .line 234
    iget-object v2, v2, Lh7/a;->a:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    check-cast v2, Lh7/a;

    .line 244
    .line 245
    iget-object v2, v2, Lh7/a;->b:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v0, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    check-cast v2, Lh7/a;

    .line 255
    .line 256
    iget-object v2, v2, Lh7/a;->c:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-object/from16 v3, v16

    .line 262
    .line 263
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    goto/16 :goto_3

    .line 267
    .line 268
    :cond_4
    move-object/from16 v3, v16

    .line 269
    .line 270
    goto/16 :goto_3

    .line 271
    .line 272
    :cond_5
    move-object/from16 v3, v16

    .line 273
    .line 274
    new-instance v0, Ljava/util/HashMap;

    .line 275
    .line 276
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    check-cast v2, Lh7/a;

    .line 284
    .line 285
    iget-object v2, v2, Lh7/a;->a:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    check-cast v2, Lh7/a;

    .line 295
    .line 296
    iget-object v2, v2, Lh7/a;->b:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v0, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    check-cast v2, Lh7/a;

    .line 306
    .line 307
    iget-object v2, v2, Lh7/a;->c:Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_6
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-eqz v0, :cond_7

    .line 321
    .line 322
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    check-cast v0, Lh7/a;

    .line 327
    .line 328
    iget-object v0, v0, Lh7/a;->b:Ljava/lang/String;

    .line 329
    .line 330
    invoke-virtual {v6, v0, v15}, Lc7/b;->c0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_8

    .line 339
    .line 340
    new-instance v0, Ljava/util/HashMap;

    .line 341
    .line 342
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    check-cast v2, Lh7/a;

    .line 350
    .line 351
    iget-object v2, v2, Lh7/a;->a:Ljava/lang/String;

    .line 352
    .line 353
    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    check-cast v2, Lh7/a;

    .line 361
    .line 362
    iget-object v2, v2, Lh7/a;->b:Ljava/lang/String;

    .line 363
    .line 364
    invoke-virtual {v0, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    check-cast v2, Lh7/a;

    .line 372
    .line 373
    iget-object v2, v2, Lh7/a;->c:Ljava/lang/String;

    .line 374
    .line 375
    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    goto :goto_3

    .line 382
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    .line 383
    .line 384
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    check-cast v2, Lh7/a;

    .line 392
    .line 393
    iget-object v2, v2, Lh7/a;->a:Ljava/lang/String;

    .line 394
    .line 395
    invoke-virtual {v0, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    check-cast v2, Lh7/a;

    .line 403
    .line 404
    iget-object v2, v2, Lh7/a;->b:Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {v0, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    check-cast v2, Lh7/a;

    .line 414
    .line 415
    iget-object v2, v2, Lh7/a;->c:Ljava/lang/String;

    .line 416
    .line 417
    invoke-virtual {v0, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 424
    .line 425
    const/4 v2, 0x0

    .line 426
    move-object/from16 v0, p0

    .line 427
    .line 428
    goto/16 :goto_2

    .line 429
    .line 430
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-nez v0, :cond_a

    .line 435
    .line 436
    const-string v0, "0000000000000"

    .line 437
    .line 438
    const-string v1, "NO DATA FOUND!"

    .line 439
    .line 440
    invoke-static {v13, v0, v12, v1}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    const-string v1, "0"

    .line 445
    .line 446
    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    :cond_a
    move-object/from16 v0, p0

    .line 453
    .line 454
    iput-object v3, v0, Lb7/M0;->D0:Ljava/util/ArrayList;

    .line 455
    .line 456
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    if-lez v1, :cond_e

    .line 461
    .line 462
    new-instance v1, Ljava/util/ArrayList;

    .line 463
    .line 464
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 468
    .line 469
    .line 470
    invoke-virtual/range {p0 .. p0}, LY/s;->l()Landroid/content/Context;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    invoke-static {v1}, Lz4/q0;->t(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 475
    .line 476
    .line 477
    iget-object v1, v0, Lb7/M0;->D0:Ljava/util/ArrayList;

    .line 478
    .line 479
    const/4 v2, 0x0

    .line 480
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    check-cast v1, Ljava/util/HashMap;

    .line 485
    .line 486
    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    check-cast v1, Ljava/lang/String;

    .line 491
    .line 492
    sput-object v1, Lb7/M0;->e1:Ljava/lang/String;

    .line 493
    .line 494
    iget-object v1, v0, Lb7/M0;->F0:Landroid/widget/LinearLayout;

    .line 495
    .line 496
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 497
    .line 498
    .line 499
    sget v1, Lb7/M0;->h1:I

    .line 500
    .line 501
    mul-int/lit8 v2, v1, 0xa

    .line 502
    .line 503
    mul-int/lit8 v1, v1, 0x23

    .line 504
    .line 505
    const/4 v3, 0x0

    .line 506
    :goto_4
    iget-object v4, v0, Lb7/M0;->D0:Ljava/util/ArrayList;

    .line 507
    .line 508
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 509
    .line 510
    .line 511
    move-result v4

    .line 512
    if-ge v3, v4, :cond_d

    .line 513
    .line 514
    new-instance v4, Landroid/widget/Button;

    .line 515
    .line 516
    invoke-virtual/range {p0 .. p0}, LY/s;->l()Landroid/content/Context;

    .line 517
    .line 518
    .line 519
    move-result-object v5

    .line 520
    invoke-direct {v4, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 521
    .line 522
    .line 523
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 524
    .line 525
    const/4 v6, -0x2

    .line 526
    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 527
    .line 528
    .line 529
    const/4 v6, 0x0

    .line 530
    invoke-virtual {v5, v6, v6, v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 531
    .line 532
    .line 533
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 534
    .line 535
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    .line 537
    .line 538
    const/high16 v5, 0x41800000    # 16.0f

    .line 539
    .line 540
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 541
    .line 542
    .line 543
    sget v5, Lb7/M0;->h1:I

    .line 544
    .line 545
    const/4 v7, 0x2

    .line 546
    mul-int/lit8 v5, v5, 0x2

    .line 547
    .line 548
    invoke-virtual {v4, v2, v6, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 549
    .line 550
    .line 551
    const-string v5, "#00000000"

    .line 552
    .line 553
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 554
    .line 555
    .line 556
    move-result v5

    .line 557
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 558
    .line 559
    .line 560
    const/16 v5, 0x11

    .line 561
    .line 562
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 563
    .line 564
    .line 565
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 566
    .line 567
    .line 568
    move-result-object v5

    .line 569
    const-string v8, "ORT_isDemo"

    .line 570
    .line 571
    invoke-virtual {v5, v8, v6}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 572
    .line 573
    .line 574
    move-result v5

    .line 575
    if-eqz v5, :cond_b

    .line 576
    .line 577
    new-instance v5, Ljava/lang/StringBuilder;

    .line 578
    .line 579
    const-string v6, "CATEGORY "

    .line 580
    .line 581
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v6

    .line 588
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v5

    .line 595
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    .line 597
    .line 598
    goto :goto_5

    .line 599
    :cond_b
    iget-object v5, v0, Lb7/M0;->D0:Ljava/util/ArrayList;

    .line 600
    .line 601
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v5

    .line 605
    check-cast v5, Ljava/util/HashMap;

    .line 606
    .line 607
    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v5

    .line 611
    check-cast v5, Ljava/lang/CharSequence;

    .line 612
    .line 613
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    .line 615
    .line 616
    :goto_5
    iget-object v5, v0, Lb7/M0;->D0:Ljava/util/ArrayList;

    .line 617
    .line 618
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v5

    .line 622
    check-cast v5, Ljava/util/HashMap;

    .line 623
    .line 624
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v5

    .line 628
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual/range {p0 .. p0}, LY/s;->l()Landroid/content/Context;

    .line 632
    .line 633
    .line 634
    move-result-object v5

    .line 635
    const v6, 0x7f090004

    .line 636
    .line 637
    .line 638
    invoke-static {v5, v6}, LF/n;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 639
    .line 640
    .line 641
    move-result-object v5

    .line 642
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 643
    .line 644
    .line 645
    if-nez v3, :cond_c

    .line 646
    .line 647
    invoke-virtual/range {p0 .. p0}, LY/s;->l()Landroid/content/Context;

    .line 648
    .line 649
    .line 650
    move-result-object v5

    .line 651
    const v6, 0x7f090001

    .line 652
    .line 653
    .line 654
    invoke-static {v5, v6}, LF/n;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 655
    .line 656
    .line 657
    move-result-object v5

    .line 658
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 659
    .line 660
    .line 661
    :cond_c
    iget-object v5, v0, Lb7/M0;->F0:Landroid/widget/LinearLayout;

    .line 662
    .line 663
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 664
    .line 665
    .line 666
    iget-object v5, v0, Lb7/M0;->D0:Ljava/util/ArrayList;

    .line 667
    .line 668
    const/4 v6, 0x0

    .line 669
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v5

    .line 673
    check-cast v5, Ljava/util/HashMap;

    .line 674
    .line 675
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v5

    .line 679
    check-cast v5, Ljava/lang/String;

    .line 680
    .line 681
    sput-object v5, Lb7/M0;->e1:Ljava/lang/String;

    .line 682
    .line 683
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 684
    .line 685
    .line 686
    move-result-object v5

    .line 687
    iget-object v8, v0, Lb7/M0;->D0:Ljava/util/ArrayList;

    .line 688
    .line 689
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v8

    .line 693
    check-cast v8, Ljava/util/HashMap;

    .line 694
    .line 695
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v8

    .line 699
    check-cast v8, Ljava/lang/String;

    .line 700
    .line 701
    const-string v9, "ORT_CAT_NAME"

    .line 702
    .line 703
    invoke-virtual {v5, v9, v8}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 704
    .line 705
    .line 706
    new-instance v5, Lb7/J0;

    .line 707
    .line 708
    invoke-direct {v5, v0, v7}, Lb7/J0;-><init>(Lb7/M0;I)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    .line 713
    .line 714
    new-instance v5, Lb7/j0;

    .line 715
    .line 716
    const/4 v7, 0x7

    .line 717
    invoke-direct {v5, v7, v0, v4}, Lb7/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 721
    .line 722
    .line 723
    add-int/lit8 v3, v3, 0x1

    .line 724
    .line 725
    goto/16 :goto_4

    .line 726
    .line 727
    :cond_d
    const-string v1, "none"

    .line 728
    .line 729
    const-string v2, "all"

    .line 730
    .line 731
    invoke-virtual {v0, v1, v2}, Lb7/M0;->U(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    goto :goto_6

    .line 735
    :cond_e
    iget-object v1, v0, Lb7/M0;->Y0:Landroid/widget/ProgressBar;

    .line 736
    .line 737
    const/16 v2, 0x8

    .line 738
    .line 739
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 740
    .line 741
    .line 742
    iget-object v1, v0, Lb7/M0;->Z0:Landroid/widget/ImageView;

    .line 743
    .line 744
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 745
    .line 746
    .line 747
    :goto_6
    return-void
.end method

.method public final U(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "default"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lz4/q0;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v2, p0, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 19
    .line 20
    .line 21
    const-string v2, "none"

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x1

    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const-string v0, "all"

    .line 36
    .line 37
    sget-object v2, Lb7/M0;->e1:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p2, v4, v0, v1, v2}, Lz4/q0;->u(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iput-object p2, p0, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v2, "fav"

    .line 47
    .line 48
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    iput-object v0, p0, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string v0, "search"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v2, "0"

    .line 70
    .line 71
    invoke-static {v0, v3, p2, v1, v2}, Lz4/q0;->u(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iput-object p2, p0, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 76
    .line 77
    :cond_2
    :goto_0
    new-instance p2, Lb7/L0;

    .line 78
    .line 79
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p0, Lb7/M0;->E0:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {p2, p0, v0, v1}, Lb7/L0;-><init>(Lb7/M0;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lb7/M0;->C0:Landroid/widget/GridView;

    .line 89
    .line 90
    invoke-virtual {v0, p2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    .line 92
    .line 93
    iget-object p2, p0, Lb7/M0;->C0:Landroid/widget/GridView;

    .line 94
    .line 95
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 96
    .line 97
    .line 98
    iget-object p2, p0, Lb7/M0;->C0:Landroid/widget/GridView;

    .line 99
    .line 100
    invoke-virtual {p2, v4}, Landroid/widget/GridView;->setSelection(I)V

    .line 101
    .line 102
    .line 103
    iget-object p2, p0, Lb7/M0;->C0:Landroid/widget/GridView;

    .line 104
    .line 105
    const v0, 0x7f080906

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v0}, Landroid/widget/AbsListView;->setSelector(I)V

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Lb7/M0;->C0:Landroid/widget/GridView;

    .line 112
    .line 113
    new-instance v0, Lb7/K0;

    .line 114
    .line 115
    invoke-direct {v0, p0, v3}, Lb7/K0;-><init>(Lb7/M0;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 119
    .line 120
    .line 121
    iget-object p2, p0, Lb7/M0;->C0:Landroid/widget/GridView;

    .line 122
    .line 123
    new-instance v0, Lb7/F;

    .line 124
    .line 125
    const/4 v1, 0x4

    .line 126
    invoke-direct {v0, p0, v1}, Lb7/F;-><init>(Ljava/lang/Object;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 130
    .line 131
    .line 132
    iget-object p2, p0, Lb7/M0;->C0:Landroid/widget/GridView;

    .line 133
    .line 134
    new-instance v0, Lf/f;

    .line 135
    .line 136
    const/4 v1, 0x5

    .line 137
    invoke-direct {v0, v1, p0, p1}, Lf/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lb7/M0;->C0:Landroid/widget/GridView;

    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    new-instance p2, Lk/e;

    .line 150
    .line 151
    const/4 v0, 0x6

    .line 152
    invoke-direct {p2, p0, v0}, Lk/e;-><init>(Ljava/lang/Object;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public final V(Landroid/view/View;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iput-boolean v0, p0, Lb7/M0;->R0:Z

    .line 5
    .line 6
    iget-object p2, p0, Lb7/M0;->Q0:Landroid/widget/EditText;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lb7/M0;->L0:Landroid/widget/ImageButton;

    .line 14
    .line 15
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lb7/M0;->K0:Landroid/widget/ImageButton;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, LY/s;->j()LY/v;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const-string v1, "input_method"

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lb7/M0;->R0:Z

    .line 45
    .line 46
    iget-object p1, p0, Lb7/M0;->Q0:Landroid/widget/EditText;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lb7/M0;->L0:Landroid/widget/ImageButton;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lb7/M0;->Q0:Landroid/widget/EditText;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method public final y(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 1
    const v0, 0x7f0e00f6

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 12
    .line 13
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v2, 0x1e

    .line 17
    .line 18
    if-lt v0, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, LY/s;->j()LY/v;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lb7/Z;->g(LY/v;)Landroid/view/Display;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, LY/s;->j()LY/v;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, LY/s;->j()LY/v;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget v0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 63
    .line 64
    sput v0, Lb7/M0;->f1:I

    .line 65
    .line 66
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 67
    .line 68
    sput v0, Lb7/M0;->g1:I

    .line 69
    .line 70
    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 71
    .line 72
    div-int/lit16 p2, p2, 0xa0

    .line 73
    .line 74
    sput p2, Lb7/M0;->h1:I

    .line 75
    .line 76
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    const-string v0, "pe.hf.black20"

    .line 81
    .line 82
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    iput-object p2, p0, Lb7/M0;->G0:Landroid/content/SharedPreferences;

    .line 87
    .line 88
    new-instance p2, Lc7/d;

    .line 89
    .line 90
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {p2, v0}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    iput-object p2, p0, Lb7/M0;->I0:Lc7/d;

    .line 98
    .line 99
    new-instance p2, Lc7/a;

    .line 100
    .line 101
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-direct {p2, v0, v1}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 106
    .line 107
    .line 108
    iput-object p2, p0, Lb7/M0;->H0:Lc7/a;

    .line 109
    .line 110
    const p2, 0x7f0b0232

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    check-cast p2, Landroid/widget/GridView;

    .line 118
    .line 119
    iput-object p2, p0, Lb7/M0;->C0:Landroid/widget/GridView;

    .line 120
    .line 121
    const p2, 0x7f0b02c7

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    check-cast p2, Landroid/widget/LinearLayout;

    .line 129
    .line 130
    iput-object p2, p0, Lb7/M0;->F0:Landroid/widget/LinearLayout;

    .line 131
    .line 132
    const p2, 0x7f0b011e

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    check-cast p2, Landroid/widget/ImageButton;

    .line 140
    .line 141
    iput-object p2, p0, Lb7/M0;->K0:Landroid/widget/ImageButton;

    .line 142
    .line 143
    const p2, 0x7f0b00c0

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    check-cast p2, Landroid/widget/ImageButton;

    .line 151
    .line 152
    iput-object p2, p0, Lb7/M0;->L0:Landroid/widget/ImageButton;

    .line 153
    .line 154
    const p2, 0x7f0b00d4

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    check-cast p2, Landroid/widget/ImageButton;

    .line 162
    .line 163
    iput-object p2, p0, Lb7/M0;->M0:Landroid/widget/ImageButton;

    .line 164
    .line 165
    const p2, 0x7f0b00ab

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    check-cast p2, Landroid/widget/ImageButton;

    .line 173
    .line 174
    iput-object p2, p0, Lb7/M0;->N0:Landroid/widget/ImageButton;

    .line 175
    .line 176
    const p2, 0x7f0b00c9

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    check-cast p2, Landroid/widget/ImageButton;

    .line 184
    .line 185
    iput-object p2, p0, Lb7/M0;->O0:Landroid/widget/ImageButton;

    .line 186
    .line 187
    const/16 v0, 0x8

    .line 188
    .line 189
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    const p2, 0x7f0b01cd

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    check-cast p2, Landroid/widget/EditText;

    .line 200
    .line 201
    iput-object p2, p0, Lb7/M0;->Q0:Landroid/widget/EditText;

    .line 202
    .line 203
    iget-object p2, p0, Lb7/M0;->L0:Landroid/widget/ImageButton;

    .line 204
    .line 205
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    iget-object p2, p0, Lb7/M0;->Q0:Landroid/widget/EditText;

    .line 209
    .line 210
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    const p2, 0x7f0b0525

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    check-cast p2, Landroid/widget/TextView;

    .line 221
    .line 222
    iput-object p2, p0, Lb7/M0;->T0:Landroid/widget/TextView;

    .line 223
    .line 224
    const p2, 0x7f0b0580

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    check-cast p2, Landroid/widget/TextView;

    .line 232
    .line 233
    iput-object p2, p0, Lb7/M0;->U0:Landroid/widget/TextView;

    .line 234
    .line 235
    const p2, 0x7f0b03d8

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    check-cast p2, Landroid/widget/ProgressBar;

    .line 243
    .line 244
    iput-object p2, p0, Lb7/M0;->Y0:Landroid/widget/ProgressBar;

    .line 245
    .line 246
    const p2, 0x7f0b033e

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    check-cast p2, Landroid/widget/ImageView;

    .line 254
    .line 255
    iput-object p2, p0, Lb7/M0;->Z0:Landroid/widget/ImageView;

    .line 256
    .line 257
    const p2, 0x7f0b00ed

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    check-cast p2, Landroid/widget/ImageButton;

    .line 265
    .line 266
    iput-object p2, p0, Lb7/M0;->P0:Landroid/widget/ImageButton;

    .line 267
    .line 268
    const p2, 0x7f0b02d6

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    check-cast p2, Landroid/widget/FrameLayout;

    .line 276
    .line 277
    iput-object p2, p0, Lb7/M0;->a1:Landroid/widget/FrameLayout;

    .line 278
    .line 279
    const p2, 0x7f0b00f3

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    check-cast p2, Landroid/widget/Button;

    .line 287
    .line 288
    iput-object p2, p0, Lb7/M0;->b1:Landroid/widget/Button;

    .line 289
    .line 290
    const p2, 0x7f0b00bb

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    check-cast p2, Landroid/widget/Button;

    .line 298
    .line 299
    iput-object p2, p0, Lb7/M0;->c1:Landroid/widget/Button;

    .line 300
    .line 301
    const p2, 0x7f0b0338

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    check-cast p2, Landroid/widget/ListView;

    .line 309
    .line 310
    iput-object p2, p0, Lb7/M0;->d1:Landroid/widget/ListView;

    .line 311
    .line 312
    iget-object p2, p0, Lb7/M0;->a1:Landroid/widget/FrameLayout;

    .line 313
    .line 314
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 315
    .line 316
    .line 317
    invoke-static {}, Lpe/hf/black20/util/Methods;->P()Z

    .line 318
    .line 319
    .line 320
    move-result p2

    .line 321
    const/4 v2, 0x7

    .line 322
    const/4 v3, 0x5

    .line 323
    const/4 v4, 0x3

    .line 324
    if-nez p2, :cond_2

    .line 325
    .line 326
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    invoke-static {p2}, Lpe/hf/black20/util/Methods;->T(Landroid/content/Context;)Z

    .line 331
    .line 332
    .line 333
    move-result p2

    .line 334
    if-eqz p2, :cond_1

    .line 335
    .line 336
    goto :goto_1

    .line 337
    :cond_1
    sget p2, Lb7/M0;->f1:I

    .line 338
    .line 339
    sget v5, Lb7/M0;->h1:I

    .line 340
    .line 341
    div-int/2addr p2, v4

    .line 342
    mul-int/lit8 v5, v5, 0xa

    .line 343
    .line 344
    sub-int/2addr p2, v5

    .line 345
    sput p2, Lb7/M0;->i1:I

    .line 346
    .line 347
    iget-object p2, p0, Lb7/M0;->C0:Landroid/widget/GridView;

    .line 348
    .line 349
    invoke-virtual {p2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 350
    .line 351
    .line 352
    goto :goto_2

    .line 353
    :cond_2
    :goto_1
    sget p2, Lb7/M0;->g1:I

    .line 354
    .line 355
    sget v5, Lb7/M0;->h1:I

    .line 356
    .line 357
    div-int/2addr p2, v0

    .line 358
    mul-int/lit8 v5, v5, 0xa

    .line 359
    .line 360
    sub-int/2addr p2, v5

    .line 361
    sput p2, Lb7/M0;->i1:I

    .line 362
    .line 363
    iget-object p2, p0, Lb7/M0;->C0:Landroid/widget/GridView;

    .line 364
    .line 365
    invoke-virtual {p2, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 366
    .line 367
    .line 368
    :goto_2
    const-string p2, "ORT_WHICH_PANEL"

    .line 369
    .line 370
    const-string v5, "xtreamcodes"

    .line 371
    .line 372
    invoke-static {p2, v5, v5}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 373
    .line 374
    .line 375
    move-result v6

    .line 376
    if-eqz v6, :cond_3

    .line 377
    .line 378
    iget-object p2, p0, Lb7/M0;->O0:Landroid/widget/ImageButton;

    .line 379
    .line 380
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    .line 382
    .line 383
    goto :goto_3

    .line 384
    :cond_3
    const-string v6, "ezserver"

    .line 385
    .line 386
    invoke-static {p2, v5, v6}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 387
    .line 388
    .line 389
    move-result p2

    .line 390
    if-eqz p2, :cond_4

    .line 391
    .line 392
    iget-object p2, p0, Lb7/M0;->O0:Landroid/widget/ImageButton;

    .line 393
    .line 394
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 395
    .line 396
    .line 397
    :cond_4
    :goto_3
    iget-object p2, p0, Lb7/M0;->G0:Landroid/content/SharedPreferences;

    .line 398
    .line 399
    const-string v5, "time_format"

    .line 400
    .line 401
    invoke-interface {p2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 402
    .line 403
    .line 404
    move-result p2

    .line 405
    const/4 v6, 0x0

    .line 406
    if-eqz p2, :cond_5

    .line 407
    .line 408
    iget-object p2, p0, Lb7/M0;->G0:Landroid/content/SharedPreferences;

    .line 409
    .line 410
    invoke-interface {p2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object p2

    .line 414
    const-string v5, "24"

    .line 415
    .line 416
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result p2

    .line 420
    if-eqz p2, :cond_5

    .line 421
    .line 422
    iput-object v5, p0, Lb7/M0;->V0:Ljava/lang/String;

    .line 423
    .line 424
    :cond_5
    iget-object p2, p0, Lb7/M0;->b1:Landroid/widget/Button;

    .line 425
    .line 426
    new-instance v5, Lb7/J0;

    .line 427
    .line 428
    invoke-direct {v5, p0, v4}, Lb7/J0;-><init>(Lb7/M0;I)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    .line 433
    .line 434
    iget-object p2, p0, Lb7/M0;->c1:Landroid/widget/Button;

    .line 435
    .line 436
    new-instance v5, Lb7/J0;

    .line 437
    .line 438
    const/4 v7, 0x4

    .line 439
    invoke-direct {v5, p0, v7}, Lb7/J0;-><init>(Lb7/M0;I)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    .line 444
    .line 445
    iget-object p2, p0, Lb7/M0;->P0:Landroid/widget/ImageButton;

    .line 446
    .line 447
    new-instance v5, Lb7/J0;

    .line 448
    .line 449
    invoke-direct {v5, p0, v3}, Lb7/J0;-><init>(Lb7/M0;I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    .line 454
    .line 455
    iget-object p2, p0, Lb7/M0;->P0:Landroid/widget/ImageButton;

    .line 456
    .line 457
    new-instance v3, Lb7/K0;

    .line 458
    .line 459
    const/4 v5, 0x2

    .line 460
    invoke-direct {v3, p0, v5}, Lb7/K0;-><init>(Lb7/M0;I)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {p2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 464
    .line 465
    .line 466
    iget-object p2, p0, Lb7/M0;->K0:Landroid/widget/ImageButton;

    .line 467
    .line 468
    new-instance v3, Lb7/J0;

    .line 469
    .line 470
    const/4 v5, 0x6

    .line 471
    invoke-direct {v3, p0, v5}, Lb7/J0;-><init>(Lb7/M0;I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    .line 476
    .line 477
    iget-object p2, p0, Lb7/M0;->Q0:Landroid/widget/EditText;

    .line 478
    .line 479
    new-instance v3, Landroidx/leanback/widget/H;

    .line 480
    .line 481
    invoke-direct {v3, p0, v4}, Landroidx/leanback/widget/H;-><init>(Ljava/lang/Object;I)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 485
    .line 486
    .line 487
    iget-object p2, p0, Lb7/M0;->L0:Landroid/widget/ImageButton;

    .line 488
    .line 489
    new-instance v3, Lb7/J0;

    .line 490
    .line 491
    invoke-direct {v3, p0, v2}, Lb7/J0;-><init>(Lb7/M0;I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    .line 496
    .line 497
    iget-object p2, p0, Lb7/M0;->M0:Landroid/widget/ImageButton;

    .line 498
    .line 499
    new-instance v2, Lb7/J0;

    .line 500
    .line 501
    invoke-direct {v2, p0, v0}, Lb7/J0;-><init>(Lb7/M0;I)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    .line 506
    .line 507
    iget-object p2, p0, Lb7/M0;->M0:Landroid/widget/ImageButton;

    .line 508
    .line 509
    new-instance v2, Lb7/l0;

    .line 510
    .line 511
    invoke-direct {v2, p0, v4}, Lb7/l0;-><init>(Ljava/lang/Object;I)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 515
    .line 516
    .line 517
    iget-object p2, p0, Lb7/M0;->N0:Landroid/widget/ImageButton;

    .line 518
    .line 519
    new-instance v2, Lb7/J0;

    .line 520
    .line 521
    invoke-direct {v2, p0, v1}, Lb7/J0;-><init>(Lb7/M0;I)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    .line 526
    .line 527
    iget-object p2, p0, Lb7/M0;->O0:Landroid/widget/ImageButton;

    .line 528
    .line 529
    new-instance v2, Lb7/J0;

    .line 530
    .line 531
    const/4 v3, 0x1

    .line 532
    invoke-direct {v2, p0, v3}, Lb7/J0;-><init>(Lb7/M0;I)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    .line 537
    .line 538
    iget-object p2, p0, Lb7/M0;->O0:Landroid/widget/ImageButton;

    .line 539
    .line 540
    new-instance v2, Lb7/K0;

    .line 541
    .line 542
    invoke-direct {v2, p0, v1}, Lb7/K0;-><init>(Lb7/M0;I)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 546
    .line 547
    .line 548
    iget-object p2, p0, Lb7/M0;->G0:Landroid/content/SharedPreferences;

    .line 549
    .line 550
    const-string v1, "XCIPTV_WHICH_PORTAL_SELECTED"

    .line 551
    .line 552
    invoke-interface {p2, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object p2

    .line 556
    const-string v2, "1"

    .line 557
    .line 558
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result p2

    .line 562
    const-string v2, "No"

    .line 563
    .line 564
    if-eqz p2, :cond_6

    .line 565
    .line 566
    iget-object p2, p0, Lb7/M0;->G0:Landroid/content/SharedPreferences;

    .line 567
    .line 568
    const-string v1, "btn_epg"

    .line 569
    .line 570
    invoke-interface {p2, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object p2

    .line 574
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result p2

    .line 578
    if-eqz p2, :cond_a

    .line 579
    .line 580
    iget-object p2, p0, Lb7/M0;->O0:Landroid/widget/ImageButton;

    .line 581
    .line 582
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 583
    .line 584
    .line 585
    goto/16 :goto_4

    .line 586
    .line 587
    :cond_6
    iget-object p2, p0, Lb7/M0;->G0:Landroid/content/SharedPreferences;

    .line 588
    .line 589
    invoke-interface {p2, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object p2

    .line 593
    const-string v3, "2"

    .line 594
    .line 595
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    move-result p2

    .line 599
    if-eqz p2, :cond_7

    .line 600
    .line 601
    iget-object p2, p0, Lb7/M0;->G0:Landroid/content/SharedPreferences;

    .line 602
    .line 603
    const-string v1, "btn_epg2"

    .line 604
    .line 605
    invoke-interface {p2, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object p2

    .line 609
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result p2

    .line 613
    if-eqz p2, :cond_a

    .line 614
    .line 615
    iget-object p2, p0, Lb7/M0;->O0:Landroid/widget/ImageButton;

    .line 616
    .line 617
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 618
    .line 619
    .line 620
    goto :goto_4

    .line 621
    :cond_7
    iget-object p2, p0, Lb7/M0;->G0:Landroid/content/SharedPreferences;

    .line 622
    .line 623
    invoke-interface {p2, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object p2

    .line 627
    const-string v3, "3"

    .line 628
    .line 629
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    move-result p2

    .line 633
    if-eqz p2, :cond_8

    .line 634
    .line 635
    iget-object p2, p0, Lb7/M0;->G0:Landroid/content/SharedPreferences;

    .line 636
    .line 637
    const-string v1, "btn_epg3"

    .line 638
    .line 639
    invoke-interface {p2, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object p2

    .line 643
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    move-result p2

    .line 647
    if-eqz p2, :cond_a

    .line 648
    .line 649
    iget-object p2, p0, Lb7/M0;->O0:Landroid/widget/ImageButton;

    .line 650
    .line 651
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 652
    .line 653
    .line 654
    goto :goto_4

    .line 655
    :cond_8
    iget-object p2, p0, Lb7/M0;->G0:Landroid/content/SharedPreferences;

    .line 656
    .line 657
    invoke-interface {p2, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object p2

    .line 661
    const-string v3, "4"

    .line 662
    .line 663
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    move-result p2

    .line 667
    if-eqz p2, :cond_9

    .line 668
    .line 669
    iget-object p2, p0, Lb7/M0;->G0:Landroid/content/SharedPreferences;

    .line 670
    .line 671
    const-string v1, "btn_epg4"

    .line 672
    .line 673
    invoke-interface {p2, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object p2

    .line 677
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result p2

    .line 681
    if-eqz p2, :cond_a

    .line 682
    .line 683
    iget-object p2, p0, Lb7/M0;->O0:Landroid/widget/ImageButton;

    .line 684
    .line 685
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 686
    .line 687
    .line 688
    goto :goto_4

    .line 689
    :cond_9
    iget-object p2, p0, Lb7/M0;->G0:Landroid/content/SharedPreferences;

    .line 690
    .line 691
    invoke-interface {p2, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object p2

    .line 695
    const-string v1, "5"

    .line 696
    .line 697
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 698
    .line 699
    .line 700
    move-result p2

    .line 701
    if-eqz p2, :cond_a

    .line 702
    .line 703
    iget-object p2, p0, Lb7/M0;->G0:Landroid/content/SharedPreferences;

    .line 704
    .line 705
    const-string v1, "btn_epg5"

    .line 706
    .line 707
    invoke-interface {p2, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object p2

    .line 711
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 712
    .line 713
    .line 714
    move-result p2

    .line 715
    if-eqz p2, :cond_a

    .line 716
    .line 717
    iget-object p2, p0, Lb7/M0;->O0:Landroid/widget/ImageButton;

    .line 718
    .line 719
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 720
    .line 721
    .line 722
    :cond_a
    :goto_4
    new-instance p2, Landroid/os/Handler;

    .line 723
    .line 724
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 725
    .line 726
    .line 727
    iput-object p2, p0, Lb7/M0;->W0:Landroid/os/Handler;

    .line 728
    .line 729
    new-instance v0, Lcom/google/android/gms/internal/cast/X;

    .line 730
    .line 731
    const/16 v1, 0x13

    .line 732
    .line 733
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 734
    .line 735
    .line 736
    iput-object v0, p0, Lb7/M0;->X0:Lcom/google/android/gms/internal/cast/X;

    .line 737
    .line 738
    const-wide/16 v1, 0x64

    .line 739
    .line 740
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 741
    .line 742
    .line 743
    invoke-virtual {p0}, Lb7/M0;->T()V

    .line 744
    .line 745
    .line 746
    return-object p1
.end method

.method public final z()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LY/s;->k0:Z

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
    const-string v2, "ORT_isORPlayerTVFragmentVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lb7/M0;->X0:Lcom/google/android/gms/internal/cast/X;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lb7/M0;->W0:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
