.class public Lb7/S0;
.super LY/s;
.source "SourceFile"

# interfaces
.implements Lg7/c;


# static fields
.field public static final synthetic z1:I


# instance fields
.field public C0:Landroid/content/SharedPreferences;

.field public D0:Lc7/a;

.field public E0:Lc7/d;

.field public F0:Lh7/i;

.field public G0:I

.field public H0:I

.field public I0:I

.field public J0:I

.field public K0:I

.field public L0:Landroid/widget/ImageButton;

.field public M0:Landroid/widget/ImageButton;

.field public N0:Landroid/widget/ImageButton;

.field public O0:Landroid/widget/ImageButton;

.field public P0:Landroid/widget/ImageButton;

.field public Q0:Landroid/widget/EditText;

.field public R0:Landroid/widget/ImageView;

.field public S0:Landroid/widget/TextView;

.field public T0:Landroid/widget/TextView;

.field public U0:Landroid/widget/TextView;

.field public V0:Landroid/widget/TextView;

.field public W0:Landroid/widget/TextView;

.field public X0:Landroid/widget/TextView;

.field public Y0:Landroid/widget/TextView;

.field public Z0:Landroidx/recyclerview/widget/RecyclerView;

.field public a1:Landroid/os/Handler;

.field public b1:Lcom/google/android/gms/internal/cast/X;

.field public c1:Lorg/json/JSONObject;

.field public final d1:LN2/a;

.field public e1:Ljava/lang/String;

.field public f1:Ljava/lang/String;

.field public g1:Ljava/lang/String;

.field public h1:Z

.field public i1:Z

.field public j1:Z

.field public k1:Ljava/lang/String;

.field public l1:Landroid/widget/ImageView;

.field public m1:Landroid/widget/ProgressBar;

.field public n1:Ljava/lang/Thread;

.field public o1:Ljava/lang/Thread;

.field public p1:Lorg/json/JSONArray;

.field public q1:Lorg/json/JSONArray;

.field public r1:Landroid/widget/FrameLayout;

.field public s1:Landroid/widget/FrameLayout;

.field public t1:Landroid/widget/FrameLayout;

.field public u1:Landroid/widget/FrameLayout;

.field public v1:Landroid/widget/FrameLayout;

.field public w1:Landroid/widget/Button;

.field public x1:Landroid/widget/Button;

.field public y1:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, LY/s;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LN2/a;

    .line 5
    .line 6
    const/16 v1, 0x12c

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v0, v1, v2}, LN2/a;-><init>(IZ)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lb7/S0;->d1:LN2/a;

    .line 13
    .line 14
    const-string v0, "all"

    .line 15
    .line 16
    iput-object v0, p0, Lb7/S0;->e1:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    iput-object v0, p0, Lb7/S0;->f1:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lb7/S0;->g1:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Lb7/S0;->h1:Z

    .line 26
    .line 27
    iput-boolean v1, p0, Lb7/S0;->i1:Z

    .line 28
    .line 29
    iput-boolean v2, p0, Lb7/S0;->j1:Z

    .line 30
    .line 31
    iput-object v0, p0, Lb7/S0;->k1:Ljava/lang/String;

    .line 32
    .line 33
    return-void
.end method

.method public static S(Lb7/S0;)V
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
    iget-object v0, p0, Lb7/S0;->E0:Lc7/d;

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
    iget-object v0, p0, Lb7/S0;->v1:Landroid/widget/FrameLayout;

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
    iget-object v2, p0, Lb7/S0;->y1:Landroid/widget/ListView;

    .line 93
    .line 94
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lb7/S0;->y1:Landroid/widget/ListView;

    .line 98
    .line 99
    new-instance v2, Lf/f;

    .line 100
    .line 101
    const/4 v3, 0x6

    .line 102
    invoke-direct {v2, v3, p0, v1}, Lf/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lb7/S0;->y1:Landroid/widget/ListView;

    .line 109
    .line 110
    new-instance v2, Lb7/w;

    .line 111
    .line 112
    const/4 v3, 0x3

    .line 113
    invoke-direct {v2, p0, v1, v3}, Lb7/w;-><init>(Ljava/lang/Object;Ljava/util/ArrayList;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public static T(Lb7/S0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb7/S0;->S0:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lb7/S0;->V0:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lb7/S0;->W0:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lb7/S0;->Y0:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lb7/S0;->X0:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lb7/S0;->U0:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lb7/S0;->T0:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lb7/S0;->R0:Landroid/widget/ImageView;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static U(Lb7/S0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb7/S0;->b1:Lcom/google/android/gms/internal/cast/X;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lb7/S0;->a1:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lb7/S0;->a1:Landroid/os/Handler;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lb7/S0;->a1:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v1, Lcom/google/android/gms/internal/cast/X;

    .line 24
    .line 25
    const/16 v2, 0x16

    .line 26
    .line 27
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lb7/S0;->b1:Lcom/google/android/gms/internal/cast/X;

    .line 31
    .line 32
    const-wide/16 v2, 0x7d0

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LY/s;->k0:Z

    .line 3
    .line 4
    iget-object v0, p0, Lb7/S0;->b1:Lcom/google/android/gms/internal/cast/X;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lb7/S0;->a1:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lb7/S0;->a1:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
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
    const-string v2, "ORT_isORPlayerVODFragmentVisible"

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
    const-string v2, "ORT_isORPlayerVODFragmentVisible"

    .line 9
    .line 10
    invoke-virtual {v1, v2, v0}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lb7/S0;->C0:Landroid/content/SharedPreferences;

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
    iget-object v3, p0, Lb7/S0;->C0:Landroid/content/SharedPreferences;

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
    iget-object v0, p0, Lb7/S0;->D0:Lc7/a;

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
    iput-object v0, p0, Lb7/S0;->F0:Lh7/i;

    .line 48
    .line 49
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lb7/S0;->F0:Lh7/i;

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
    const/4 v0, 0x0

    .line 67
    sput-boolean v0, Lpe/hf/black20/ORPlayerMainActivity;->I0:Z

    .line 68
    .line 69
    const-string v0, "all"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lb7/S0;->W(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_1
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
    const-string v2, "ORT_isORPlayerVODFragmentVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final V()V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "------calling GetMovieInfoOTR--------------------"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lb7/S0;->f1:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "XCIPTV_TAG"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    new-instance v8, Lorg/json/JSONObject;

    .line 23
    .line 24
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v0, "ORT_VOD_PORTAL"

    .line 28
    .line 29
    const-string v2, "no"

    .line 30
    .line 31
    invoke-static {v0, v2, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3, v0, v2}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lb7/S0;->F0:Lh7/i;

    .line 47
    .line 48
    iget-object v0, v0, Lh7/i;->e:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_0
    iget-object v2, p0, Lb7/S0;->F0:Lh7/i;

    .line 55
    .line 56
    iget-object v2, v2, Lh7/i;->c:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    iget-object v2, p0, Lb7/S0;->F0:Lh7/i;

    .line 63
    .line 64
    iget-object v2, v2, Lh7/i;->d:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    const-string v2, "/panel_pro/api/client/content/"

    .line 71
    .line 72
    invoke-static {v0, v2}, La/r;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v2, p0, Lb7/S0;->g1:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, "/vod/"

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Lb7/S0;->f1:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/i6;

    .line 96
    .line 97
    const-string v6, "otrresponse"

    .line 98
    .line 99
    const/4 v3, 0x0

    .line 100
    move-object v4, p0

    .line 101
    move-object v5, p0

    .line 102
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/i6;-><init>(ILY/s;Lg7/c;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catch_0
    const-string v0, "ORPlayerHomeFragment - OTR Panel Client Devices - VolleyGETStringRequest Error"

    .line 107
    .line 108
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :goto_1
    return-void
.end method

.method public final W(Ljava/lang/String;)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lb7/S0;->i1:Z

    .line 4
    .line 5
    iget-object v2, p0, Lb7/S0;->m1:Landroid/widget/ProgressBar;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-boolean v2, p0, Lb7/S0;->j1:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iput-boolean v0, p0, Lb7/S0;->j1:Z

    .line 15
    .line 16
    iget-object v2, p0, Lb7/S0;->l1:Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lb7/S0;->X()V

    .line 22
    .line 23
    .line 24
    new-array v8, v0, [Lorg/json/JSONArray;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    aput-object v2, v8, v1

    .line 28
    .line 29
    new-instance v2, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    new-array v5, v0, [Ljava/util/ArrayList;

    .line 35
    .line 36
    aput-object v2, v5, v1

    .line 37
    .line 38
    aget-object v2, v5, v1

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 41
    .line 42
    .line 43
    new-instance v2, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    new-array v6, v0, [Ljava/util/ArrayList;

    .line 49
    .line 50
    aput-object v2, v6, v1

    .line 51
    .line 52
    aget-object v2, v6, v1

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 55
    .line 56
    .line 57
    new-instance v2, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    new-array v9, v0, [Ljava/util/ArrayList;

    .line 63
    .line 64
    aput-object v2, v9, v1

    .line 65
    .line 66
    aget-object v2, v9, v1

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 69
    .line 70
    .line 71
    new-instance v2, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    new-array v10, v0, [Ljava/util/ArrayList;

    .line 77
    .line 78
    aput-object v2, v10, v1

    .line 79
    .line 80
    aget-object v2, v10, v1

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 83
    .line 84
    .line 85
    new-instance v2, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    new-array v11, v0, [Ljava/util/ArrayList;

    .line 91
    .line 92
    aput-object v2, v11, v1

    .line 93
    .line 94
    aget-object v2, v11, v1

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 97
    .line 98
    .line 99
    new-instance v2, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    new-array v12, v0, [Ljava/util/ArrayList;

    .line 105
    .line 106
    aput-object v2, v12, v1

    .line 107
    .line 108
    aget-object v0, v12, v1

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    .line 112
    .line 113
    new-instance v0, Ljava/lang/Thread;

    .line 114
    .line 115
    new-instance v1, Lb7/N0;

    .line 116
    .line 117
    move-object v3, v1

    .line 118
    move-object v4, p0

    .line 119
    move-object v7, p1

    .line 120
    invoke-direct/range {v3 .. v12}, Lb7/N0;-><init>(Lb7/S0;[Ljava/util/ArrayList;[Ljava/util/ArrayList;Ljava/lang/String;[Lorg/json/JSONArray;[Ljava/util/ArrayList;[Ljava/util/ArrayList;[Ljava/util/ArrayList;[Ljava/util/ArrayList;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 124
    .line 125
    .line 126
    iput-object v0, p0, Lb7/S0;->o1:Ljava/lang/Thread;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final X()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v4, v1, [Ljava/util/ArrayList;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v0, v4, v2

    .line 11
    .line 12
    aget-object v0, v4, v2

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    new-array v5, v1, [Ljava/util/ArrayList;

    .line 23
    .line 24
    aput-object v0, v5, v2

    .line 25
    .line 26
    aget-object v0, v5, v2

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/lang/Thread;

    .line 32
    .line 33
    new-instance v1, LZ3/v;

    .line 34
    .line 35
    const/16 v6, 0x16

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    move-object v2, v1

    .line 39
    move-object v3, p0

    .line 40
    invoke-direct/range {v2 .. v7}, LZ3/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lb7/S0;->n1:Ljava/lang/Thread;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final Y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb7/S0;->m1:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lb7/S0;->l1:Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final Z(Landroid/view/View;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iput-boolean v0, p0, Lb7/S0;->h1:Z

    .line 5
    .line 6
    iget-object p2, p0, Lb7/S0;->Q0:Landroid/widget/EditText;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lb7/S0;->M0:Landroid/widget/ImageButton;

    .line 14
    .line 15
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lb7/S0;->L0:Landroid/widget/ImageButton;

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
    iput-boolean p1, p0, Lb7/S0;->h1:Z

    .line 45
    .line 46
    iget-object p1, p0, Lb7/S0;->Q0:Landroid/widget/EditText;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lb7/S0;->M0:Landroid/widget/ImageButton;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lb7/S0;->Q0:Landroid/widget/EditText;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method public final a0(Lorg/json/JSONObject;)V
    .locals 12

    .line 1
    const-string v0, "user_score"

    .line 2
    .line 3
    const-string v1, "vod"

    .line 4
    .line 5
    :try_start_0
    const-string v2, "data"

    .line 6
    .line 7
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "background_url"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "preview_icon"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, "trailer_url"

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "directors"

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string v5, "cast"

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const-string v6, "genres"

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 70
    .line 71
    .line 72
    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    const-string v7, ", "

    .line 74
    .line 75
    const-string v8, ""

    .line 76
    .line 77
    const/4 v9, 0x0

    .line 78
    move-object v10, v8

    .line 79
    if-lez v6, :cond_1

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    if-ge v6, v11, :cond_1

    .line 87
    .line 88
    if-nez v6, :cond_0

    .line 89
    .line 90
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    goto :goto_1

    .line 95
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    move-object v6, v8

    .line 125
    if-lez v4, :cond_3

    .line 126
    .line 127
    const/4 v4, 0x0

    .line 128
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 129
    .line 130
    .line 131
    move-result v11

    .line 132
    if-ge v4, v11, :cond_3

    .line 133
    .line 134
    if-nez v4, :cond_2

    .line 135
    .line 136
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    goto :goto_3

    .line 141
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-lez v4, :cond_4

    .line 171
    .line 172
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    goto :goto_4

    .line 177
    :cond_4
    move-object v3, v8

    .line 178
    :goto_4
    iget-object v4, p0, Lb7/S0;->S0:Landroid/widget/TextView;

    .line 179
    .line 180
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    const-string v7, "display_name"

    .line 185
    .line 186
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    iget-object v4, p0, Lb7/S0;->W0:Landroid/widget/TextView;

    .line 194
    .line 195
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    const-string v7, "description"

    .line 200
    .line 201
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    iget-object v4, p0, Lb7/S0;->Y0:Landroid/widget/TextView;

    .line 209
    .line 210
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    iget-object v4, p0, Lb7/S0;->X0:Landroid/widget/TextView;

    .line 214
    .line 215
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    iget-object v3, p0, Lb7/S0;->V0:Landroid/widget/TextView;

    .line 219
    .line 220
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 232
    .line 233
    .line 234
    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 235
    if-lez v4, :cond_5

    .line 236
    .line 237
    const/4 v4, 0x1

    .line 238
    :try_start_2
    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    :goto_5
    if-ge v9, v3, :cond_6

    .line 247
    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v5, "\u2b50"

    .line 257
    .line 258
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    iget-object v4, p0, Lb7/S0;->T0:Landroid/widget/TextView;

    .line 266
    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string v6, " ("

    .line 276
    .line 277
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v6, ")"

    .line 292
    .line 293
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 301
    .line 302
    .line 303
    add-int/lit8 v9, v9, 0x1

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :catch_0
    :try_start_3
    iget-object v3, p0, Lb7/S0;->T0:Landroid/widget/TextView;

    .line 307
    .line 308
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    .line 318
    .line 319
    goto :goto_6

    .line 320
    :cond_5
    iget-object v3, p0, Lb7/S0;->T0:Landroid/widget/TextView;

    .line 321
    .line 322
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    .line 332
    .line 333
    :cond_6
    :goto_6
    iget-object v0, p0, Lb7/S0;->U0:Landroid/widget/TextView;

    .line 334
    .line 335
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    const-string v1, "prime_date"

    .line 340
    .line 341
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 350
    .line 351
    .line 352
    :try_start_4
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    invoke-static {p1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-virtual {p1}, LL2/a;->b()LL2/a;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    check-cast p1, Lcom/bumptech/glide/l;

    .line 369
    .line 370
    iget-object v0, p0, Lb7/S0;->d1:LN2/a;

    .line 371
    .line 372
    invoke-static {v0}, LG2/c;->b(LN2/a;)LG2/c;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    const v0, 0x7f08053b

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1, v0}, LL2/a;->f(I)LL2/a;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    check-cast p1, Lcom/bumptech/glide/l;

    .line 388
    .line 389
    invoke-virtual {p1, v0}, LL2/a;->m(I)LL2/a;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    check-cast p1, Lcom/bumptech/glide/l;

    .line 394
    .line 395
    iget-object v0, p0, Lb7/S0;->R0:Landroid/widget/ImageView;

    .line 396
    .line 397
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 398
    .line 399
    .line 400
    goto :goto_7

    .line 401
    :catch_1
    :try_start_5
    const-string p1, "XCIPTV_TAG"

    .line 402
    .line 403
    const-string v0, "Picasso Crashed"

    .line 404
    .line 405
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 406
    .line 407
    .line 408
    :catch_2
    :goto_7
    return-void
.end method

.method public final b0(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    const-string v0, "access_token"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "data"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v1, "refresh_token"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lb7/S0;->C0:Landroid/content/SharedPreferences;

    .line 26
    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v2, "otr_refresh_token"

    .line 32
    .line 33
    invoke-static {v1}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    const-string v1, "otr_access_token"

    .line 41
    .line 42
    invoke-static {p1}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    .line 48
    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lb7/S0;->V()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    :catch_0
    :cond_0
    return-void
.end method

.method public final e(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p2, "otrresponse"

    .line 5
    .line 6
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p2, "XCIPTV_TAG"

    .line 14
    .line 15
    const-string p3, "ORPlayerHomeFragment -- onFailureJsonFastoGT renewToken"

    .line 16
    .line 17
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/16 p2, 0x191

    .line 21
    .line 22
    if-ne p1, p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1, p0, p0}, LS3/e;->m(Landroid/content/Context;LY/s;Lg7/c;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public final g(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "renewToken"

    .line 5
    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "XCIPTV_TAG"

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const-string v0, "otrresponse"

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lb7/S0;->a0(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    const-string p1, "ORPlayerHomeFragment -- loginCheckOTR"

    .line 28
    .line 29
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lb7/S0;->b0(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_1
    const-string p1, "ORPlayerHomeFragment -- renew Token"

    .line 38
    .line 39
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public final y(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 1
    const v0, 0x7f0e00f7

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
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const-string v0, "VOD"

    .line 14
    .line 15
    const-string v2, "ORT_WHICH_CAT"

    .line 16
    .line 17
    invoke-virtual {p2, v2, v0}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v0, "pe.hf.black20"

    .line 25
    .line 26
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iput-object p2, p0, Lb7/S0;->C0:Landroid/content/SharedPreferences;

    .line 31
    .line 32
    new-instance p2, Lc7/d;

    .line 33
    .line 34
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p2, v0}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lb7/S0;->E0:Lc7/d;

    .line 42
    .line 43
    new-instance p2, Lc7/a;

    .line 44
    .line 45
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p2, v0, v1}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Lb7/S0;->D0:Lc7/a;

    .line 53
    .line 54
    new-instance p2, Landroid/util/DisplayMetrics;

    .line 55
    .line 56
    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 57
    .line 58
    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 60
    .line 61
    const/16 v2, 0x1e

    .line 62
    .line 63
    if-lt v0, v2, :cond_0

    .line 64
    .line 65
    invoke-virtual {p0}, LY/s;->j()LY/v;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Lb7/Z;->g(LY/v;)Landroid/view/Display;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, LY/s;->j()LY/v;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, LY/s;->j()LY/v;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 105
    .line 106
    .line 107
    :goto_0
    iget v0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 108
    .line 109
    iput v0, p0, Lb7/S0;->G0:I

    .line 110
    .line 111
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 112
    .line 113
    iput v0, p0, Lb7/S0;->H0:I

    .line 114
    .line 115
    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 116
    .line 117
    div-int/lit16 p2, p2, 0xa0

    .line 118
    .line 119
    iput p2, p0, Lb7/S0;->I0:I

    .line 120
    .line 121
    invoke-static {}, Lpe/hf/black20/util/Methods;->P()Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    const/16 v0, 0x8

    .line 126
    .line 127
    const/4 v2, 0x3

    .line 128
    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    .line 129
    .line 130
    if-nez p2, :cond_2

    .line 131
    .line 132
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-static {p2}, Lpe/hf/black20/util/Methods;->T(Landroid/content/Context;)Z

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-eqz p2, :cond_1

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_1
    iget p2, p0, Lb7/S0;->G0:I

    .line 144
    .line 145
    div-int/2addr p2, v2

    .line 146
    iget v5, p0, Lb7/S0;->I0:I

    .line 147
    .line 148
    mul-int/lit8 v5, v5, 0xa

    .line 149
    .line 150
    sub-int/2addr p2, v5

    .line 151
    int-to-double v5, p2

    .line 152
    mul-double v5, v5, v3

    .line 153
    .line 154
    double-to-int v3, v5

    .line 155
    iput v3, p0, Lb7/S0;->K0:I

    .line 156
    .line 157
    iput p2, p0, Lb7/S0;->J0:I

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_2
    :goto_1
    iget p2, p0, Lb7/S0;->H0:I

    .line 161
    .line 162
    div-int/2addr p2, v0

    .line 163
    iget v5, p0, Lb7/S0;->I0:I

    .line 164
    .line 165
    mul-int/lit8 v5, v5, 0xa

    .line 166
    .line 167
    sub-int/2addr p2, v5

    .line 168
    int-to-double v5, p2

    .line 169
    mul-double v5, v5, v3

    .line 170
    .line 171
    double-to-int v3, v5

    .line 172
    iput v3, p0, Lb7/S0;->K0:I

    .line 173
    .line 174
    iput p2, p0, Lb7/S0;->J0:I

    .line 175
    .line 176
    :goto_2
    const p2, 0x7f0b0584

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    check-cast p2, Landroid/widget/TextView;

    .line 184
    .line 185
    iput-object p2, p0, Lb7/S0;->S0:Landroid/widget/TextView;

    .line 186
    .line 187
    const p2, 0x7f0b0569

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    check-cast p2, Landroid/widget/TextView;

    .line 195
    .line 196
    iput-object p2, p0, Lb7/S0;->T0:Landroid/widget/TextView;

    .line 197
    .line 198
    const p2, 0x7f0b052b

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    check-cast p2, Landroid/widget/TextView;

    .line 206
    .line 207
    iput-object p2, p0, Lb7/S0;->U0:Landroid/widget/TextView;

    .line 208
    .line 209
    const p2, 0x7f0b053f

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    check-cast p2, Landroid/widget/TextView;

    .line 217
    .line 218
    iput-object p2, p0, Lb7/S0;->V0:Landroid/widget/TextView;

    .line 219
    .line 220
    const p2, 0x7f0b0564

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    check-cast p2, Landroid/widget/TextView;

    .line 228
    .line 229
    iput-object p2, p0, Lb7/S0;->W0:Landroid/widget/TextView;

    .line 230
    .line 231
    const p2, 0x7f0b052a

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    check-cast p2, Landroid/widget/TextView;

    .line 239
    .line 240
    iput-object p2, p0, Lb7/S0;->X0:Landroid/widget/TextView;

    .line 241
    .line 242
    const p2, 0x7f0b050e

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    check-cast p2, Landroid/widget/TextView;

    .line 250
    .line 251
    iput-object p2, p0, Lb7/S0;->Y0:Landroid/widget/TextView;

    .line 252
    .line 253
    const p2, 0x7f0b01ce

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    check-cast p2, Landroid/widget/EditText;

    .line 261
    .line 262
    iput-object p2, p0, Lb7/S0;->Q0:Landroid/widget/EditText;

    .line 263
    .line 264
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 265
    .line 266
    .line 267
    const p2, 0x7f0b0120

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    check-cast p2, Landroid/widget/ImageButton;

    .line 275
    .line 276
    iput-object p2, p0, Lb7/S0;->L0:Landroid/widget/ImageButton;

    .line 277
    .line 278
    const p2, 0x7f0b00c1

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    check-cast p2, Landroid/widget/ImageButton;

    .line 286
    .line 287
    iput-object p2, p0, Lb7/S0;->M0:Landroid/widget/ImageButton;

    .line 288
    .line 289
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 290
    .line 291
    .line 292
    const p2, 0x7f0b00c3

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    check-cast p2, Landroid/widget/ImageButton;

    .line 300
    .line 301
    iput-object p2, p0, Lb7/S0;->N0:Landroid/widget/ImageButton;

    .line 302
    .line 303
    const p2, 0x7f0b00d5

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    check-cast p2, Landroid/widget/ImageButton;

    .line 311
    .line 312
    iput-object p2, p0, Lb7/S0;->O0:Landroid/widget/ImageButton;

    .line 313
    .line 314
    const p2, 0x7f0b00ac

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    check-cast p2, Landroid/widget/ImageButton;

    .line 322
    .line 323
    iput-object p2, p0, Lb7/S0;->P0:Landroid/widget/ImageButton;

    .line 324
    .line 325
    const p2, 0x7f0b02c0

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object p2

    .line 332
    check-cast p2, Landroid/widget/FrameLayout;

    .line 333
    .line 334
    iput-object p2, p0, Lb7/S0;->r1:Landroid/widget/FrameLayout;

    .line 335
    .line 336
    const p2, 0x7f0b02f0

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object p2

    .line 343
    check-cast p2, Landroid/widget/FrameLayout;

    .line 344
    .line 345
    iput-object p2, p0, Lb7/S0;->s1:Landroid/widget/FrameLayout;

    .line 346
    .line 347
    const p2, 0x7f0b02fa

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 351
    .line 352
    .line 353
    move-result-object p2

    .line 354
    check-cast p2, Landroid/widget/FrameLayout;

    .line 355
    .line 356
    iput-object p2, p0, Lb7/S0;->t1:Landroid/widget/FrameLayout;

    .line 357
    .line 358
    const p2, 0x7f0b02fe

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 362
    .line 363
    .line 364
    move-result-object p2

    .line 365
    check-cast p2, Landroid/widget/FrameLayout;

    .line 366
    .line 367
    iput-object p2, p0, Lb7/S0;->u1:Landroid/widget/FrameLayout;

    .line 368
    .line 369
    const p2, 0x7f0b0288

    .line 370
    .line 371
    .line 372
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 373
    .line 374
    .line 375
    move-result-object p2

    .line 376
    check-cast p2, Landroid/widget/ImageView;

    .line 377
    .line 378
    iput-object p2, p0, Lb7/S0;->R0:Landroid/widget/ImageView;

    .line 379
    .line 380
    const p2, 0x7f0b0421

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 384
    .line 385
    .line 386
    move-result-object p2

    .line 387
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 388
    .line 389
    iput-object p2, p0, Lb7/S0;->Z0:Landroidx/recyclerview/widget/RecyclerView;

    .line 390
    .line 391
    const p2, 0x7f0b033d

    .line 392
    .line 393
    .line 394
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 395
    .line 396
    .line 397
    move-result-object p2

    .line 398
    check-cast p2, Landroid/widget/ImageView;

    .line 399
    .line 400
    iput-object p2, p0, Lb7/S0;->l1:Landroid/widget/ImageView;

    .line 401
    .line 402
    const p2, 0x7f0b03d8

    .line 403
    .line 404
    .line 405
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    check-cast p2, Landroid/widget/ProgressBar;

    .line 410
    .line 411
    iput-object p2, p0, Lb7/S0;->m1:Landroid/widget/ProgressBar;

    .line 412
    .line 413
    invoke-virtual {p0}, Lb7/S0;->Y()V

    .line 414
    .line 415
    .line 416
    new-instance p2, Lpe/hf/black20/ORPlayerSpeedyLinearLayoutManager;

    .line 417
    .line 418
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 419
    .line 420
    .line 421
    const/4 v3, 0x1

    .line 422
    invoke-direct {p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 423
    .line 424
    .line 425
    iget-object v4, p0, Lb7/S0;->Z0:Landroidx/recyclerview/widget/RecyclerView;

    .line 426
    .line 427
    invoke-virtual {v4, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LO1/L;)V

    .line 428
    .line 429
    .line 430
    iget-object p2, p0, Lb7/S0;->Z0:Landroidx/recyclerview/widget/RecyclerView;

    .line 431
    .line 432
    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 433
    .line 434
    .line 435
    iget-object p2, p0, Lb7/S0;->Z0:Landroidx/recyclerview/widget/RecyclerView;

    .line 436
    .line 437
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 438
    .line 439
    .line 440
    iget-object p2, p0, Lb7/S0;->Z0:Landroidx/recyclerview/widget/RecyclerView;

    .line 441
    .line 442
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 443
    .line 444
    .line 445
    iget-object p2, p0, Lb7/S0;->Z0:Landroidx/recyclerview/widget/RecyclerView;

    .line 446
    .line 447
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 448
    .line 449
    .line 450
    const p2, 0x7f0b02d6

    .line 451
    .line 452
    .line 453
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 454
    .line 455
    .line 456
    move-result-object p2

    .line 457
    check-cast p2, Landroid/widget/FrameLayout;

    .line 458
    .line 459
    iput-object p2, p0, Lb7/S0;->v1:Landroid/widget/FrameLayout;

    .line 460
    .line 461
    const p2, 0x7f0b00f3

    .line 462
    .line 463
    .line 464
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 465
    .line 466
    .line 467
    move-result-object p2

    .line 468
    check-cast p2, Landroid/widget/Button;

    .line 469
    .line 470
    iput-object p2, p0, Lb7/S0;->w1:Landroid/widget/Button;

    .line 471
    .line 472
    const p2, 0x7f0b00bb

    .line 473
    .line 474
    .line 475
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 476
    .line 477
    .line 478
    move-result-object p2

    .line 479
    check-cast p2, Landroid/widget/Button;

    .line 480
    .line 481
    iput-object p2, p0, Lb7/S0;->x1:Landroid/widget/Button;

    .line 482
    .line 483
    const p2, 0x7f0b0338

    .line 484
    .line 485
    .line 486
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 487
    .line 488
    .line 489
    move-result-object p2

    .line 490
    check-cast p2, Landroid/widget/ListView;

    .line 491
    .line 492
    iput-object p2, p0, Lb7/S0;->y1:Landroid/widget/ListView;

    .line 493
    .line 494
    iget-object p2, p0, Lb7/S0;->v1:Landroid/widget/FrameLayout;

    .line 495
    .line 496
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 500
    .line 501
    .line 502
    move-result-object p2

    .line 503
    invoke-static {p2}, Lpe/hf/black20/util/Methods;->T(Landroid/content/Context;)Z

    .line 504
    .line 505
    .line 506
    move-result p2

    .line 507
    const/4 v4, 0x2

    .line 508
    const-wide v5, 0x3ffc51eb851eb852L    # 1.77

    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    if-nez p2, :cond_4

    .line 514
    .line 515
    invoke-static {}, Lpe/hf/black20/util/Methods;->P()Z

    .line 516
    .line 517
    .line 518
    move-result p2

    .line 519
    if-eqz p2, :cond_3

    .line 520
    .line 521
    goto :goto_3

    .line 522
    :cond_3
    iget-object p2, p0, Lb7/S0;->u1:Landroid/widget/FrameLayout;

    .line 523
    .line 524
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 525
    .line 526
    .line 527
    iget-object p2, p0, Lb7/S0;->s1:Landroid/widget/FrameLayout;

    .line 528
    .line 529
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 530
    .line 531
    .line 532
    move-result-object p2

    .line 533
    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 534
    .line 535
    iget v0, p0, Lb7/S0;->G0:I

    .line 536
    .line 537
    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 538
    .line 539
    iget v0, p0, Lb7/S0;->I0:I

    .line 540
    .line 541
    mul-int/lit8 v0, v0, 0x32

    .line 542
    .line 543
    invoke-virtual {p2, v1, v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 544
    .line 545
    .line 546
    iget-object v0, p0, Lb7/S0;->s1:Landroid/widget/FrameLayout;

    .line 547
    .line 548
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    .line 550
    .line 551
    iget-object p2, p0, Lb7/S0;->Z0:Landroidx/recyclerview/widget/RecyclerView;

    .line 552
    .line 553
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 554
    .line 555
    .line 556
    goto :goto_4

    .line 557
    :cond_4
    :goto_3
    iget-object p2, p0, Lb7/S0;->s1:Landroid/widget/FrameLayout;

    .line 558
    .line 559
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 560
    .line 561
    .line 562
    move-result-object p2

    .line 563
    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 564
    .line 565
    iget v0, p0, Lb7/S0;->G0:I

    .line 566
    .line 567
    div-int/2addr v0, v4

    .line 568
    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 569
    .line 570
    iget-object v0, p0, Lb7/S0;->s1:Landroid/widget/FrameLayout;

    .line 571
    .line 572
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    .line 574
    .line 575
    iget-object p2, p0, Lb7/S0;->r1:Landroid/widget/FrameLayout;

    .line 576
    .line 577
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 578
    .line 579
    .line 580
    move-result-object p2

    .line 581
    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 582
    .line 583
    iget v0, p0, Lb7/S0;->G0:I

    .line 584
    .line 585
    div-int/2addr v0, v4

    .line 586
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 587
    .line 588
    int-to-double v7, v0

    .line 589
    mul-double v7, v7, v5

    .line 590
    .line 591
    double-to-int v0, v7

    .line 592
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 593
    .line 594
    iget-object v0, p0, Lb7/S0;->r1:Landroid/widget/FrameLayout;

    .line 595
    .line 596
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 597
    .line 598
    .line 599
    :goto_4
    iget-object p2, p0, Lb7/S0;->t1:Landroid/widget/FrameLayout;

    .line 600
    .line 601
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 602
    .line 603
    .line 604
    move-result-object p2

    .line 605
    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 606
    .line 607
    iget v0, p0, Lb7/S0;->G0:I

    .line 608
    .line 609
    div-int/2addr v0, v4

    .line 610
    int-to-double v7, v0

    .line 611
    mul-double v7, v7, v5

    .line 612
    .line 613
    double-to-int v0, v7

    .line 614
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 615
    .line 616
    iget-object v0, p0, Lb7/S0;->t1:Landroid/widget/FrameLayout;

    .line 617
    .line 618
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    .line 620
    .line 621
    iget-object p2, p0, Lb7/S0;->w1:Landroid/widget/Button;

    .line 622
    .line 623
    new-instance v0, Lb7/O0;

    .line 624
    .line 625
    invoke-direct {v0, p0, v1}, Lb7/O0;-><init>(Lb7/S0;I)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    .line 630
    .line 631
    iget-object p2, p0, Lb7/S0;->x1:Landroid/widget/Button;

    .line 632
    .line 633
    new-instance v0, Lb7/O0;

    .line 634
    .line 635
    invoke-direct {v0, p0, v3}, Lb7/O0;-><init>(Lb7/S0;I)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    .line 640
    .line 641
    iget-object p2, p0, Lb7/S0;->L0:Landroid/widget/ImageButton;

    .line 642
    .line 643
    new-instance v0, Lb7/O0;

    .line 644
    .line 645
    invoke-direct {v0, p0, v4}, Lb7/O0;-><init>(Lb7/S0;I)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    .line 650
    .line 651
    iget-object p2, p0, Lb7/S0;->Q0:Landroid/widget/EditText;

    .line 652
    .line 653
    new-instance v0, Landroidx/leanback/widget/H;

    .line 654
    .line 655
    const/4 v1, 0x4

    .line 656
    invoke-direct {v0, p0, v1}, Landroidx/leanback/widget/H;-><init>(Ljava/lang/Object;I)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 660
    .line 661
    .line 662
    iget-object p2, p0, Lb7/S0;->M0:Landroid/widget/ImageButton;

    .line 663
    .line 664
    new-instance v0, Lb7/O0;

    .line 665
    .line 666
    invoke-direct {v0, p0, v2}, Lb7/O0;-><init>(Lb7/S0;I)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    .line 671
    .line 672
    iget-object p2, p0, Lb7/S0;->O0:Landroid/widget/ImageButton;

    .line 673
    .line 674
    new-instance v0, Lb7/O0;

    .line 675
    .line 676
    invoke-direct {v0, p0, v1}, Lb7/O0;-><init>(Lb7/S0;I)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    .line 681
    .line 682
    iget-object p2, p0, Lb7/S0;->O0:Landroid/widget/ImageButton;

    .line 683
    .line 684
    new-instance v0, Lb7/l0;

    .line 685
    .line 686
    invoke-direct {v0, p0, v1}, Lb7/l0;-><init>(Ljava/lang/Object;I)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 690
    .line 691
    .line 692
    iget-object p2, p0, Lb7/S0;->N0:Landroid/widget/ImageButton;

    .line 693
    .line 694
    new-instance v0, Lb7/O0;

    .line 695
    .line 696
    const/4 v1, 0x5

    .line 697
    invoke-direct {v0, p0, v1}, Lb7/O0;-><init>(Lb7/S0;I)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    .line 702
    .line 703
    iget-object p2, p0, Lb7/S0;->P0:Landroid/widget/ImageButton;

    .line 704
    .line 705
    new-instance v0, Lb7/O0;

    .line 706
    .line 707
    const/4 v1, 0x6

    .line 708
    invoke-direct {v0, p0, v1}, Lb7/O0;-><init>(Lb7/S0;I)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    .line 713
    .line 714
    const-string p2, "all"

    .line 715
    .line 716
    invoke-virtual {p0, p2}, Lb7/S0;->W(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
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
    const-string v2, "ORT_isORPlayerVODFragmentVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lb7/S0;->b1:Lcom/google/android/gms/internal/cast/X;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lb7/S0;->a1:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lb7/S0;->a1:Landroid/os/Handler;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lb7/S0;->o1:Ljava/lang/Thread;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lb7/S0;->n1:Ljava/lang/Thread;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method
