.class public Landroidx/recyclerview/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static i1:Z = false

.field public static j1:Z = false

.field public static final k1:[I

.field public static final l1:F

.field public static final m1:Z

.field public static final n1:Z

.field public static final o1:[Ljava/lang/Class;

.field public static final p1:LT/a;

.field public static final q1:LO1/Z;


# instance fields
.field public A0:I

.field public B0:I

.field public C0:I

.field public D0:I

.field public E0:LO1/N;

.field public final F0:I

.field public final G:F

.field public final G0:I

.field public final H:LO1/U;

.field public final H0:F

.field public final I:Ls1/g;

.field public final I0:F

.field public J:LO1/V;

.field public J0:Z

.field public final K:LO1/b;

.field public final K0:LO1/b0;

.field public final L:LO1/c;

.field public L0:LO1/r;

.field public final M:LO1/o0;

.field public final M0:Lr/h;

.field public N:Z

.field public final N0:LO1/Y;

.field public final O:LO1/A;

.field public O0:LO1/P;

.field public final P:Landroid/graphics/Rect;

.field public P0:Ljava/util/ArrayList;

.field public final Q:Landroid/graphics/Rect;

.field public Q0:Z

.field public final R:Landroid/graphics/RectF;

.field public R0:Z

.field public S:LO1/C;

.field public final S0:LO1/B;

.field public T:LO1/L;

.field public T0:Z

.field public U:LO1/T;

.field public U0:LO1/e0;

.field public final V:Ljava/util/ArrayList;

.field public final V0:[I

.field public final W:Ljava/util/ArrayList;

.field public W0:LN/o;

.field public final X0:[I

.field public final Y0:[I

.field public final Z0:[I

.field public final a0:Ljava/util/ArrayList;

.field public final a1:Ljava/util/ArrayList;

.field public b0:LO1/O;

.field public final b1:LO1/A;

.field public c0:Z

.field public c1:Z

.field public d0:Z

.field public d1:I

.field public e0:Z

.field public e1:I

.field public f0:I

.field public final f1:Z

.field public g0:Z

.field public final g1:LO1/B;

.field public h0:Z

.field public final h1:LN/j;

.field public i0:Z

.field public j0:I

.field public k0:Z

.field public final l0:Landroid/view/accessibility/AccessibilityManager;

.field public m0:Z

.field public n0:Z

.field public o0:I

.field public p0:I

.field public q0:LO1/G;

.field public r0:Landroid/widget/EdgeEffect;

.field public s0:Landroid/widget/EdgeEffect;

.field public t0:Landroid/widget/EdgeEffect;

.field public u0:Landroid/widget/EdgeEffect;

.field public v0:LO1/H;

.field public w0:I

.field public x0:I

.field public y0:Landroid/view/VelocityTracker;

.field public z0:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const v2, 0x1010436

    .line 4
    .line 5
    .line 6
    filled-new-array {v2}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    sput-object v2, Landroidx/recyclerview/widget/RecyclerView;->k1:[I

    .line 11
    .line 12
    const-wide v2, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    div-double/2addr v2, v4

    .line 31
    double-to-float v2, v2

    .line 32
    sput v2, Landroidx/recyclerview/widget/RecyclerView;->l1:F

    .line 33
    .line 34
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const/16 v3, 0x17

    .line 37
    .line 38
    if-lt v2, v3, :cond_0

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v2, 0x0

    .line 43
    :goto_0
    sput-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->m1:Z

    .line 44
    .line 45
    sput-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->n1:Z

    .line 46
    .line 47
    const/4 v2, 0x4

    .line 48
    new-array v2, v2, [Ljava/lang/Class;

    .line 49
    .line 50
    const-class v3, Landroid/content/Context;

    .line 51
    .line 52
    aput-object v3, v2, v0

    .line 53
    .line 54
    const-class v0, Landroid/util/AttributeSet;

    .line 55
    .line 56
    aput-object v0, v2, v1

    .line 57
    .line 58
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 59
    .line 60
    const/4 v3, 0x2

    .line 61
    aput-object v0, v2, v3

    .line 62
    .line 63
    const/4 v3, 0x3

    .line 64
    aput-object v0, v2, v3

    .line 65
    .line 66
    sput-object v2, Landroidx/recyclerview/widget/RecyclerView;->o1:[Ljava/lang/Class;

    .line 67
    .line 68
    new-instance v0, LT/a;

    .line 69
    .line 70
    invoke-direct {v0, v1}, LT/a;-><init>(I)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->p1:LT/a;

    .line 74
    .line 75
    new-instance v0, LO1/Z;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->q1:LO1/Z;

    .line 81
    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040364

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    .line 2
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, LO1/U;

    invoke-direct {v0, v10}, LO1/U;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->H:LO1/U;

    .line 4
    new-instance v0, Ls1/g;

    invoke-direct {v0, v10}, Ls1/g;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 5
    new-instance v0, LO1/o0;

    const/4 v14, 0x0

    invoke-direct {v0, v14}, LO1/o0;-><init>(I)V

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->M:LO1/o0;

    .line 6
    new-instance v0, LO1/A;

    invoke-direct {v0, v10, v14}, LO1/A;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->O:LO1/A;

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->P:Landroid/graphics/Rect;

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->Q:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->R:Landroid/graphics/RectF;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->V:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->W:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->a0:Ljava/util/ArrayList;

    .line 13
    iput v14, v10, Landroidx/recyclerview/widget/RecyclerView;->f0:I

    .line 14
    iput-boolean v14, v10, Landroidx/recyclerview/widget/RecyclerView;->m0:Z

    .line 15
    iput-boolean v14, v10, Landroidx/recyclerview/widget/RecyclerView;->n0:Z

    .line 16
    iput v14, v10, Landroidx/recyclerview/widget/RecyclerView;->o0:I

    .line 17
    iput v14, v10, Landroidx/recyclerview/widget/RecyclerView;->p0:I

    .line 18
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->q1:LO1/Z;

    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->q0:LO1/G;

    .line 19
    new-instance v0, LO1/j;

    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v15, 0x0

    .line 21
    iput-object v15, v0, LO1/H;->a:LO1/B;

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LO1/H;->b:Ljava/util/ArrayList;

    const-wide/16 v1, 0x78

    .line 23
    iput-wide v1, v0, LO1/H;->c:J

    .line 24
    iput-wide v1, v0, LO1/H;->d:J

    const-wide/16 v1, 0xfa

    .line 25
    iput-wide v1, v0, LO1/H;->e:J

    .line 26
    iput-wide v1, v0, LO1/H;->f:J

    const/4 v9, 0x1

    .line 27
    iput-boolean v9, v0, LO1/j;->g:Z

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LO1/j;->h:Ljava/util/ArrayList;

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LO1/j;->i:Ljava/util/ArrayList;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LO1/j;->j:Ljava/util/ArrayList;

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LO1/j;->k:Ljava/util/ArrayList;

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LO1/j;->l:Ljava/util/ArrayList;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LO1/j;->m:Ljava/util/ArrayList;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LO1/j;->n:Ljava/util/ArrayList;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LO1/j;->o:Ljava/util/ArrayList;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LO1/j;->p:Ljava/util/ArrayList;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LO1/j;->q:Ljava/util/ArrayList;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LO1/j;->r:Ljava/util/ArrayList;

    .line 39
    iput-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 40
    iput v14, v10, Landroidx/recyclerview/widget/RecyclerView;->w0:I

    const/4 v0, -0x1

    .line 41
    iput v0, v10, Landroidx/recyclerview/widget/RecyclerView;->x0:I

    const/4 v1, 0x1

    .line 42
    iput v1, v10, Landroidx/recyclerview/widget/RecyclerView;->H0:F

    .line 43
    iput v1, v10, Landroidx/recyclerview/widget/RecyclerView;->I0:F

    .line 44
    iput-boolean v9, v10, Landroidx/recyclerview/widget/RecyclerView;->J0:Z

    .line 45
    new-instance v1, LO1/b0;

    invoke-direct {v1, v10}, LO1/b0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->K0:LO1/b0;

    .line 46
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->n1:Z

    if-eqz v1, :cond_0

    new-instance v1, Lr/h;

    invoke-direct {v1, v9, v14}, Lr/h;-><init>(II)V

    goto :goto_0

    :cond_0
    move-object v1, v15

    :goto_0
    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->M0:Lr/h;

    .line 47
    new-instance v1, LO1/Y;

    .line 48
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, v1, LO1/Y;->a:I

    .line 50
    iput v14, v1, LO1/Y;->b:I

    .line 51
    iput v14, v1, LO1/Y;->c:I

    .line 52
    iput v9, v1, LO1/Y;->d:I

    .line 53
    iput v14, v1, LO1/Y;->e:I

    .line 54
    iput-boolean v14, v1, LO1/Y;->f:Z

    .line 55
    iput-boolean v14, v1, LO1/Y;->g:Z

    .line 56
    iput-boolean v14, v1, LO1/Y;->h:Z

    .line 57
    iput-boolean v14, v1, LO1/Y;->i:Z

    .line 58
    iput-boolean v14, v1, LO1/Y;->j:Z

    .line 59
    iput-boolean v14, v1, LO1/Y;->k:Z

    .line 60
    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 61
    iput-boolean v14, v10, Landroidx/recyclerview/widget/RecyclerView;->Q0:Z

    .line 62
    iput-boolean v14, v10, Landroidx/recyclerview/widget/RecyclerView;->R0:Z

    .line 63
    new-instance v1, LO1/B;

    invoke-direct {v1, v10}, LO1/B;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->S0:LO1/B;

    .line 64
    iput-boolean v14, v10, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    const/4 v8, 0x2

    .line 65
    new-array v2, v8, [I

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->V0:[I

    .line 66
    new-array v2, v8, [I

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->X0:[I

    .line 67
    new-array v2, v8, [I

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->Y0:[I

    .line 68
    new-array v2, v8, [I

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->Z0:[I

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->a1:Ljava/util/ArrayList;

    .line 70
    new-instance v2, LO1/A;

    invoke-direct {v2, v10, v9}, LO1/A;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->b1:LO1/A;

    .line 71
    iput v14, v10, Landroidx/recyclerview/widget/RecyclerView;->d1:I

    .line 72
    iput v14, v10, Landroidx/recyclerview/widget/RecyclerView;->e1:I

    .line 73
    new-instance v2, LO1/B;

    invoke-direct {v2, v10}, LO1/B;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->g1:LO1/B;

    .line 74
    new-instance v2, LO1/B;

    invoke-direct {v2, v10}, LO1/B;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 75
    new-instance v3, LN/j;

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, LN/j;-><init>(Landroid/content/Context;LN/k;)V

    iput-object v3, v10, Landroidx/recyclerview/widget/RecyclerView;->h1:LN/j;

    .line 77
    invoke-virtual {v10, v9}, Landroid/view/View;->setScrollContainer(Z)V

    .line 78
    invoke-virtual {v10, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 79
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, v10, Landroidx/recyclerview/widget/RecyclerView;->D0:I

    .line 81
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_1

    .line 82
    sget-object v5, LN/O;->a:Ljava/lang/reflect/Method;

    .line 83
    invoke-static {v2}, LD/r;->c(Landroid/view/ViewConfiguration;)F

    move-result v5

    goto :goto_1

    .line 84
    :cond_1
    invoke-static {v2, v11}, LN/O;->a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v5

    .line 85
    :goto_1
    iput v5, v10, Landroidx/recyclerview/widget/RecyclerView;->H0:F

    if-lt v3, v4, :cond_2

    .line 86
    invoke-static {v2}, LD/r;->d(Landroid/view/ViewConfiguration;)F

    move-result v5

    goto :goto_2

    .line 87
    :cond_2
    invoke-static {v2, v11}, LN/O;->a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v5

    .line 88
    :goto_2
    iput v5, v10, Landroidx/recyclerview/widget/RecyclerView;->I0:F

    .line 89
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, v10, Landroidx/recyclerview/widget/RecyclerView;->F0:I

    .line 90
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, v10, Landroidx/recyclerview/widget/RecyclerView;->G0:I

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x43200000    # 160.0f

    mul-float v2, v2, v5

    const v5, 0x43c10b3d

    mul-float v2, v2, v5

    const v5, 0x3f570a3d    # 0.84f

    mul-float v2, v2, v5

    .line 92
    iput v2, v10, Landroidx/recyclerview/widget/RecyclerView;->G:F

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    if-ne v2, v8, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v10, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 94
    iget-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 95
    iput-object v1, v2, LO1/H;->a:LO1/B;

    .line 96
    new-instance v1, LO1/b;

    new-instance v2, LO1/B;

    invoke-direct {v2, v10}, LO1/B;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v1, v2}, LO1/b;-><init>(LO1/B;)V

    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->K:LO1/b;

    .line 97
    new-instance v1, LO1/c;

    new-instance v2, LO1/B;

    invoke-direct {v2, v10}, LO1/B;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v1, v2}, LO1/c;-><init>(LO1/B;)V

    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 98
    sget-object v1, LN/N;->a:Ljava/util/WeakHashMap;

    const/16 v7, 0x8

    if-lt v3, v4, :cond_4

    .line 99
    invoke-static/range {p0 .. p0}, LN/H;->a(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    if-lt v3, v4, :cond_5

    .line 100
    invoke-static {v10, v7}, LN/H;->b(Landroid/view/View;I)V

    .line 101
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 102
    invoke-virtual {v10, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 103
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    .line 104
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->l0:Landroid/view/accessibility/AccessibilityManager;

    .line 105
    new-instance v1, LO1/e0;

    invoke-direct {v1, v10}, LO1/e0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v10, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(LO1/e0;)V

    .line 106
    sget-object v3, LN1/a;->a:[I

    invoke-virtual {v11, v12, v3, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v6

    move-object v15, v6

    move/from16 v6, p3

    .line 107
    invoke-static/range {v1 .. v6}, LN/N;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 108
    invoke-virtual {v15, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 109
    invoke-virtual {v15, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-ne v1, v0, :cond_7

    const/high16 v0, 0x40000

    .line 110
    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 111
    :cond_7
    invoke-virtual {v15, v9, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v10, Landroidx/recyclerview/widget/RecyclerView;->N:Z

    const/4 v0, 0x3

    .line 112
    invoke-virtual {v15, v0, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v7, 0x4

    if-eqz v1, :cond_9

    const/4 v1, 0x6

    .line 113
    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x7

    .line 114
    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 115
    invoke-virtual {v15, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x5

    .line 116
    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 118
    new-instance v2, LO1/p;

    const v7, 0x7f0700d6

    .line 119
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f0700d8

    .line 120
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v9, 0x7f0700d7

    .line 121
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    move-object v1, v2

    move-object/from16 v2, p0

    const/4 v0, 0x4

    const/16 v17, 0x2

    invoke-direct/range {v1 .. v9}, LO1/p;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    goto :goto_4

    .line 122
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to set fast scroller without both required drawables."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-static {v10, v1}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 v0, 0x4

    const/16 v17, 0x2

    .line 125
    :goto_4
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.rotaryencoder.lowres"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v10, Landroidx/recyclerview/widget/RecyclerView;->f1:Z

    .line 127
    const-string v1, ": Could not instantiate the LayoutManager: "

    if-eqz v16, :cond_d

    .line 128
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 130
    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_a

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 132
    :cond_a
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_5

    .line 133
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    :goto_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 135
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    goto :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :catch_1
    move-exception v0

    goto/16 :goto_b

    :catch_2
    move-exception v0

    goto/16 :goto_c

    :catch_3
    move-exception v0

    goto/16 :goto_d

    :catch_4
    move-exception v0

    goto/16 :goto_e

    .line 136
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 137
    :goto_6
    invoke-static {v2, v14, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, LO1/L;

    .line 138
    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :try_start_1
    sget-object v4, Landroidx/recyclerview/widget/RecyclerView;->o1:[Ljava/lang/Class;

    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 141
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v11, v0, v14
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x1

    :try_start_2
    aput-object v12, v0, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v17

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v0, v6
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v15, v0

    goto :goto_9

    :catch_5
    move-exception v0

    :goto_7
    move-object v4, v0

    goto :goto_8

    :catch_6
    move-exception v0

    const/4 v7, 0x1

    goto :goto_7

    .line 142
    :goto_8
    :try_start_3
    new-array v0, v14, [Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v15, 0x0

    .line 143
    :goto_9
    :try_start_4
    invoke-virtual {v4, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 144
    invoke-virtual {v4, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO1/L;

    invoke-virtual {v10, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LO1/L;)V

    goto/16 :goto_f

    :catch_7
    move-exception v0

    .line 145
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 146
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Error creating LayoutManager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0

    .line 147
    :goto_a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Class is not a LayoutManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 148
    :goto_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Cannot access non-public constructor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 149
    :goto_c
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 150
    :goto_d
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 151
    :goto_e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Unable to find LayoutManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_d
    const/4 v7, 0x1

    .line 152
    :goto_f
    sget-object v3, Landroidx/recyclerview/widget/RecyclerView;->k1:[I

    invoke-virtual {v11, v12, v3, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v0

    move/from16 v6, p3

    .line 153
    invoke-static/range {v1 .. v6}, LN/N;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 154
    invoke-virtual {v0, v14, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 155
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    invoke-virtual {v10, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 157
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v1, 0x7f0b02b3

    invoke-virtual {v10, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static G(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 4

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v0, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    return-object v3

    .line 34
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    return-object v1
.end method

.method public static L(Landroid/view/View;)LO1/c0;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, LO1/M;

    .line 10
    .line 11
    iget-object p0, p0, LO1/M;->a:LO1/c0;

    .line 12
    .line 13
    return-object p0
.end method

.method public static M(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, LO1/M;

    .line 6
    .line 7
    iget-object v1, v0, LO1/M;->b:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 14
    .line 15
    sub-int/2addr v2, v3

    .line 16
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    sub-int/2addr v3, v4

    .line 26
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 27
    .line 28
    sub-int/2addr v3, v4

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 34
    .line 35
    add-int/2addr v4, v5

    .line 36
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 37
    .line 38
    add-int/2addr v4, v5

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 44
    .line 45
    add-int/2addr p1, v1

    .line 46
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 47
    .line 48
    add-int/2addr p1, v0

    .line 49
    invoke-virtual {p0, v2, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static synthetic a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic e(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getScrollingChildHelper()LN/o;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->W0:LN/o;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, LN/o;

    .line 6
    .line 7
    invoke-direct {v0, p0}, LN/o;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->W0:LN/o;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->W0:LN/o;

    .line 13
    .line 14
    return-object v0
.end method

.method public static l(LO1/c0;)V
    .locals 3

    .line 1
    iget-object v0, p0, LO1/c0;->H:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    :goto_0
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, LO1/c0;->G:Landroid/view/View;

    .line 15
    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    instance-of v2, v0, Landroid/view/View;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    check-cast v0, Landroid/view/View;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v0, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iput-object v1, p0, LO1/c0;->H:Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    :cond_3
    return-void
.end method

.method public static o(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I
    .locals 4

    .line 1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x40800000    # 4.0f

    .line 5
    .line 6
    if-lez p0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-static {p1}, LE3/f;->m(Landroid/widget/EdgeEffect;)F

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    cmpl-float v3, v3, v1

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    neg-int p2, p0

    .line 19
    int-to-float p2, p2

    .line 20
    mul-float p2, p2, v2

    .line 21
    .line 22
    int-to-float v1, p3

    .line 23
    div-float/2addr p2, v1

    .line 24
    neg-int p3, p3

    .line 25
    int-to-float p3, p3

    .line 26
    div-float/2addr p3, v2

    .line 27
    invoke-static {p1, p2, v0}, LE3/f;->u(Landroid/widget/EdgeEffect;FF)F

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    mul-float p2, p2, p3

    .line 32
    .line 33
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eq p2, p0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 40
    .line 41
    .line 42
    :cond_0
    sub-int/2addr p0, p2

    .line 43
    return p0

    .line 44
    :cond_1
    if-gez p0, :cond_3

    .line 45
    .line 46
    if-eqz p2, :cond_3

    .line 47
    .line 48
    invoke-static {p2}, LE3/f;->m(Landroid/widget/EdgeEffect;)F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    cmpl-float p1, p1, v1

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    int-to-float p1, p0

    .line 57
    mul-float p1, p1, v2

    .line 58
    .line 59
    int-to-float p3, p3

    .line 60
    div-float/2addr p1, p3

    .line 61
    div-float/2addr p3, v2

    .line 62
    invoke-static {p2, p1, v0}, LE3/f;->u(Landroid/widget/EdgeEffect;FF)F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    mul-float p1, p1, p3

    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eq p1, p0, :cond_2

    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->finish()V

    .line 75
    .line 76
    .line 77
    :cond_2
    sub-int/2addr p0, p1

    .line 78
    :cond_3
    return p0
.end method

.method public static setDebugAssertionsEnabled(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->i1:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setVerboseLoggingEnabled(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->j1:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->q0:LO1/G;

    .line 7
    .line 8
    check-cast v0, LO1/Z;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 23
    .line 24
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    sub-int/2addr v1, v2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    sub-int/2addr v1, v2

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    sub-int/2addr v2, v3

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    sub-int/2addr v2, v3

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public final B()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", adapter:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", layout:"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", context:"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method public final C(LO1/Y;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K0:LO1/b0;

    .line 9
    .line 10
    iget-object v0, v0, LO1/b0;->I:Landroid/widget/OverScroller;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sub-int/2addr v1, v2

    .line 21
    iput v1, p1, LO1/Y;->o:I

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sub-int/2addr v1, v0

    .line 32
    iput v1, p1, LO1/Y;->p:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    iput v0, p1, LO1/Y;->o:I

    .line 37
    .line 38
    iput v0, p1, LO1/Y;->p:I

    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public final D(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eq v0, p0, :cond_0

    .line 8
    .line 9
    instance-of v1, v0, Landroid/view/View;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    move-object p1, v0

    .line 14
    check-cast p1, Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-ne v0, p0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    :goto_1
    return-object p1
.end method

.method public final E(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    :goto_0
    if-ge v4, v2, :cond_6

    .line 14
    .line 15
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    check-cast v5, LO1/O;

    .line 20
    .line 21
    move-object v6, v5

    .line 22
    check-cast v6, LO1/p;

    .line 23
    .line 24
    iget v7, v6, LO1/p;->v:I

    .line 25
    .line 26
    const/4 v8, 0x1

    .line 27
    const/4 v9, 0x2

    .line 28
    if-ne v7, v8, :cond_3

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 35
    .line 36
    .line 37
    move-result v10

    .line 38
    invoke-virtual {v6, v7, v10}, LO1/p;->e(FF)Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    invoke-virtual {v6, v10, v11}, LO1/p;->d(FF)Z

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    if-nez v11, :cond_4

    .line 59
    .line 60
    if-nez v7, :cond_0

    .line 61
    .line 62
    if-eqz v10, :cond_4

    .line 63
    .line 64
    :cond_0
    if-eqz v10, :cond_1

    .line 65
    .line 66
    iput v8, v6, LO1/p;->w:I

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    float-to-int v7, v7

    .line 73
    int-to-float v7, v7

    .line 74
    iput v7, v6, LO1/p;->p:F

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    if-eqz v7, :cond_2

    .line 78
    .line 79
    iput v9, v6, LO1/p;->w:I

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    float-to-int v7, v7

    .line 86
    int-to-float v7, v7

    .line 87
    iput v7, v6, LO1/p;->m:F

    .line 88
    .line 89
    :cond_2
    :goto_1
    invoke-virtual {v6, v9}, LO1/p;->g(I)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    if-ne v7, v9, :cond_4

    .line 94
    .line 95
    :goto_2
    const/4 v6, 0x1

    .line 96
    goto :goto_3

    .line 97
    :cond_4
    const/4 v6, 0x0

    .line 98
    :goto_3
    if-eqz v6, :cond_5

    .line 99
    .line 100
    const/4 v6, 0x3

    .line 101
    if-eq v0, v6, :cond_5

    .line 102
    .line 103
    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->b0:LO1/O;

    .line 104
    .line 105
    return v8

    .line 106
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_6
    return v3
.end method

.method public final F([I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 2
    .line 3
    invoke-virtual {v0}, LO1/c;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    aput v0, p1, v2

    .line 13
    .line 14
    aput v0, p1, v1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const v3, 0x7fffffff

    .line 18
    .line 19
    .line 20
    const/high16 v4, -0x80000000

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    :goto_0
    if-ge v5, v0, :cond_4

    .line 24
    .line 25
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 26
    .line 27
    invoke-virtual {v6, v5}, LO1/c;->d(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v6}, LO1/c0;->q()Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-eqz v7, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v6}, LO1/c0;->d()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-ge v6, v3, :cond_2

    .line 47
    .line 48
    move v3, v6

    .line 49
    :cond_2
    if-le v6, v4, :cond_3

    .line 50
    .line 51
    move v4, v6

    .line 52
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    aput v3, p1, v2

    .line 56
    .line 57
    aput v4, p1, v1

    .line 58
    .line 59
    return-void
.end method

.method public final H(I)LO1/c0;
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 8
    .line 9
    invoke-virtual {v0}, LO1/c;->h()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v0, :cond_3

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, LO1/c;->g(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    invoke-virtual {v3}, LO1/c0;->j()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->J(LO1/c0;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-ne v4, p1, :cond_2

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 41
    .line 42
    iget-object v4, v3, LO1/c0;->G:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v1, v4}, LO1/c;->k(Landroid/view/View;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    move-object v1, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    return-object v3

    .line 53
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    return-object v1
.end method

.method public final I(IIII)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    const-string v1, "RecyclerView"

    .line 13
    .line 14
    const-string v2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 15
    .line 16
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return v4

    .line 20
    :cond_0
    iget-boolean v5, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    return v4

    .line 25
    :cond_1
    invoke-virtual {v3}, LO1/L;->e()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 30
    .line 31
    invoke-virtual {v5}, LO1/L;->f()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-ge v6, v1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move/from16 v6, p1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    :goto_0
    const/4 v6, 0x0

    .line 48
    :goto_1
    if-eqz v5, :cond_5

    .line 49
    .line 50
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-ge v7, v1, :cond_4

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    move/from16 v1, p2

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_5
    :goto_2
    const/4 v1, 0x0

    .line 61
    :goto_3
    if-nez v6, :cond_6

    .line 62
    .line 63
    if-nez v1, :cond_6

    .line 64
    .line 65
    return v4

    .line 66
    :cond_6
    const/4 v7, 0x0

    .line 67
    if-eqz v6, :cond_9

    .line 68
    .line 69
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 70
    .line 71
    if-eqz v8, :cond_8

    .line 72
    .line 73
    invoke-static {v8}, LE3/f;->m(Landroid/widget/EdgeEffect;)F

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    cmpl-float v8, v8, v7

    .line 78
    .line 79
    if-eqz v8, :cond_8

    .line 80
    .line 81
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 82
    .line 83
    neg-int v9, v6

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    invoke-virtual {v0, v8, v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->h0(Landroid/widget/EdgeEffect;II)Z

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    if-eqz v8, :cond_7

    .line 93
    .line 94
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 95
    .line 96
    invoke-virtual {v6, v9}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 97
    .line 98
    .line 99
    :goto_4
    const/4 v6, 0x0

    .line 100
    :cond_7
    move v8, v6

    .line 101
    const/4 v6, 0x0

    .line 102
    goto :goto_5

    .line 103
    :cond_8
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 104
    .line 105
    if-eqz v8, :cond_9

    .line 106
    .line 107
    invoke-static {v8}, LE3/f;->m(Landroid/widget/EdgeEffect;)F

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    cmpl-float v8, v8, v7

    .line 112
    .line 113
    if-eqz v8, :cond_9

    .line 114
    .line 115
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 116
    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    invoke-virtual {v0, v8, v6, v9}, Landroidx/recyclerview/widget/RecyclerView;->h0(Landroid/widget/EdgeEffect;II)Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-eqz v8, :cond_7

    .line 126
    .line 127
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 128
    .line 129
    invoke-virtual {v8, v6}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_9
    const/4 v8, 0x0

    .line 134
    :goto_5
    if-eqz v1, :cond_c

    .line 135
    .line 136
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 137
    .line 138
    if-eqz v9, :cond_b

    .line 139
    .line 140
    invoke-static {v9}, LE3/f;->m(Landroid/widget/EdgeEffect;)F

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    cmpl-float v9, v9, v7

    .line 145
    .line 146
    if-eqz v9, :cond_b

    .line 147
    .line 148
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 149
    .line 150
    neg-int v10, v1

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    invoke-virtual {v0, v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->h0(Landroid/widget/EdgeEffect;II)Z

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-eqz v9, :cond_a

    .line 160
    .line 161
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 162
    .line 163
    invoke-virtual {v1, v10}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 164
    .line 165
    .line 166
    :goto_6
    const/4 v1, 0x0

    .line 167
    :cond_a
    const/4 v9, 0x0

    .line 168
    goto :goto_7

    .line 169
    :cond_b
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 170
    .line 171
    if-eqz v9, :cond_c

    .line 172
    .line 173
    invoke-static {v9}, LE3/f;->m(Landroid/widget/EdgeEffect;)F

    .line 174
    .line 175
    .line 176
    move-result v9

    .line 177
    cmpl-float v9, v9, v7

    .line 178
    .line 179
    if-eqz v9, :cond_c

    .line 180
    .line 181
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 182
    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    invoke-virtual {v0, v9, v1, v10}, Landroidx/recyclerview/widget/RecyclerView;->h0(Landroid/widget/EdgeEffect;II)Z

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    if-eqz v9, :cond_a

    .line 192
    .line 193
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 194
    .line 195
    invoke-virtual {v9, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 196
    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_c
    move v9, v1

    .line 200
    const/4 v1, 0x0

    .line 201
    :goto_7
    const/4 v10, 0x1

    .line 202
    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView;->K0:LO1/b0;

    .line 203
    .line 204
    if-nez v8, :cond_d

    .line 205
    .line 206
    if-eqz v1, :cond_e

    .line 207
    .line 208
    :cond_d
    neg-int v12, v2

    .line 209
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    .line 210
    .line 211
    .line 212
    move-result v8

    .line 213
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->m0(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v11, v8, v1}, LO1/b0;->a(II)V

    .line 229
    .line 230
    .line 231
    :cond_e
    if-nez v6, :cond_11

    .line 232
    .line 233
    if-nez v9, :cond_11

    .line 234
    .line 235
    if-nez v8, :cond_f

    .line 236
    .line 237
    if-eqz v1, :cond_10

    .line 238
    .line 239
    :cond_f
    const/4 v4, 0x1

    .line 240
    :cond_10
    return v4

    .line 241
    :cond_11
    int-to-float v1, v6

    .line 242
    int-to-float v8, v9

    .line 243
    invoke-virtual {v0, v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    .line 244
    .line 245
    .line 246
    move-result v12

    .line 247
    if-nez v12, :cond_2b

    .line 248
    .line 249
    if-nez v3, :cond_13

    .line 250
    .line 251
    if-eqz v5, :cond_12

    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_12
    const/4 v3, 0x0

    .line 255
    goto :goto_9

    .line 256
    :cond_13
    :goto_8
    const/4 v3, 0x1

    .line 257
    :goto_9
    invoke-virtual {v0, v1, v8, v3}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 258
    .line 259
    .line 260
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->E0:LO1/N;

    .line 261
    .line 262
    if-eqz v1, :cond_29

    .line 263
    .line 264
    check-cast v1, LO1/x;

    .line 265
    .line 266
    iget-object v5, v1, LO1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 267
    .line 268
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()LO1/L;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    if-nez v5, :cond_14

    .line 273
    .line 274
    goto/16 :goto_11

    .line 275
    .line 276
    :cond_14
    iget-object v8, v1, LO1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 277
    .line 278
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()LO1/C;

    .line 279
    .line 280
    .line 281
    move-result-object v8

    .line 282
    if-nez v8, :cond_15

    .line 283
    .line 284
    goto/16 :goto_11

    .line 285
    .line 286
    :cond_15
    iget-object v8, v1, LO1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 287
    .line 288
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I

    .line 289
    .line 290
    .line 291
    move-result v8

    .line 292
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 293
    .line 294
    .line 295
    move-result v12

    .line 296
    if-gt v12, v8, :cond_16

    .line 297
    .line 298
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 299
    .line 300
    .line 301
    move-result v12

    .line 302
    if-le v12, v8, :cond_29

    .line 303
    .line 304
    :cond_16
    instance-of v8, v5, LO1/X;

    .line 305
    .line 306
    if-nez v8, :cond_17

    .line 307
    .line 308
    goto/16 :goto_11

    .line 309
    .line 310
    :cond_17
    const/4 v12, 0x0

    .line 311
    if-nez v8, :cond_18

    .line 312
    .line 313
    move-object v13, v12

    .line 314
    goto :goto_a

    .line 315
    :cond_18
    new-instance v13, LO1/g0;

    .line 316
    .line 317
    iget-object v14, v1, LO1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 318
    .line 319
    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 320
    .line 321
    .line 322
    move-result-object v14

    .line 323
    invoke-direct {v13, v1, v14, v4}, LO1/g0;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V

    .line 324
    .line 325
    .line 326
    :goto_a
    if-nez v13, :cond_19

    .line 327
    .line 328
    goto/16 :goto_11

    .line 329
    .line 330
    :cond_19
    const/4 v14, -0x1

    .line 331
    if-nez v8, :cond_1a

    .line 332
    .line 333
    :goto_b
    const/4 v1, -0x1

    .line 334
    const/4 v10, -0x1

    .line 335
    goto/16 :goto_10

    .line 336
    .line 337
    :cond_1a
    invoke-virtual {v5}, LO1/L;->H()I

    .line 338
    .line 339
    .line 340
    move-result v8

    .line 341
    if-nez v8, :cond_1b

    .line 342
    .line 343
    goto :goto_b

    .line 344
    :cond_1b
    invoke-virtual {v5}, LO1/L;->f()Z

    .line 345
    .line 346
    .line 347
    move-result v15

    .line 348
    if-eqz v15, :cond_1c

    .line 349
    .line 350
    invoke-virtual {v1, v5}, LO1/x;->e(LO1/L;)LO1/z;

    .line 351
    .line 352
    .line 353
    move-result-object v12

    .line 354
    invoke-static {v5, v12}, LO1/x;->c(LO1/L;LO1/z;)Landroid/view/View;

    .line 355
    .line 356
    .line 357
    move-result-object v12

    .line 358
    goto :goto_c

    .line 359
    :cond_1c
    invoke-virtual {v5}, LO1/L;->e()Z

    .line 360
    .line 361
    .line 362
    move-result v15

    .line 363
    if-eqz v15, :cond_1d

    .line 364
    .line 365
    invoke-virtual {v1, v5}, LO1/x;->d(LO1/L;)LO1/z;

    .line 366
    .line 367
    .line 368
    move-result-object v12

    .line 369
    invoke-static {v5, v12}, LO1/x;->c(LO1/L;LO1/z;)Landroid/view/View;

    .line 370
    .line 371
    .line 372
    move-result-object v12

    .line 373
    :cond_1d
    :goto_c
    if-nez v12, :cond_1e

    .line 374
    .line 375
    goto :goto_b

    .line 376
    :cond_1e
    invoke-static {v12}, LO1/L;->M(Landroid/view/View;)I

    .line 377
    .line 378
    .line 379
    move-result v12

    .line 380
    if-ne v12, v14, :cond_1f

    .line 381
    .line 382
    goto :goto_b

    .line 383
    :cond_1f
    move-object v15, v5

    .line 384
    check-cast v15, LO1/X;

    .line 385
    .line 386
    add-int/lit8 v10, v8, -0x1

    .line 387
    .line 388
    invoke-interface {v15, v10}, LO1/X;->a(I)Landroid/graphics/PointF;

    .line 389
    .line 390
    .line 391
    move-result-object v15

    .line 392
    if-nez v15, :cond_20

    .line 393
    .line 394
    goto :goto_b

    .line 395
    :cond_20
    invoke-virtual {v5}, LO1/L;->e()Z

    .line 396
    .line 397
    .line 398
    move-result v16

    .line 399
    if-eqz v16, :cond_21

    .line 400
    .line 401
    invoke-virtual {v1, v5}, LO1/x;->d(LO1/L;)LO1/z;

    .line 402
    .line 403
    .line 404
    move-result-object v14

    .line 405
    invoke-virtual {v1, v5, v14, v6, v4}, LO1/x;->b(LO1/L;LO1/z;II)I

    .line 406
    .line 407
    .line 408
    move-result v14

    .line 409
    iget v4, v15, Landroid/graphics/PointF;->x:F

    .line 410
    .line 411
    cmpg-float v4, v4, v7

    .line 412
    .line 413
    if-gez v4, :cond_22

    .line 414
    .line 415
    neg-int v14, v14

    .line 416
    goto :goto_d

    .line 417
    :cond_21
    const/4 v14, 0x0

    .line 418
    :cond_22
    :goto_d
    invoke-virtual {v5}, LO1/L;->f()Z

    .line 419
    .line 420
    .line 421
    move-result v4

    .line 422
    if-eqz v4, :cond_24

    .line 423
    .line 424
    invoke-virtual {v1, v5}, LO1/x;->e(LO1/L;)LO1/z;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    const/4 v7, 0x0

    .line 429
    invoke-virtual {v1, v5, v4, v7, v9}, LO1/x;->b(LO1/L;LO1/z;II)I

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    iget v4, v15, Landroid/graphics/PointF;->y:F

    .line 434
    .line 435
    const/4 v7, 0x0

    .line 436
    cmpg-float v4, v4, v7

    .line 437
    .line 438
    if-gez v4, :cond_23

    .line 439
    .line 440
    neg-int v7, v1

    .line 441
    goto :goto_e

    .line 442
    :cond_23
    move v7, v1

    .line 443
    goto :goto_e

    .line 444
    :cond_24
    const/4 v7, 0x0

    .line 445
    :goto_e
    invoke-virtual {v5}, LO1/L;->f()Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-eqz v1, :cond_25

    .line 450
    .line 451
    move v14, v7

    .line 452
    :cond_25
    if-nez v14, :cond_26

    .line 453
    .line 454
    goto :goto_b

    .line 455
    :cond_26
    add-int v7, v12, v14

    .line 456
    .line 457
    if-gez v7, :cond_27

    .line 458
    .line 459
    const/4 v7, 0x0

    .line 460
    :cond_27
    if-lt v7, v8, :cond_28

    .line 461
    .line 462
    goto :goto_f

    .line 463
    :cond_28
    move v10, v7

    .line 464
    :goto_f
    const/4 v1, -0x1

    .line 465
    :goto_10
    if-ne v10, v1, :cond_2a

    .line 466
    .line 467
    :cond_29
    :goto_11
    const/4 v1, 0x1

    .line 468
    goto :goto_12

    .line 469
    :cond_2a
    iput v10, v13, LO1/w;->a:I

    .line 470
    .line 471
    invoke-virtual {v5, v13}, LO1/L;->R0(LO1/w;)V

    .line 472
    .line 473
    .line 474
    const/4 v1, 0x1

    .line 475
    return v1

    .line 476
    :goto_12
    if-eqz v3, :cond_2b

    .line 477
    .line 478
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->m0(I)V

    .line 479
    .line 480
    .line 481
    neg-int v3, v2

    .line 482
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    .line 483
    .line 484
    .line 485
    move-result v4

    .line 486
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 495
    .line 496
    .line 497
    move-result v2

    .line 498
    invoke-virtual {v11, v4, v2}, LO1/b0;->a(II)V

    .line 499
    .line 500
    .line 501
    return v1

    .line 502
    :cond_2b
    const/4 v1, 0x0

    .line 503
    return v1
.end method

.method public final J(LO1/c0;)I
    .locals 7

    .line 1
    const/16 v0, 0x20c

    .line 2
    .line 3
    invoke-virtual {p1, v0}, LO1/c0;->f(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-nez v0, :cond_9

    .line 9
    .line 10
    invoke-virtual {p1}, LO1/c0;->g()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:LO1/b;

    .line 18
    .line 19
    iget p1, p1, LO1/c0;->I:I

    .line 20
    .line 21
    iget-object v0, v0, LO1/b;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-ge v3, v2, :cond_8

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, LO1/a;

    .line 35
    .line 36
    iget v5, v4, LO1/a;->a:I

    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    if-eq v5, v6, :cond_6

    .line 40
    .line 41
    const/4 v6, 0x2

    .line 42
    if-eq v5, v6, :cond_4

    .line 43
    .line 44
    const/16 v6, 0x8

    .line 45
    .line 46
    if-eq v5, v6, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget v5, v4, LO1/a;->b:I

    .line 50
    .line 51
    if-ne v5, p1, :cond_2

    .line 52
    .line 53
    iget p1, v4, LO1/a;->d:I

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    if-ge v5, p1, :cond_3

    .line 57
    .line 58
    add-int/lit8 p1, p1, -0x1

    .line 59
    .line 60
    :cond_3
    iget v4, v4, LO1/a;->d:I

    .line 61
    .line 62
    if-gt v4, p1, :cond_7

    .line 63
    .line 64
    add-int/lit8 p1, p1, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    iget v5, v4, LO1/a;->b:I

    .line 68
    .line 69
    if-gt v5, p1, :cond_7

    .line 70
    .line 71
    iget v4, v4, LO1/a;->d:I

    .line 72
    .line 73
    add-int/2addr v5, v4

    .line 74
    if-le v5, p1, :cond_5

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    sub-int/2addr p1, v4

    .line 78
    goto :goto_1

    .line 79
    :cond_6
    iget v5, v4, LO1/a;->b:I

    .line 80
    .line 81
    if-gt v5, p1, :cond_7

    .line 82
    .line 83
    iget v4, v4, LO1/a;->d:I

    .line 84
    .line 85
    add-int/2addr p1, v4

    .line 86
    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_8
    move v1, p1

    .line 90
    :cond_9
    :goto_2
    return v1
.end method

.method public final K(Landroid/view/View;)LO1/c0;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ne v0, p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "View "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, " is not a direct child of "

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public final N(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, LO1/M;

    .line 6
    .line 7
    iget-boolean v1, v0, LO1/M;->c:Z

    .line 8
    .line 9
    iget-object v2, v0, LO1/M;->b:Landroid/graphics/Rect;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 15
    .line 16
    iget-boolean v1, v1, LO1/Y;->g:Z

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    iget-object v1, v0, LO1/M;->a:LO1/c0;

    .line 21
    .line 22
    invoke-virtual {v1}, LO1/c0;->m()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object v1, v0, LO1/M;->a:LO1/c0;

    .line 29
    .line 30
    invoke-virtual {v1}, LO1/c0;->h()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    :cond_1
    return-object v2

    .line 37
    :cond_2
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/4 v5, 0x0

    .line 48
    :goto_0
    if-ge v5, v4, :cond_3

    .line 49
    .line 50
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->P:Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-virtual {v6, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    check-cast v7, LO1/I;

    .line 60
    .line 61
    invoke-virtual {v7, v6, p1}, LO1/I;->a(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    iget v7, v2, Landroid/graphics/Rect;->left:I

    .line 65
    .line 66
    iget v8, v6, Landroid/graphics/Rect;->left:I

    .line 67
    .line 68
    add-int/2addr v7, v8

    .line 69
    iput v7, v2, Landroid/graphics/Rect;->left:I

    .line 70
    .line 71
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 72
    .line 73
    iget v8, v6, Landroid/graphics/Rect;->top:I

    .line 74
    .line 75
    add-int/2addr v7, v8

    .line 76
    iput v7, v2, Landroid/graphics/Rect;->top:I

    .line 77
    .line 78
    iget v7, v2, Landroid/graphics/Rect;->right:I

    .line 79
    .line 80
    iget v8, v6, Landroid/graphics/Rect;->right:I

    .line 81
    .line 82
    add-int/2addr v7, v8

    .line 83
    iput v7, v2, Landroid/graphics/Rect;->right:I

    .line 84
    .line 85
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 86
    .line 87
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 88
    .line 89
    add-int/2addr v7, v6

    .line 90
    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 91
    .line 92
    add-int/lit8 v5, v5, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    iput-boolean v1, v0, LO1/M;->c:Z

    .line 96
    .line 97
    return-object v2
.end method

.method public final O()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m0:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:LO1/b;

    .line 10
    .line 11
    invoke-virtual {v0}, LO1/b;->g()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public P()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isChildrenDrawingOrderEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final Q()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o0:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final R(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, LO1/L;->G0(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final S()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 2
    .line 3
    invoke-virtual {v0}, LO1/c;->h()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    const/4 v3, 0x1

    .line 10
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 13
    .line 14
    invoke-virtual {v4, v2}, LO1/c;->g(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, LO1/M;

    .line 23
    .line 24
    iput-boolean v3, v4, LO1/M;->c:Z

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 30
    .line 31
    iget-object v0, v0, Ls1/g;->e:Ljava/lang/Cloneable;

    .line 32
    .line 33
    check-cast v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    :goto_1
    if-ge v1, v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, LO1/c0;

    .line 46
    .line 47
    iget-object v4, v4, LO1/c0;->G:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, LO1/M;

    .line 54
    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    iput-boolean v3, v4, LO1/M;->c:Z

    .line 58
    .line 59
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    return-void
.end method

.method public final T(ZII)V
    .locals 12

    .line 1
    add-int v0, p2, p3

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 4
    .line 5
    invoke-virtual {v1}, LO1/c;->h()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    const/4 v3, 0x1

    .line 11
    const/16 v4, 0x8

    .line 12
    .line 13
    const-string v5, " now at position "

    .line 14
    .line 15
    const-string v6, " holder "

    .line 16
    .line 17
    const-string v7, "RecyclerView"

    .line 18
    .line 19
    if-ge v2, v1, :cond_4

    .line 20
    .line 21
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 22
    .line 23
    invoke-virtual {v8, v2}, LO1/c;->g(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    if-eqz v8, :cond_3

    .line 32
    .line 33
    invoke-virtual {v8}, LO1/c0;->q()Z

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    if-nez v9, :cond_3

    .line 38
    .line 39
    iget v9, v8, LO1/c0;->I:I

    .line 40
    .line 41
    iget-object v10, p0, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 42
    .line 43
    const-string v11, "offsetPositionRecordsForRemove attached child "

    .line 44
    .line 45
    if-lt v9, v0, :cond_1

    .line 46
    .line 47
    sget-boolean v4, Landroidx/recyclerview/widget/RecyclerView;->j1:Z

    .line 48
    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v5, v8, LO1/c0;->I:I

    .line 69
    .line 70
    sub-int/2addr v5, p3

    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_0
    neg-int v4, p3

    .line 82
    invoke-virtual {v8, v4, p1}, LO1/c0;->n(IZ)V

    .line 83
    .line 84
    .line 85
    iput-boolean v3, v10, LO1/Y;->f:Z

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    if-lt v9, p2, :cond_3

    .line 89
    .line 90
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->j1:Z

    .line 91
    .line 92
    if-eqz v5, :cond_2

    .line 93
    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v6, " now REMOVED"

    .line 109
    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_2
    add-int/lit8 v5, p2, -0x1

    .line 121
    .line 122
    neg-int v6, p3

    .line 123
    invoke-virtual {v8, v4}, LO1/c0;->b(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v8, v6, p1}, LO1/c0;->n(IZ)V

    .line 127
    .line 128
    .line 129
    iput v5, v8, LO1/c0;->I:I

    .line 130
    .line 131
    iput-boolean v3, v10, LO1/Y;->f:Z

    .line 132
    .line 133
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 137
    .line 138
    iget-object v2, v1, Ls1/g;->e:Ljava/lang/Cloneable;

    .line 139
    .line 140
    check-cast v2, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    sub-int/2addr v8, v3

    .line 147
    :goto_2
    if-ltz v8, :cond_8

    .line 148
    .line 149
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, LO1/c0;

    .line 154
    .line 155
    if-eqz v3, :cond_7

    .line 156
    .line 157
    iget v9, v3, LO1/c0;->I:I

    .line 158
    .line 159
    if-lt v9, v0, :cond_6

    .line 160
    .line 161
    sget-boolean v9, Landroidx/recyclerview/widget/RecyclerView;->j1:Z

    .line 162
    .line 163
    if-eqz v9, :cond_5

    .line 164
    .line 165
    new-instance v9, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v10, "offsetPositionRecordsForRemove cached "

    .line 168
    .line 169
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget v10, v3, LO1/c0;->I:I

    .line 185
    .line 186
    sub-int/2addr v10, p3

    .line 187
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    :cond_5
    neg-int v9, p3

    .line 198
    invoke-virtual {v3, v9, p1}, LO1/c0;->n(IZ)V

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_6
    if-lt v9, p2, :cond_7

    .line 203
    .line 204
    invoke-virtual {v3, v4}, LO1/c0;->b(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v8}, Ls1/g;->h(I)V

    .line 208
    .line 209
    .line 210
    :cond_7
    :goto_3
    add-int/lit8 v8, v8, -0x1

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method public final U()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o0:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o0:I

    .line 6
    .line 7
    return-void
.end method

.method public final V(Z)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o0:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o0:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_6

    .line 8
    .line 9
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->i1:Z

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "layout or scroll counter cannot go below zero.Some calls are not matching"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 34
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o0:I

    .line 35
    .line 36
    if-eqz p1, :cond_6

    .line 37
    .line 38
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->j0:I

    .line 39
    .line 40
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->j0:I

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l0:Landroid/view/accessibility/AccessibilityManager;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/16 v2, 0x800

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->a1:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    sub-int/2addr v0, v1

    .line 76
    :goto_1
    if-ltz v0, :cond_5

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, LO1/c0;

    .line 83
    .line 84
    iget-object v2, v1, LO1/c0;->G:Landroid/view/View;

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    if-ne v2, p0, :cond_4

    .line 91
    .line 92
    invoke-virtual {v1}, LO1/c0;->q()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    iget v2, v1, LO1/c0;->W:I

    .line 100
    .line 101
    const/4 v3, -0x1

    .line 102
    if-eq v2, v3, :cond_4

    .line 103
    .line 104
    iget-object v4, v1, LO1/c0;->G:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {v4, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 107
    .line 108
    .line 109
    iput v3, v1, LO1/c0;->W:I

    .line 110
    .line 111
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 115
    .line 116
    .line 117
    :cond_6
    return-void
.end method

.method public final W(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->x0:I

    .line 10
    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->x0:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/high16 v2, 0x3f000000    # 0.5f

    .line 29
    .line 30
    add-float/2addr v1, v2

    .line 31
    float-to-int v1, v1

    .line 32
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->B0:I

    .line 33
    .line 34
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->z0:I

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    add-float/2addr p1, v2

    .line 41
    float-to-int p1, p1

    .line 42
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->C0:I

    .line 43
    .line 44
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->A0:I

    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final X()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, LN/N;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b1:LO1/A;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final Y()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:LO1/b;

    .line 7
    .line 8
    iget-object v2, v0, LO1/b;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, LO1/b;->l(Ljava/util/ArrayList;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, LO1/b;->c:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, LO1/b;->l(Ljava/util/ArrayList;)V

    .line 16
    .line 17
    .line 18
    iput v1, v0, LO1/b;->f:I

    .line 19
    .line 20
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->n0:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 25
    .line 26
    invoke-virtual {v0}, LO1/L;->i0()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 34
    .line 35
    invoke-virtual {v0}, LO1/L;->S0()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:LO1/b;

    .line 42
    .line 43
    invoke-virtual {v0}, LO1/b;->j()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:LO1/b;

    .line 48
    .line 49
    invoke-virtual {v0}, LO1/b;->c()V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->Q0:Z

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->R0:Z

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 65
    :goto_2
    iget-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Z

    .line 66
    .line 67
    if-eqz v3, :cond_6

    .line 68
    .line 69
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 70
    .line 71
    if-eqz v3, :cond_6

    .line 72
    .line 73
    iget-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->m0:Z

    .line 74
    .line 75
    if-nez v3, :cond_4

    .line 76
    .line 77
    if-nez v0, :cond_4

    .line 78
    .line 79
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 80
    .line 81
    iget-boolean v4, v4, LO1/L;->f:Z

    .line 82
    .line 83
    if-eqz v4, :cond_6

    .line 84
    .line 85
    :cond_4
    if-eqz v3, :cond_5

    .line 86
    .line 87
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_5
    const/4 v3, 0x1

    .line 94
    goto :goto_4

    .line 95
    :cond_6
    :goto_3
    const/4 v3, 0x0

    .line 96
    :goto_4
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 97
    .line 98
    iput-boolean v3, v4, LO1/Y;->j:Z

    .line 99
    .line 100
    if-eqz v3, :cond_7

    .line 101
    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m0:Z

    .line 105
    .line 106
    if-nez v0, :cond_7

    .line 107
    .line 108
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 109
    .line 110
    if-eqz v0, :cond_7

    .line 111
    .line 112
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 113
    .line 114
    invoke-virtual {v0}, LO1/L;->S0()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    const/4 v1, 0x1

    .line 121
    :cond_7
    iput-boolean v1, v4, LO1/Y;->k:Z

    .line 122
    .line 123
    return-void
.end method

.method public final Z(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->n0:Z

    .line 2
    .line 3
    or-int/2addr p1, v0

    .line 4
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->n0:Z

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->m0:Z

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 10
    .line 11
    invoke-virtual {p1}, LO1/c;->h()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    const/4 v2, 0x6

    .line 18
    if-ge v1, p1, :cond_1

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 21
    .line 22
    invoke-virtual {v3, v1}, LO1/c;->g(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {v3}, LO1/c0;->q()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    invoke-virtual {v3, v2}, LO1/c0;->b(I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->S()V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 48
    .line 49
    iget-object v1, p1, Ls1/g;->e:Ljava/lang/Cloneable;

    .line 50
    .line 51
    check-cast v1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    :goto_1
    if-ge v0, v3, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, LO1/c0;

    .line 64
    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    invoke-virtual {v4, v2}, LO1/c0;->b(I)V

    .line 68
    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    invoke-virtual {v4, v5}, LO1/c0;->a(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    iget-object v0, p1, Ls1/g;->i:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    .line 81
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 82
    .line 83
    invoke-virtual {p1}, Ls1/g;->g()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final a0(LO1/c0;Lj0/c;)V
    .locals 4

    .line 1
    iget v0, p1, LO1/c0;->P:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x2001

    .line 4
    .line 5
    iput v0, p1, LO1/c0;->P:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 8
    .line 9
    iget-boolean v0, v0, LO1/Y;->h:Z

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->M:LO1/o0;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, LO1/c0;->m()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, LO1/c0;->j()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, LO1/c0;->q()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget v0, p1, LO1/c0;->I:I

    .line 39
    .line 40
    int-to-long v2, v0

    .line 41
    iget-object v0, v1, LO1/o0;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lr/j;

    .line 44
    .line 45
    invoke-virtual {v0, p1, v2, v3}, Lr/j;->g(Ljava/lang/Object;J)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {v1, p1, p2}, LO1/o0;->c(LO1/c0;Lj0/c;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, LO1/L;->Z(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method public final b0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    or-int/2addr v0, v1

    .line 30
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    or-int/2addr v0, v1

    .line 44
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    or-int/2addr v0, v1

    .line 58
    :cond_3
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 61
    .line 62
    .line 63
    :cond_4
    return-void
.end method

.method public final c0(IF)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    div-float/2addr p2, v0

    .line 7
    int-to-float p1, p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    div-float/2addr p1, v0

    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-static {v0}, LE3/f;->m(Landroid/widget/EdgeEffect;)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    cmpl-float v0, v0, v1

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    const/4 v0, -0x1

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 41
    .line 42
    neg-float p1, p1

    .line 43
    const/high16 v2, 0x3f800000    # 1.0f

    .line 44
    .line 45
    sub-float/2addr v2, p2

    .line 46
    invoke-static {v0, p1, v2}, LE3/f;->u(Landroid/widget/EdgeEffect;FF)F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    neg-float p1, p1

    .line 51
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 52
    .line 53
    invoke-static {p2}, LE3/f;->m(Landroid/widget/EdgeEffect;)F

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    cmpl-float p2, p2, v1

    .line 58
    .line 59
    if-nez p2, :cond_1

    .line 60
    .line 61
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 64
    .line 65
    .line 66
    :cond_1
    move v1, p1

    .line 67
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    invoke-static {v0}, LE3/f;->m(Landroid/widget/EdgeEffect;)F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    cmpl-float v0, v0, v1

    .line 80
    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 97
    .line 98
    invoke-static {v0, p1, p2}, LE3/f;->u(Landroid/widget/EdgeEffect;FF)F

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 103
    .line 104
    invoke-static {p2}, LE3/f;->m(Landroid/widget/EdgeEffect;)F

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    cmpl-float p2, p2, v1

    .line 109
    .line 110
    if-nez p2, :cond_4

    .line 111
    .line 112
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 115
    .line 116
    .line 117
    :cond_4
    move v1, p1

    .line 118
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 119
    .line 120
    .line 121
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    int-to-float p1, p1

    .line 126
    mul-float v1, v1, p1

    .line 127
    .line 128
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    return p1
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, LO1/M;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 6
    .line 7
    check-cast p1, LO1/M;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, LO1/L;->g(LO1/M;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method public final computeHorizontalScrollExtent()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, LO1/L;->e()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, LO1/L;->k(LO1/Y;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :cond_1
    return v1
.end method

.method public final computeHorizontalScrollOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, LO1/L;->e()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, LO1/L;->l(LO1/Y;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :cond_1
    return v1
.end method

.method public final computeHorizontalScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, LO1/L;->e()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, LO1/L;->m(LO1/Y;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :cond_1
    return v1
.end method

.method public final computeVerticalScrollExtent()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, LO1/L;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, LO1/L;->n(LO1/Y;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :cond_1
    return v1
.end method

.method public final computeVerticalScrollOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, LO1/L;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, LO1/L;->o(LO1/Y;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :cond_1
    return v1
.end method

.method public final computeVerticalScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, LO1/L;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, LO1/L;->p(LO1/Y;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :cond_1
    return v1
.end method

.method public final d0(IF)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    div-float/2addr p2, v0

    .line 7
    int-to-float p1, p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    div-float/2addr p1, v0

    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-static {v0}, LE3/f;->m(Landroid/widget/EdgeEffect;)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    cmpl-float v0, v0, v1

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    const/4 v0, -0x1

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 41
    .line 42
    neg-float p1, p1

    .line 43
    invoke-static {v0, p1, p2}, LE3/f;->u(Landroid/widget/EdgeEffect;FF)F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    neg-float p1, p1

    .line 48
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 49
    .line 50
    invoke-static {p2}, LE3/f;->m(Landroid/widget/EdgeEffect;)F

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    cmpl-float p2, p2, v1

    .line 55
    .line 56
    if-nez p2, :cond_1

    .line 57
    .line 58
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 61
    .line 62
    .line 63
    :cond_1
    move v1, p1

    .line 64
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    invoke-static {v0}, LE3/f;->m(Landroid/widget/EdgeEffect;)F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    cmpl-float v0, v0, v1

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 94
    .line 95
    const/high16 v2, 0x3f800000    # 1.0f

    .line 96
    .line 97
    sub-float/2addr v2, p2

    .line 98
    invoke-static {v0, p1, v2}, LE3/f;->u(Landroid/widget/EdgeEffect;FF)F

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 103
    .line 104
    invoke-static {p2}, LE3/f;->m(Landroid/widget/EdgeEffect;)F

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    cmpl-float p2, p2, v1

    .line 109
    .line 110
    if-nez p2, :cond_4

    .line 111
    .line 112
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 115
    .line 116
    .line 117
    :cond_4
    move v1, p1

    .line 118
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 119
    .line 120
    .line 121
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    int-to-float p1, p1

    .line 126
    mul-float v1, v1, p1

    .line 127
    .line 128
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()LO1/L;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return v2

    .line 17
    :cond_1
    invoke-virtual {v0}, LO1/L;->f()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/16 v4, 0x7b

    .line 22
    .line 23
    const/16 v5, 0x5c

    .line 24
    .line 25
    const/16 v6, 0x7a

    .line 26
    .line 27
    const/16 v7, 0x5d

    .line 28
    .line 29
    if-eqz v3, :cond_8

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eq p1, v5, :cond_6

    .line 36
    .line 37
    if-eq p1, v7, :cond_6

    .line 38
    .line 39
    if-eq p1, v6, :cond_2

    .line 40
    .line 41
    if-eq p1, v4, :cond_2

    .line 42
    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_2
    invoke-virtual {v0}, LO1/L;->S()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-ne p1, v6, :cond_3

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()LO1/C;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, LO1/C;->a()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    if-eqz v0, :cond_4

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()LO1/C;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, LO1/C;->a()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    :cond_5
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->k0(I)V

    .line 74
    .line 75
    .line 76
    return v1

    .line 77
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-ne p1, v7, :cond_7

    .line 82
    .line 83
    invoke-virtual {p0, v2, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->j0(IIZ)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_7
    neg-int p1, v0

    .line 88
    invoke-virtual {p0, v2, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->j0(IIZ)V

    .line 89
    .line 90
    .line 91
    :goto_1
    return v1

    .line 92
    :cond_8
    invoke-virtual {v0}, LO1/L;->e()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_f

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eq p1, v5, :cond_d

    .line 103
    .line 104
    if-eq p1, v7, :cond_d

    .line 105
    .line 106
    if-eq p1, v6, :cond_9

    .line 107
    .line 108
    if-eq p1, v4, :cond_9

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_9
    invoke-virtual {v0}, LO1/L;->S()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-ne p1, v6, :cond_a

    .line 116
    .line 117
    if-eqz v0, :cond_c

    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()LO1/C;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, LO1/C;->a()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    goto :goto_2

    .line 128
    :cond_a
    if-eqz v0, :cond_b

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()LO1/C;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, LO1/C;->a()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    :cond_c
    :goto_2
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->k0(I)V

    .line 140
    .line 141
    .line 142
    return v1

    .line 143
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-ne p1, v7, :cond_e

    .line 148
    .line 149
    invoke-virtual {p0, v0, v2, v2}, Landroidx/recyclerview/widget/RecyclerView;->j0(IIZ)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_e
    neg-int p1, v0

    .line 154
    invoke-virtual {p0, p1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView;->j0(IIZ)V

    .line 155
    .line 156
    .line 157
    :goto_3
    return v1

    .line 158
    :cond_f
    :goto_4
    return v2
.end method

.method public final dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()LN/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, LN/o;->a(FFZ)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()LN/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, LN/o;->b(FF)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()LN/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v3, 0x0

    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move-object v4, p3

    .line 9
    move-object v5, p4

    .line 10
    invoke-virtual/range {v0 .. v5}, LN/o;->c(III[I[I)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final dispatchNestedScroll(IIII[I)Z
    .locals 8

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()LN/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v7, 0x0

    .line 7
    move v1, p1

    .line 8
    move v2, p2

    .line 9
    move v3, p3

    .line 10
    move v4, p4

    .line 11
    move-object v5, p5

    .line 12
    invoke-virtual/range {v0 .. v7}, LN/o;->e(IIII[II[I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, LO1/I;

    .line 19
    .line 20
    invoke-virtual {v4, p1}, LO1/I;->c(Landroid/graphics/Canvas;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Z

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v4, 0x0

    .line 51
    :goto_1
    const/high16 v5, 0x43870000    # 270.0f

    .line 52
    .line 53
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    neg-int v5, v5

    .line 61
    add-int/2addr v5, v4

    .line 62
    int-to-float v4, v5

    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 65
    .line 66
    .line 67
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 68
    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    const/4 v4, 0x1

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    const/4 v4, 0x0

    .line 80
    :goto_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    const/4 v4, 0x0

    .line 85
    :goto_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 86
    .line 87
    if-eqz v1, :cond_6

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_6

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    iget-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Z

    .line 100
    .line 101
    if-eqz v5, :cond_4

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    int-to-float v5, v5

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    int-to-float v6, v6

    .line 113
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 114
    .line 115
    .line 116
    :cond_4
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 117
    .line 118
    if-eqz v5, :cond_5

    .line 119
    .line 120
    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_5

    .line 125
    .line 126
    const/4 v5, 0x1

    .line 127
    goto :goto_4

    .line 128
    :cond_5
    const/4 v5, 0x0

    .line 129
    :goto_4
    or-int/2addr v4, v5

    .line 130
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 131
    .line 132
    .line 133
    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 134
    .line 135
    if-eqz v1, :cond_9

    .line 136
    .line 137
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_9

    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    iget-boolean v6, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Z

    .line 152
    .line 153
    if-eqz v6, :cond_7

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    goto :goto_5

    .line 160
    :cond_7
    const/4 v6, 0x0

    .line 161
    :goto_5
    const/high16 v7, 0x42b40000    # 90.0f

    .line 162
    .line 163
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 164
    .line 165
    .line 166
    int-to-float v6, v6

    .line 167
    neg-int v5, v5

    .line 168
    int-to-float v5, v5

    .line 169
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 170
    .line 171
    .line 172
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 173
    .line 174
    if-eqz v5, :cond_8

    .line 175
    .line 176
    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-eqz v5, :cond_8

    .line 181
    .line 182
    const/4 v5, 0x1

    .line 183
    goto :goto_6

    .line 184
    :cond_8
    const/4 v5, 0x0

    .line 185
    :goto_6
    or-int/2addr v4, v5

    .line 186
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 187
    .line 188
    .line 189
    :cond_9
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 190
    .line 191
    if-eqz v1, :cond_c

    .line 192
    .line 193
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-nez v1, :cond_c

    .line 198
    .line 199
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    const/high16 v5, 0x43340000    # 180.0f

    .line 204
    .line 205
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 206
    .line 207
    .line 208
    iget-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Z

    .line 209
    .line 210
    if-eqz v5, :cond_a

    .line 211
    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    neg-int v5, v5

    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    add-int/2addr v6, v5

    .line 222
    int-to-float v5, v6

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    neg-int v6, v6

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    add-int/2addr v7, v6

    .line 233
    int-to-float v6, v7

    .line 234
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 235
    .line 236
    .line 237
    goto :goto_7

    .line 238
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    neg-int v5, v5

    .line 243
    int-to-float v5, v5

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    neg-int v6, v6

    .line 249
    int-to-float v6, v6

    .line 250
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 251
    .line 252
    .line 253
    :goto_7
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 254
    .line 255
    if-eqz v5, :cond_b

    .line 256
    .line 257
    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    if-eqz v5, :cond_b

    .line 262
    .line 263
    const/4 v2, 0x1

    .line 264
    :cond_b
    or-int/2addr v4, v2

    .line 265
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 266
    .line 267
    .line 268
    :cond_c
    if-nez v4, :cond_d

    .line 269
    .line 270
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 271
    .line 272
    if-eqz p1, :cond_d

    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    if-lez p1, :cond_d

    .line 279
    .line 280
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 281
    .line 282
    invoke-virtual {p1}, LO1/H;->f()Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_d

    .line 287
    .line 288
    goto :goto_8

    .line 289
    :cond_d
    if-eqz v4, :cond_e

    .line 290
    .line 291
    :goto_8
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 292
    .line 293
    .line 294
    :cond_e
    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final e0(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    move-object v0, p2

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    move-object v0, p1

    .line 6
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->P:Landroid/graphics/Rect;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, LO1/M;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    check-cast v0, LO1/M;

    .line 29
    .line 30
    iget-boolean v1, v0, LO1/M;->c:Z

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    iget v1, v3, Landroid/graphics/Rect;->left:I

    .line 35
    .line 36
    iget-object v0, v0, LO1/M;->b:Landroid/graphics/Rect;

    .line 37
    .line 38
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 39
    .line 40
    sub-int/2addr v1, v2

    .line 41
    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    iget v1, v3, Landroid/graphics/Rect;->right:I

    .line 44
    .line 45
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 46
    .line 47
    add-int/2addr v1, v2

    .line 48
    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 49
    .line 50
    iget v1, v3, Landroid/graphics/Rect;->top:I

    .line 51
    .line 52
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 53
    .line 54
    sub-int/2addr v1, v2

    .line 55
    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 56
    .line 57
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 58
    .line 59
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 60
    .line 61
    add-int/2addr v1, v0

    .line 62
    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 63
    .line 64
    :cond_1
    if-eqz p2, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0, p2, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 73
    .line 74
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Z

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    xor-int/lit8 v9, v0, 0x1

    .line 78
    .line 79
    if-nez p2, :cond_3

    .line 80
    .line 81
    const/4 v10, 0x1

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const/4 v10, 0x0

    .line 84
    :goto_1
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->P:Landroid/graphics/Rect;

    .line 85
    .line 86
    move-object v6, p0

    .line 87
    move-object v7, p1

    .line 88
    invoke-virtual/range {v5 .. v10}, LO1/L;->C0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final f0(IILandroid/view/MotionEvent;I)Z
    .locals 19

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v9, p1

    .line 4
    .line 5
    move/from16 v10, p2

    .line 6
    .line 7
    move-object/from16 v11, p3

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    .line 10
    .line 11
    .line 12
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 13
    .line 14
    iget-object v12, v8, Landroidx/recyclerview/widget/RecyclerView;->Z0:[I

    .line 15
    .line 16
    const/4 v13, 0x1

    .line 17
    const/4 v14, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    aput v14, v12, v14

    .line 21
    .line 22
    aput v14, v12, v13

    .line 23
    .line 24
    invoke-virtual {v8, v9, v10, v12}, Landroidx/recyclerview/widget/RecyclerView;->g0(II[I)V

    .line 25
    .line 26
    .line 27
    aget v0, v12, v14

    .line 28
    .line 29
    aget v1, v12, v13

    .line 30
    .line 31
    sub-int v2, v9, v0

    .line 32
    .line 33
    sub-int v3, v10, v1

    .line 34
    .line 35
    move v15, v0

    .line 36
    move v7, v1

    .line 37
    move/from16 v16, v2

    .line 38
    .line 39
    move/from16 v17, v3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v7, 0x0

    .line 43
    const/4 v15, 0x0

    .line 44
    const/16 v16, 0x0

    .line 45
    .line 46
    const/16 v17, 0x0

    .line 47
    .line 48
    :goto_0
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView;->W:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 57
    .line 58
    .line 59
    :cond_1
    aput v14, v12, v14

    .line 60
    .line 61
    aput v14, v12, v13

    .line 62
    .line 63
    iget-object v5, v8, Landroidx/recyclerview/widget/RecyclerView;->X0:[I

    .line 64
    .line 65
    move-object/from16 v0, p0

    .line 66
    .line 67
    move v1, v15

    .line 68
    move v2, v7

    .line 69
    move/from16 v3, v16

    .line 70
    .line 71
    move/from16 v4, v17

    .line 72
    .line 73
    move/from16 v6, p4

    .line 74
    .line 75
    move/from16 v18, v7

    .line 76
    .line 77
    move-object v7, v12

    .line 78
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/RecyclerView;->v(IIII[II[I)V

    .line 79
    .line 80
    .line 81
    aget v0, v12, v14

    .line 82
    .line 83
    sub-int v1, v16, v0

    .line 84
    .line 85
    aget v2, v12, v13

    .line 86
    .line 87
    sub-int v3, v17, v2

    .line 88
    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    if-eqz v2, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/4 v0, 0x0

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 97
    :goto_2
    iget v2, v8, Landroidx/recyclerview/widget/RecyclerView;->B0:I

    .line 98
    .line 99
    iget-object v4, v8, Landroidx/recyclerview/widget/RecyclerView;->X0:[I

    .line 100
    .line 101
    aget v5, v4, v14

    .line 102
    .line 103
    sub-int/2addr v2, v5

    .line 104
    iput v2, v8, Landroidx/recyclerview/widget/RecyclerView;->B0:I

    .line 105
    .line 106
    iget v2, v8, Landroidx/recyclerview/widget/RecyclerView;->C0:I

    .line 107
    .line 108
    aget v4, v4, v13

    .line 109
    .line 110
    sub-int/2addr v2, v4

    .line 111
    iput v2, v8, Landroidx/recyclerview/widget/RecyclerView;->C0:I

    .line 112
    .line 113
    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView;->Y0:[I

    .line 114
    .line 115
    aget v6, v2, v14

    .line 116
    .line 117
    add-int/2addr v6, v5

    .line 118
    aput v6, v2, v14

    .line 119
    .line 120
    aget v5, v2, v13

    .line 121
    .line 122
    add-int/2addr v5, v4

    .line 123
    aput v5, v2, v13

    .line 124
    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    const/4 v4, 0x2

    .line 130
    if-eq v2, v4, :cond_b

    .line 131
    .line 132
    if-eqz v11, :cond_a

    .line 133
    .line 134
    const/16 v2, 0x2002

    .line 135
    .line 136
    invoke-static {v11, v2}, LZ3/H;->m(Landroid/view/MotionEvent;I)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-nez v2, :cond_a

    .line 141
    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    int-to-float v1, v1

    .line 147
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    int-to-float v3, v3

    .line 152
    const/high16 v5, 0x3f800000    # 1.0f

    .line 153
    .line 154
    const/4 v6, 0x0

    .line 155
    cmpg-float v7, v1, v6

    .line 156
    .line 157
    if-gez v7, :cond_4

    .line 158
    .line 159
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->y()V

    .line 160
    .line 161
    .line 162
    iget-object v7, v8, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 163
    .line 164
    neg-float v12, v1

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 166
    .line 167
    .line 168
    move-result v13

    .line 169
    int-to-float v13, v13

    .line 170
    div-float/2addr v12, v13

    .line 171
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 172
    .line 173
    .line 174
    move-result v13

    .line 175
    int-to-float v13, v13

    .line 176
    div-float/2addr v4, v13

    .line 177
    sub-float v4, v5, v4

    .line 178
    .line 179
    invoke-static {v7, v12, v4}, LE3/f;->u(Landroid/widget/EdgeEffect;FF)F

    .line 180
    .line 181
    .line 182
    :goto_3
    const/4 v4, 0x1

    .line 183
    goto :goto_4

    .line 184
    :cond_4
    cmpl-float v7, v1, v6

    .line 185
    .line 186
    if-lez v7, :cond_5

    .line 187
    .line 188
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->z()V

    .line 189
    .line 190
    .line 191
    iget-object v7, v8, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 192
    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 194
    .line 195
    .line 196
    move-result v12

    .line 197
    int-to-float v12, v12

    .line 198
    div-float v12, v1, v12

    .line 199
    .line 200
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 201
    .line 202
    .line 203
    move-result v13

    .line 204
    int-to-float v13, v13

    .line 205
    div-float/2addr v4, v13

    .line 206
    invoke-static {v7, v12, v4}, LE3/f;->u(Landroid/widget/EdgeEffect;FF)F

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_5
    const/4 v4, 0x0

    .line 211
    :goto_4
    cmpg-float v7, v3, v6

    .line 212
    .line 213
    if-gez v7, :cond_6

    .line 214
    .line 215
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->A()V

    .line 216
    .line 217
    .line 218
    iget-object v1, v8, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 219
    .line 220
    neg-float v3, v3

    .line 221
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    int-to-float v4, v4

    .line 226
    div-float/2addr v3, v4

    .line 227
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    int-to-float v4, v4

    .line 232
    div-float/2addr v2, v4

    .line 233
    invoke-static {v1, v3, v2}, LE3/f;->u(Landroid/widget/EdgeEffect;FF)F

    .line 234
    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_6
    cmpl-float v7, v3, v6

    .line 238
    .line 239
    if-lez v7, :cond_7

    .line 240
    .line 241
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->x()V

    .line 242
    .line 243
    .line 244
    iget-object v1, v8, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 245
    .line 246
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    int-to-float v4, v4

    .line 251
    div-float/2addr v3, v4

    .line 252
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    int-to-float v4, v4

    .line 257
    div-float/2addr v2, v4

    .line 258
    sub-float/2addr v5, v2

    .line 259
    invoke-static {v1, v3, v5}, LE3/f;->u(Landroid/widget/EdgeEffect;FF)F

    .line 260
    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_7
    if-nez v4, :cond_8

    .line 264
    .line 265
    cmpl-float v1, v1, v6

    .line 266
    .line 267
    if-nez v1, :cond_8

    .line 268
    .line 269
    if-eqz v7, :cond_9

    .line 270
    .line 271
    :cond_8
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 272
    .line 273
    .line 274
    :cond_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 275
    .line 276
    const/16 v2, 0x1f

    .line 277
    .line 278
    if-lt v1, v2, :cond_a

    .line 279
    .line 280
    const/high16 v1, 0x400000

    .line 281
    .line 282
    invoke-static {v11, v1}, LZ3/H;->m(Landroid/view/MotionEvent;I)Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-eqz v1, :cond_a

    .line 287
    .line 288
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->b0()V

    .line 289
    .line 290
    .line 291
    :cond_a
    invoke-virtual/range {p0 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->n(II)V

    .line 292
    .line 293
    .line 294
    :cond_b
    move/from16 v1, v18

    .line 295
    .line 296
    if-nez v15, :cond_c

    .line 297
    .line 298
    if-eqz v1, :cond_d

    .line 299
    .line 300
    :cond_c
    invoke-virtual {v8, v15, v1}, Landroidx/recyclerview/widget/RecyclerView;->w(II)V

    .line 301
    .line 302
    .line 303
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-nez v2, :cond_e

    .line 308
    .line 309
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 310
    .line 311
    .line 312
    :cond_e
    if-nez v0, :cond_10

    .line 313
    .line 314
    if-nez v15, :cond_10

    .line 315
    .line 316
    if-eqz v1, :cond_f

    .line 317
    .line 318
    goto :goto_6

    .line 319
    :cond_f
    const/4 v13, 0x0

    .line 320
    goto :goto_7

    .line 321
    :cond_10
    :goto_6
    const/4 v13, 0x1

    .line 322
    :goto_7
    return v13
.end method

.method public final focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 8
    .line 9
    invoke-virtual {v3, v1, v2}, LO1/L;->g0(Landroid/view/View;I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->Q()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    .line 33
    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v3, 0x0

    .line 39
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 44
    .line 45
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 46
    .line 47
    const/16 v9, 0x11

    .line 48
    .line 49
    const/16 v11, 0x21

    .line 50
    .line 51
    const/4 v13, 0x0

    .line 52
    const/4 v14, 0x2

    .line 53
    if-eqz v3, :cond_b

    .line 54
    .line 55
    if-eq v2, v14, :cond_2

    .line 56
    .line 57
    if-ne v2, v4, :cond_b

    .line 58
    .line 59
    :cond_2
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 60
    .line 61
    invoke-virtual {v3}, LO1/L;->f()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    if-ne v2, v14, :cond_3

    .line 68
    .line 69
    const/16 v3, 0x82

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/16 v3, 0x21

    .line 73
    .line 74
    :goto_1
    invoke-virtual {v6, v0, v1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-nez v3, :cond_4

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    const/4 v3, 0x0

    .line 83
    :goto_2
    if-nez v3, :cond_8

    .line 84
    .line 85
    iget-object v15, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 86
    .line 87
    invoke-virtual {v15}, LO1/L;->e()Z

    .line 88
    .line 89
    .line 90
    move-result v15

    .line 91
    if-eqz v15, :cond_8

    .line 92
    .line 93
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 94
    .line 95
    iget-object v3, v3, LO1/L;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 96
    .line 97
    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-ne v3, v4, :cond_5

    .line 102
    .line 103
    const/4 v3, 0x1

    .line 104
    goto :goto_3

    .line 105
    :cond_5
    const/4 v3, 0x0

    .line 106
    :goto_3
    if-ne v2, v14, :cond_6

    .line 107
    .line 108
    const/4 v15, 0x1

    .line 109
    goto :goto_4

    .line 110
    :cond_6
    const/4 v15, 0x0

    .line 111
    :goto_4
    xor-int/2addr v3, v15

    .line 112
    if-eqz v3, :cond_7

    .line 113
    .line 114
    const/16 v3, 0x42

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_7
    const/16 v3, 0x11

    .line 118
    .line 119
    :goto_5
    invoke-virtual {v6, v0, v1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    if-nez v3, :cond_a

    .line 124
    .line 125
    goto :goto_6

    .line 126
    :cond_8
    if-eqz v3, :cond_a

    .line 127
    .line 128
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    .line 129
    .line 130
    .line 131
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->D(Landroid/view/View;)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    if-nez v3, :cond_9

    .line 136
    .line 137
    return-object v13

    .line 138
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->l0()V

    .line 139
    .line 140
    .line 141
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 142
    .line 143
    invoke-virtual {v3, v1, v2, v8, v7}, LO1/L;->b0(Landroid/view/View;ILs1/g;LO1/Y;)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->n0(Z)V

    .line 147
    .line 148
    .line 149
    :cond_a
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    goto :goto_7

    .line 154
    :cond_b
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    if-nez v6, :cond_d

    .line 159
    .line 160
    if-eqz v3, :cond_d

    .line 161
    .line 162
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    .line 163
    .line 164
    .line 165
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->D(Landroid/view/View;)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    if-nez v3, :cond_c

    .line 170
    .line 171
    return-object v13

    .line 172
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->l0()V

    .line 173
    .line 174
    .line 175
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 176
    .line 177
    invoke-virtual {v3, v1, v2, v8, v7}, LO1/L;->b0(Landroid/view/View;ILs1/g;LO1/Y;)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->n0(Z)V

    .line 182
    .line 183
    .line 184
    goto :goto_7

    .line 185
    :cond_d
    move-object v3, v6

    .line 186
    :goto_7
    if-eqz v3, :cond_f

    .line 187
    .line 188
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    if-nez v6, :cond_f

    .line 193
    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    if-nez v4, :cond_e

    .line 199
    .line 200
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    return-object v1

    .line 205
    :cond_e
    invoke-virtual {v0, v3, v13}, Landroidx/recyclerview/widget/RecyclerView;->e0(Landroid/view/View;Landroid/view/View;)V

    .line 206
    .line 207
    .line 208
    return-object v1

    .line 209
    :cond_f
    if-eqz v3, :cond_23

    .line 210
    .line 211
    if-eq v3, v0, :cond_23

    .line 212
    .line 213
    if-ne v3, v1, :cond_10

    .line 214
    .line 215
    goto/16 :goto_b

    .line 216
    .line 217
    :cond_10
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->D(Landroid/view/View;)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    if-nez v6, :cond_11

    .line 222
    .line 223
    goto/16 :goto_b

    .line 224
    .line 225
    :cond_11
    if-nez v1, :cond_12

    .line 226
    .line 227
    goto/16 :goto_c

    .line 228
    .line 229
    :cond_12
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->D(Landroid/view/View;)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    if-nez v6, :cond_13

    .line 234
    .line 235
    goto/16 :goto_c

    .line 236
    .line 237
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->P:Landroid/graphics/Rect;

    .line 246
    .line 247
    invoke-virtual {v8, v5, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 255
    .line 256
    .line 257
    move-result v7

    .line 258
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->Q:Landroid/graphics/Rect;

    .line 259
    .line 260
    invoke-virtual {v13, v5, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v1, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v3, v13}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 267
    .line 268
    .line 269
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 270
    .line 271
    iget-object v6, v6, LO1/L;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 272
    .line 273
    invoke-virtual {v6}, Landroid/view/View;->getLayoutDirection()I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    if-ne v6, v4, :cond_14

    .line 278
    .line 279
    const/4 v6, -0x1

    .line 280
    goto :goto_8

    .line 281
    :cond_14
    const/4 v6, 0x1

    .line 282
    :goto_8
    iget v15, v8, Landroid/graphics/Rect;->left:I

    .line 283
    .line 284
    iget v5, v13, Landroid/graphics/Rect;->left:I

    .line 285
    .line 286
    if-lt v15, v5, :cond_15

    .line 287
    .line 288
    iget v7, v8, Landroid/graphics/Rect;->right:I

    .line 289
    .line 290
    if-gt v7, v5, :cond_16

    .line 291
    .line 292
    :cond_15
    iget v7, v8, Landroid/graphics/Rect;->right:I

    .line 293
    .line 294
    iget v12, v13, Landroid/graphics/Rect;->right:I

    .line 295
    .line 296
    if-ge v7, v12, :cond_16

    .line 297
    .line 298
    const/4 v5, 0x1

    .line 299
    goto :goto_9

    .line 300
    :cond_16
    iget v7, v8, Landroid/graphics/Rect;->right:I

    .line 301
    .line 302
    iget v12, v13, Landroid/graphics/Rect;->right:I

    .line 303
    .line 304
    if-gt v7, v12, :cond_17

    .line 305
    .line 306
    if-lt v15, v12, :cond_18

    .line 307
    .line 308
    :cond_17
    if-le v15, v5, :cond_18

    .line 309
    .line 310
    const/4 v5, -0x1

    .line 311
    goto :goto_9

    .line 312
    :cond_18
    const/4 v5, 0x0

    .line 313
    :goto_9
    iget v7, v8, Landroid/graphics/Rect;->top:I

    .line 314
    .line 315
    iget v12, v13, Landroid/graphics/Rect;->top:I

    .line 316
    .line 317
    if-lt v7, v12, :cond_19

    .line 318
    .line 319
    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    .line 320
    .line 321
    if-gt v15, v12, :cond_1a

    .line 322
    .line 323
    :cond_19
    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    .line 324
    .line 325
    iget v10, v13, Landroid/graphics/Rect;->bottom:I

    .line 326
    .line 327
    if-ge v15, v10, :cond_1a

    .line 328
    .line 329
    const/16 v16, 0x1

    .line 330
    .line 331
    goto :goto_a

    .line 332
    :cond_1a
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 333
    .line 334
    iget v10, v13, Landroid/graphics/Rect;->bottom:I

    .line 335
    .line 336
    if-gt v8, v10, :cond_1b

    .line 337
    .line 338
    if-lt v7, v10, :cond_1c

    .line 339
    .line 340
    :cond_1b
    if-le v7, v12, :cond_1c

    .line 341
    .line 342
    const/16 v16, -0x1

    .line 343
    .line 344
    goto :goto_a

    .line 345
    :cond_1c
    const/16 v16, 0x0

    .line 346
    .line 347
    :goto_a
    if-eq v2, v4, :cond_22

    .line 348
    .line 349
    if-eq v2, v14, :cond_21

    .line 350
    .line 351
    if-eq v2, v9, :cond_20

    .line 352
    .line 353
    if-eq v2, v11, :cond_1f

    .line 354
    .line 355
    const/16 v4, 0x42

    .line 356
    .line 357
    if-eq v2, v4, :cond_1e

    .line 358
    .line 359
    const/16 v4, 0x82

    .line 360
    .line 361
    if-ne v2, v4, :cond_1d

    .line 362
    .line 363
    if-lez v16, :cond_23

    .line 364
    .line 365
    goto :goto_c

    .line 366
    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 367
    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    const-string v4, "Invalid direction: "

    .line 371
    .line 372
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-static {v0, v3}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    throw v1

    .line 386
    :cond_1e
    if-lez v5, :cond_23

    .line 387
    .line 388
    goto :goto_c

    .line 389
    :cond_1f
    if-gez v16, :cond_23

    .line 390
    .line 391
    goto :goto_c

    .line 392
    :cond_20
    if-gez v5, :cond_23

    .line 393
    .line 394
    goto :goto_c

    .line 395
    :cond_21
    if-gtz v16, :cond_24

    .line 396
    .line 397
    if-nez v16, :cond_23

    .line 398
    .line 399
    mul-int v5, v5, v6

    .line 400
    .line 401
    if-lez v5, :cond_23

    .line 402
    .line 403
    goto :goto_c

    .line 404
    :cond_22
    if-ltz v16, :cond_24

    .line 405
    .line 406
    if-nez v16, :cond_23

    .line 407
    .line 408
    mul-int v5, v5, v6

    .line 409
    .line 410
    if-gez v5, :cond_23

    .line 411
    .line 412
    goto :goto_c

    .line 413
    :cond_23
    :goto_b
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    :cond_24
    :goto_c
    return-object v3
.end method

.method public final g0(II[I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->l0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->U()V

    .line 5
    .line 6
    .line 7
    const-string v0, "RV Scroll"

    .line 8
    .line 9
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->C(LO1/Y;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 23
    .line 24
    invoke-virtual {v3, p1, v1, v0}, LO1/L;->F0(ILs1/g;LO1/Y;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    if-eqz p2, :cond_1

    .line 31
    .line 32
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 33
    .line 34
    invoke-virtual {v3, p2, v1, v0}, LO1/L;->H0(ILs1/g;LO1/Y;)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 p2, 0x0

    .line 40
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 44
    .line 45
    invoke-virtual {v0}, LO1/c;->e()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x0

    .line 50
    :goto_2
    if-ge v1, v0, :cond_4

    .line 51
    .line 52
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 53
    .line 54
    invoke-virtual {v3, v1}, LO1/c;->d(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)LO1/c0;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    iget-object v4, v4, LO1/c0;->O:LO1/c0;

    .line 65
    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iget-object v4, v4, LO1/c0;->G:Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-ne v5, v6, :cond_2

    .line 83
    .line 84
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eq v3, v6, :cond_3

    .line 89
    .line 90
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    add-int/2addr v6, v5

    .line 95
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    add-int/2addr v7, v3

    .line 100
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 101
    .line 102
    .line 103
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    const/4 v0, 0x1

    .line 107
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->V(Z)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->n0(Z)V

    .line 111
    .line 112
    .line 113
    if-eqz p3, :cond_5

    .line 114
    .line 115
    aput p1, p3, v2

    .line 116
    .line 117
    aput p2, p3, v0

    .line 118
    .line 119
    :cond_5
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, LO1/L;->t()LO1/M;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "RecyclerView has no LayoutManager"

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v1}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, LO1/L;->u(Landroid/content/Context;Landroid/util/AttributeSet;)LO1/M;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p0, v0}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1}, LO1/L;->v(Landroid/view/ViewGroup$LayoutParams;)LO1/M;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {p0, v0}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const-string v0, "androidx.recyclerview.widget.RecyclerView"

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdapter()LO1/C;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getChildDrawingOrder(II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getClipToPadding()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Z

    .line 2
    .line 3
    return v0
.end method

.method public getCompatAccessibilityDelegate()LO1/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->U0:LO1/e0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEdgeEffectFactory()LO1/G;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->q0:LO1/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemAnimator()LO1/H;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemDecorationCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLayoutManager()LO1/L;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G0:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F0:I

    .line 2
    .line 3
    return v0
.end method

.method public getNanoTime()J
    .locals 2

    .line 1
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->n1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public getOnFlingListener()LO1/N;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->E0:LO1/N;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->J0:Z

    .line 2
    .line 3
    return v0
.end method

.method public getRecycledViewPool()LO1/S;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls1/g;->c()LO1/S;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->w0:I

    .line 2
    .line 3
    return v0
.end method

.method public final h(LO1/c0;)V
    .locals 5

    .line 1
    iget-object v0, p1, LO1/c0;->G:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v1, p0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)LO1/c0;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v3, v4}, Ls1/g;->m(LO1/c0;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, LO1/c0;->l()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v3, -0x1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v0, v3, v1, v2}, LO1/c;->b(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    if-nez v1, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 42
    .line 43
    invoke-virtual {p1, v3, v0, v2}, LO1/c;->a(ILandroid/view/View;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 48
    .line 49
    iget-object v1, p1, LO1/c;->a:LO1/B;

    .line 50
    .line 51
    iget-object v1, v1, LO1/B;->G:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-ltz v1, :cond_3

    .line 58
    .line 59
    iget-object v2, p1, LO1/c;->b:Lf6/c;

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Lf6/c;->j(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, LO1/c;->i(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    return-void

    .line 68
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "view is not a child, cannot hide "

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method public final h0(Landroid/widget/EdgeEffect;II)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p1}, LE3/f;->m(Landroid/widget/EdgeEffect;)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-float p3, p3

    .line 10
    mul-float p1, p1, p3

    .line 11
    .line 12
    neg-int p2, p2

    .line 13
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    int-to-float p2, p2

    .line 18
    const p3, 0x3eb33333    # 0.35f

    .line 19
    .line 20
    .line 21
    mul-float p2, p2, p3

    .line 22
    .line 23
    iget p3, p0, Landroidx/recyclerview/widget/RecyclerView;->G:F

    .line 24
    .line 25
    const v1, 0x3c75c28f    # 0.015f

    .line 26
    .line 27
    .line 28
    mul-float p3, p3, v1

    .line 29
    .line 30
    div-float/2addr p2, p3

    .line 31
    float-to-double v1, p2

    .line 32
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    sget p2, Landroidx/recyclerview/widget/RecyclerView;->l1:F

    .line 37
    .line 38
    float-to-double v3, p2

    .line 39
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 40
    .line 41
    sub-double v5, v3, v5

    .line 42
    .line 43
    float-to-double p2, p3

    .line 44
    div-double/2addr v3, v5

    .line 45
    mul-double v3, v3, v1

    .line 46
    .line 47
    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    mul-double v1, v1, p2

    .line 52
    .line 53
    double-to-float p2, v1

    .line 54
    cmpg-float p1, p2, p1

    .line 55
    .line 56
    if-gez p1, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0
.end method

.method public final hasNestedScrollingParent()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()LN/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, LN/o;->g(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final i(LO1/I;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "Cannot add item decoration during a scroll  or layout"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, LO1/L;->c(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->S()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final i0(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->j0(IIZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final isAttachedToWindow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isLayoutSuppressed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()LN/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, LN/o;->d:Z

    .line 6
    .line 7
    return v0
.end method

.method public final j(LO1/P;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->P0:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->P0:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->P0:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final j0(IIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, "RecyclerView"

    .line 6
    .line 7
    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 8
    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {v0}, LO1/L;->e()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 27
    .line 28
    invoke-virtual {v0}, LO1/L;->f()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    :cond_3
    if-nez p1, :cond_4

    .line 36
    .line 37
    if-eqz p2, :cond_8

    .line 38
    .line 39
    :cond_4
    if-eqz p3, :cond_7

    .line 40
    .line 41
    const/4 p3, 0x1

    .line 42
    if-eqz p1, :cond_5

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    :cond_5
    if-eqz p2, :cond_6

    .line 46
    .line 47
    or-int/lit8 v1, v1, 0x2

    .line 48
    .line 49
    :cond_6
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()LN/o;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, v1, p3}, LN/o;->h(II)Z

    .line 54
    .line 55
    .line 56
    :cond_7
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView;->K0:LO1/b0;

    .line 57
    .line 58
    const/high16 v0, -0x80000000

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p3, p1, p2, v0, v1}, LO1/b0;->c(IIILandroid/view/animation/Interpolator;)V

    .line 62
    .line 63
    .line 64
    :cond_8
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->Q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->p0:I

    .line 33
    .line 34
    if-lez p1, :cond_2

    .line 35
    .line 36
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v1, ""

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v0}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v0, "RecyclerView"

    .line 53
    .line 54
    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    .line 55
    .line 56
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method public k0(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-string p1, "RecyclerView"

    .line 11
    .line 12
    const-string v0, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 13
    .line 14
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {v0, p0, p1}, LO1/L;->Q0(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final l0()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 2
    .line 3
    invoke-virtual {v0}, LO1/c;->h()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    const/4 v3, -0x1

    .line 10
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 13
    .line 14
    invoke-virtual {v4, v2}, LO1/c;->g(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4}, LO1/c0;->q()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    iput v3, v4, LO1/c0;->J:I

    .line 29
    .line 30
    iput v3, v4, LO1/c0;->M:I

    .line 31
    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 36
    .line 37
    iget-object v2, v0, Ls1/g;->e:Ljava/lang/Cloneable;

    .line 38
    .line 39
    check-cast v2, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const/4 v5, 0x0

    .line 46
    :goto_1
    if-ge v5, v4, :cond_2

    .line 47
    .line 48
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    check-cast v6, LO1/c0;

    .line 53
    .line 54
    iput v3, v6, LO1/c0;->J:I

    .line 55
    .line 56
    iput v3, v6, LO1/c0;->M:I

    .line 57
    .line 58
    add-int/lit8 v5, v5, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iget-object v2, v0, Ls1/g;->c:Ljava/lang/Cloneable;

    .line 62
    .line 63
    check-cast v2, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    const/4 v5, 0x0

    .line 70
    :goto_2
    if-ge v5, v4, :cond_3

    .line 71
    .line 72
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, LO1/c0;

    .line 77
    .line 78
    iput v3, v6, LO1/c0;->J:I

    .line 79
    .line 80
    iput v3, v6, LO1/c0;->M:I

    .line 81
    .line 82
    add-int/lit8 v5, v5, 0x1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    iget-object v2, v0, Ls1/g;->d:Ljava/lang/Cloneable;

    .line 86
    .line 87
    check-cast v2, Ljava/util/ArrayList;

    .line 88
    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    :goto_3
    if-ge v1, v2, :cond_4

    .line 96
    .line 97
    iget-object v4, v0, Ls1/g;->d:Ljava/lang/Cloneable;

    .line 98
    .line 99
    check-cast v4, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, LO1/c0;

    .line 106
    .line 107
    iput v3, v4, LO1/c0;->J:I

    .line 108
    .line 109
    iput v3, v4, LO1/c0;->M:I

    .line 110
    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    return-void
.end method

.method public final m0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 2
    .line 3
    invoke-virtual {v0}, LO1/L;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 8
    .line 9
    invoke-virtual {v1}, LO1/L;->f()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    or-int/lit8 v0, v0, 0x2

    .line 16
    .line 17
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()LN/o;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0, p1}, LN/o;->h(II)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final n(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    if-lez p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    if-gez p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    or-int/2addr v0, p1

    .line 50
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    if-lez p2, :cond_2

    .line 61
    .line 62
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    or-int/2addr v0, p1

    .line 74
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_3

    .line 83
    .line 84
    if-gez p2, :cond_3

    .line 85
    .line 86
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    or-int/2addr v0, p1

    .line 98
    :cond_3
    if-eqz v0, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 101
    .line 102
    .line 103
    :cond_4
    return-void
.end method

.method public final n0(Z)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->i1:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "stopInterceptRequestLayout was called more times than startInterceptRequestLayout."

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    .line 34
    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    .line 38
    .line 39
    :cond_2
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:I

    .line 40
    .line 41
    if-ne v2, v1, :cond_4

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    .line 50
    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->r()V

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    .line 65
    .line 66
    if-nez p1, :cond_4

    .line 67
    .line 68
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    .line 69
    .line 70
    :cond_4
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:I

    .line 71
    .line 72
    sub-int/2addr p1, v1

    .line 73
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:I

    .line 74
    .line 75
    return-void
.end method

.method public final o0(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()LN/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, LN/o;->i(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o0:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Z

    .line 9
    .line 10
    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    :goto_0
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Z

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 26
    .line 27
    invoke-virtual {v2}, Ls1/g;->e()V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iput-boolean v1, v2, LO1/L;->g:Z

    .line 35
    .line 36
    :cond_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    .line 37
    .line 38
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->n1:Z

    .line 39
    .line 40
    if-eqz v0, :cond_6

    .line 41
    .line 42
    sget-object v0, LO1/r;->K:Ljava/lang/ThreadLocal;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, LO1/r;

    .line 49
    .line 50
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->L0:LO1/r;

    .line 51
    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    new-instance v1, LO1/r;

    .line 55
    .line 56
    invoke-direct {v1}, LO1/r;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->L0:LO1/r;

    .line 60
    .line 61
    sget-object v1, LN/N;->a:Ljava/util/WeakHashMap;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const/high16 v2, 0x41f00000    # 30.0f

    .line 80
    .line 81
    cmpl-float v2, v1, v2

    .line 82
    .line 83
    if-ltz v2, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const/high16 v1, 0x42700000    # 60.0f

    .line 87
    .line 88
    :goto_1
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->L0:LO1/r;

    .line 89
    .line 90
    const v3, 0x4e6e6b28    # 1.0E9f

    .line 91
    .line 92
    .line 93
    div-float/2addr v3, v1

    .line 94
    float-to-long v3, v3

    .line 95
    iput-wide v3, v2, LO1/r;->I:J

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->L0:LO1/r;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->i1:Z

    .line 106
    .line 107
    iget-object v0, v0, LO1/r;->G:Ljava/util/ArrayList;

    .line 108
    .line 109
    if-eqz v1, :cond_5

    .line 110
    .line 111
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_4

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    const-string v1, "RecyclerView already present in worker list!"

    .line 121
    .line 122
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :cond_5
    :goto_2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :cond_6
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, LO1/H;->e()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->p0()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Z

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iput-boolean v0, v1, LO1/L;->g:Z

    .line 22
    .line 23
    invoke-virtual {v1, p0}, LO1/L;->a0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->a1:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->b1:LO1/A;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->M:LO1/o0;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    :goto_0
    sget-object v1, LO1/n0;->d:Lu/e;

    .line 42
    .line 43
    invoke-virtual {v1}, Lu/e;->h()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v1, 0x0

    .line 51
    :goto_1
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 52
    .line 53
    iget-object v3, v2, Ls1/g;->e:Ljava/lang/Cloneable;

    .line 54
    .line 55
    check-cast v3, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-ge v1, v4, :cond_3

    .line 62
    .line 63
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, LO1/c0;

    .line 68
    .line 69
    iget-object v2, v2, LO1/c0;->G:Landroid/view/View;

    .line 70
    .line 71
    invoke-static {v2}, Lo3/r;->d(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    iget-object v1, v2, Ls1/g;->i:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    .line 81
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 82
    .line 83
    invoke-virtual {v2, v1, v0}, Ls1/g;->f(LO1/C;Z)V

    .line 84
    .line 85
    .line 86
    new-instance v1, LN/P;

    .line 87
    .line 88
    invoke-direct {v1, p0, v0}, LN/P;-><init>(Ljava/lang/Object;I)V

    .line 89
    .line 90
    .line 91
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    const/4 v2, 0x0

    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroid/view/View;

    .line 103
    .line 104
    const v3, 0x7f0b03d2

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    check-cast v4, LR/a;

    .line 112
    .line 113
    if-nez v4, :cond_4

    .line 114
    .line 115
    new-instance v4, LR/a;

    .line 116
    .line 117
    invoke-direct {v4}, LR/a;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    iget-object v0, v4, LR/a;->a:Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-static {v0}, Ld2/v;->m(Ljava/util/List;)I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    const/4 v4, -0x1

    .line 130
    if-lt v4, v3, :cond_5

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    throw v2

    .line 141
    :cond_6
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->n1:Z

    .line 142
    .line 143
    if-eqz v0, :cond_9

    .line 144
    .line 145
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->L0:LO1/r;

    .line 146
    .line 147
    if-eqz v0, :cond_9

    .line 148
    .line 149
    iget-object v0, v0, LO1/r;->G:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->i1:Z

    .line 156
    .line 157
    if-eqz v1, :cond_8

    .line 158
    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 163
    .line 164
    const-string v1, "RecyclerView removal failed!"

    .line 165
    .line 166
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v0

    .line 170
    :cond_8
    :goto_3
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->L0:LO1/r;

    .line 171
    .line 172
    :cond_9
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, LO1/I;

    .line 18
    .line 19
    invoke-virtual {v3, p1, p0}, LO1/I;->b(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 6
    .line 7
    const/4 v8, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v8

    .line 11
    :cond_0
    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return v8

    .line 16
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    if-ne v0, v1, :cond_13

    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    and-int/lit8 v0, v0, 0x2

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz v0, :cond_5

    .line 32
    .line 33
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 34
    .line 35
    invoke-virtual {v0}, LO1/L;->f()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const/16 v0, 0x9

    .line 42
    .line 43
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    neg-float v0, v0

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 50
    :goto_0
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 51
    .line 52
    invoke-virtual {v2}, LO1/L;->e()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    const/16 v1, 0xa

    .line 59
    .line 60
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    move v2, v1

    .line 65
    const/4 v9, 0x0

    .line 66
    const/4 v10, 0x0

    .line 67
    move v1, v0

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    move v1, v0

    .line 70
    :cond_4
    const/4 v2, 0x0

    .line 71
    const/4 v9, 0x0

    .line 72
    const/4 v10, 0x0

    .line 73
    goto :goto_2

    .line 74
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/high16 v2, 0x400000

    .line 79
    .line 80
    and-int/2addr v0, v2

    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    const/16 v0, 0x1a

    .line 84
    .line 85
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    iget-object v3, v6, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 90
    .line 91
    invoke-virtual {v3}, LO1/L;->f()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_7

    .line 96
    .line 97
    neg-float v2, v2

    .line 98
    move v1, v2

    .line 99
    :cond_6
    const/4 v2, 0x0

    .line 100
    goto :goto_1

    .line 101
    :cond_7
    iget-object v3, v6, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 102
    .line 103
    invoke-virtual {v3}, LO1/L;->e()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_6

    .line 108
    .line 109
    :goto_1
    iget-boolean v3, v6, Landroidx/recyclerview/widget/RecyclerView;->f1:Z

    .line 110
    .line 111
    move v10, v3

    .line 112
    const/16 v9, 0x1a

    .line 113
    .line 114
    :goto_2
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->I0:F

    .line 115
    .line 116
    mul-float v1, v1, v0

    .line 117
    .line 118
    float-to-int v0, v1

    .line 119
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->H0:F

    .line 120
    .line 121
    mul-float v2, v2, v1

    .line 122
    .line 123
    float-to-int v1, v2

    .line 124
    const/4 v11, 0x1

    .line 125
    if-eqz v10, :cond_8

    .line 126
    .line 127
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->K0:LO1/b0;

    .line 128
    .line 129
    iget-object v2, v2, LO1/b0;->I:Landroid/widget/OverScroller;

    .line 130
    .line 131
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getFinalY()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    sub-int/2addr v3, v4

    .line 140
    add-int/2addr v3, v0

    .line 141
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getFinalX()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    sub-int/2addr v0, v2

    .line 150
    add-int/2addr v0, v1

    .line 151
    invoke-virtual {v6, v0, v3, v11}, Landroidx/recyclerview/widget/RecyclerView;->j0(IIZ)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_8

    .line 155
    .line 156
    :cond_8
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 157
    .line 158
    if-nez v2, :cond_9

    .line 159
    .line 160
    const-string v0, "RecyclerView"

    .line 161
    .line 162
    const-string v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 163
    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    goto/16 :goto_8

    .line 168
    .line 169
    :cond_9
    iget-boolean v3, v6, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    .line 170
    .line 171
    if-eqz v3, :cond_a

    .line 172
    .line 173
    goto/16 :goto_8

    .line 174
    .line 175
    :cond_a
    iget-object v12, v6, Landroidx/recyclerview/widget/RecyclerView;->Z0:[I

    .line 176
    .line 177
    aput v8, v12, v8

    .line 178
    .line 179
    aput v8, v12, v11

    .line 180
    .line 181
    invoke-virtual {v2}, LO1/L;->e()Z

    .line 182
    .line 183
    .line 184
    move-result v13

    .line 185
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 186
    .line 187
    invoke-virtual {v2}, LO1/L;->f()Z

    .line 188
    .line 189
    .line 190
    move-result v14

    .line 191
    if-eqz v14, :cond_b

    .line 192
    .line 193
    or-int/lit8 v2, v13, 0x2

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_b
    move v2, v13

    .line 197
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    invoke-virtual {v6, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->c0(IF)I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    sub-int v15, v1, v3

    .line 210
    .line 211
    invoke-virtual {v6, v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->d0(IF)I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    sub-int v16, v0, v1

    .line 216
    .line 217
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()LN/o;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    const/4 v5, 0x1

    .line 222
    invoke-virtual {v0, v2, v5}, LN/o;->h(II)Z

    .line 223
    .line 224
    .line 225
    if-eqz v13, :cond_c

    .line 226
    .line 227
    move v1, v15

    .line 228
    goto :goto_4

    .line 229
    :cond_c
    const/4 v1, 0x0

    .line 230
    :goto_4
    if-eqz v14, :cond_d

    .line 231
    .line 232
    move/from16 v2, v16

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_d
    const/4 v2, 0x0

    .line 236
    :goto_5
    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView;->Z0:[I

    .line 237
    .line 238
    iget-object v3, v6, Landroidx/recyclerview/widget/RecyclerView;->X0:[I

    .line 239
    .line 240
    move-object/from16 v0, p0

    .line 241
    .line 242
    move-object/from16 v17, v3

    .line 243
    .line 244
    move v3, v5

    .line 245
    move-object/from16 v5, v17

    .line 246
    .line 247
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->u(III[I[I)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_e

    .line 252
    .line 253
    aget v0, v12, v8

    .line 254
    .line 255
    sub-int/2addr v15, v0

    .line 256
    aget v0, v12, v11

    .line 257
    .line 258
    sub-int v16, v16, v0

    .line 259
    .line 260
    :cond_e
    move/from16 v0, v16

    .line 261
    .line 262
    if-eqz v13, :cond_f

    .line 263
    .line 264
    move v1, v15

    .line 265
    goto :goto_6

    .line 266
    :cond_f
    const/4 v1, 0x0

    .line 267
    :goto_6
    if-eqz v14, :cond_10

    .line 268
    .line 269
    move v3, v0

    .line 270
    const/4 v2, 0x1

    .line 271
    goto :goto_7

    .line 272
    :cond_10
    const/4 v2, 0x1

    .line 273
    const/4 v3, 0x0

    .line 274
    :goto_7
    invoke-virtual {v6, v1, v3, v7, v2}, Landroidx/recyclerview/widget/RecyclerView;->f0(IILandroid/view/MotionEvent;I)Z

    .line 275
    .line 276
    .line 277
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->L0:LO1/r;

    .line 278
    .line 279
    if-eqz v1, :cond_12

    .line 280
    .line 281
    if-nez v15, :cond_11

    .line 282
    .line 283
    if-eqz v0, :cond_12

    .line 284
    .line 285
    :cond_11
    invoke-virtual {v1, v6, v15, v0}, LO1/r;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 286
    .line 287
    .line 288
    :cond_12
    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView;->o0(I)V

    .line 289
    .line 290
    .line 291
    :goto_8
    if-eqz v9, :cond_13

    .line 292
    .line 293
    if-nez v10, :cond_13

    .line 294
    .line 295
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->h1:LN/j;

    .line 296
    .line 297
    invoke-virtual {v0, v7, v9}, LN/j;->a(Landroid/view/MotionEvent;I)V

    .line 298
    .line 299
    .line 300
    :cond_13
    return v8
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b0:LO1/O;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroid/view/VelocityTracker;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->o0(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->b0()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 31
    .line 32
    .line 33
    return v2

    .line 34
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 35
    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    return v1

    .line 39
    :cond_3
    invoke-virtual {v0}, LO1/L;->e()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 44
    .line 45
    invoke-virtual {v3}, LO1/L;->f()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroid/view/VelocityTracker;

    .line 50
    .line 51
    if-nez v4, :cond_4

    .line 52
    .line 53
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroid/view/VelocityTracker;

    .line 58
    .line 59
    :cond_4
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroid/view/VelocityTracker;

    .line 60
    .line 61
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    const/4 v6, 0x2

    .line 73
    const/high16 v7, 0x3f000000    # 0.5f

    .line 74
    .line 75
    if-eqz v4, :cond_e

    .line 76
    .line 77
    if-eq v4, v2, :cond_d

    .line 78
    .line 79
    if-eq v4, v6, :cond_9

    .line 80
    .line 81
    const/4 v0, 0x3

    .line 82
    if-eq v4, v0, :cond_7

    .line 83
    .line 84
    const/4 v0, 0x5

    .line 85
    if-eq v4, v0, :cond_6

    .line 86
    .line 87
    const/4 v0, 0x6

    .line 88
    if-eq v4, v0, :cond_5

    .line 89
    .line 90
    goto/16 :goto_4

    .line 91
    .line 92
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->W(Landroid/view/MotionEvent;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_4

    .line 96
    .line 97
    :cond_6
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->x0:I

    .line 102
    .line 103
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    add-float/2addr v0, v7

    .line 108
    float-to-int v0, v0

    .line 109
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->B0:I

    .line 110
    .line 111
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->z0:I

    .line 112
    .line 113
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    add-float/2addr p1, v7

    .line 118
    float-to-int p1, p1

    .line 119
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->C0:I

    .line 120
    .line 121
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->A0:I

    .line 122
    .line 123
    goto/16 :goto_4

    .line 124
    .line 125
    :cond_7
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroid/view/VelocityTracker;

    .line 126
    .line 127
    if-eqz p1, :cond_8

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 130
    .line 131
    .line 132
    :cond_8
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->o0(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->b0()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_4

    .line 142
    .line 143
    :cond_9
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->x0:I

    .line 144
    .line 145
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-gez v4, :cond_a

    .line 150
    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v0, "Error processing scroll; pointer index for id "

    .line 154
    .line 155
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->x0:I

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v0, " not found. Did any MotionEvents get skipped?"

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    const-string v0, "RecyclerView"

    .line 173
    .line 174
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    return v1

    .line 178
    :cond_a
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    add-float/2addr v5, v7

    .line 183
    float-to-int v5, v5

    .line 184
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    add-float/2addr p1, v7

    .line 189
    float-to-int p1, p1

    .line 190
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->w0:I

    .line 191
    .line 192
    if-eq v4, v2, :cond_16

    .line 193
    .line 194
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->z0:I

    .line 195
    .line 196
    sub-int v4, v5, v4

    .line 197
    .line 198
    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView;->A0:I

    .line 199
    .line 200
    sub-int v6, p1, v6

    .line 201
    .line 202
    if-eqz v0, :cond_b

    .line 203
    .line 204
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->D0:I

    .line 209
    .line 210
    if-le v0, v4, :cond_b

    .line 211
    .line 212
    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->B0:I

    .line 213
    .line 214
    const/4 v0, 0x1

    .line 215
    goto :goto_0

    .line 216
    :cond_b
    const/4 v0, 0x0

    .line 217
    :goto_0
    if-eqz v3, :cond_c

    .line 218
    .line 219
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->D0:I

    .line 224
    .line 225
    if-le v3, v4, :cond_c

    .line 226
    .line 227
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->C0:I

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_c
    if-eqz v0, :cond_16

    .line 231
    .line 232
    :goto_1
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_4

    .line 236
    .line 237
    :cond_d
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroid/view/VelocityTracker;

    .line 238
    .line 239
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->o0(I)V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_4

    .line 246
    .line 247
    :cond_e
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->i0:Z

    .line 248
    .line 249
    if-eqz v0, :cond_f

    .line 250
    .line 251
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->i0:Z

    .line 252
    .line 253
    :cond_f
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->x0:I

    .line 258
    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    add-float/2addr v0, v7

    .line 264
    float-to-int v0, v0

    .line 265
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->B0:I

    .line 266
    .line 267
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->z0:I

    .line 268
    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    add-float/2addr v0, v7

    .line 274
    float-to-int v0, v0

    .line 275
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C0:I

    .line 276
    .line 277
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->A0:I

    .line 278
    .line 279
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 280
    .line 281
    const/high16 v3, 0x3f800000    # 1.0f

    .line 282
    .line 283
    const/4 v4, -0x1

    .line 284
    const/4 v5, 0x0

    .line 285
    if-eqz v0, :cond_10

    .line 286
    .line 287
    invoke-static {v0}, LE3/f;->m(Landroid/widget/EdgeEffect;)F

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    cmpl-float v0, v0, v5

    .line 292
    .line 293
    if-eqz v0, :cond_10

    .line 294
    .line 295
    invoke-virtual {p0, v4}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-nez v0, :cond_10

    .line 300
    .line 301
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 302
    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 304
    .line 305
    .line 306
    move-result v7

    .line 307
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 308
    .line 309
    .line 310
    move-result v8

    .line 311
    int-to-float v8, v8

    .line 312
    div-float/2addr v7, v8

    .line 313
    sub-float v7, v3, v7

    .line 314
    .line 315
    invoke-static {v0, v5, v7}, LE3/f;->u(Landroid/widget/EdgeEffect;FF)F

    .line 316
    .line 317
    .line 318
    const/4 v0, 0x1

    .line 319
    goto :goto_2

    .line 320
    :cond_10
    const/4 v0, 0x0

    .line 321
    :goto_2
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 322
    .line 323
    if-eqz v7, :cond_11

    .line 324
    .line 325
    invoke-static {v7}, LE3/f;->m(Landroid/widget/EdgeEffect;)F

    .line 326
    .line 327
    .line 328
    move-result v7

    .line 329
    cmpl-float v7, v7, v5

    .line 330
    .line 331
    if-eqz v7, :cond_11

    .line 332
    .line 333
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 334
    .line 335
    .line 336
    move-result v7

    .line 337
    if-nez v7, :cond_11

    .line 338
    .line 339
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 340
    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 342
    .line 343
    .line 344
    move-result v7

    .line 345
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 346
    .line 347
    .line 348
    move-result v8

    .line 349
    int-to-float v8, v8

    .line 350
    div-float/2addr v7, v8

    .line 351
    invoke-static {v0, v5, v7}, LE3/f;->u(Landroid/widget/EdgeEffect;FF)F

    .line 352
    .line 353
    .line 354
    const/4 v0, 0x1

    .line 355
    :cond_11
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 356
    .line 357
    if-eqz v7, :cond_12

    .line 358
    .line 359
    invoke-static {v7}, LE3/f;->m(Landroid/widget/EdgeEffect;)F

    .line 360
    .line 361
    .line 362
    move-result v7

    .line 363
    cmpl-float v7, v7, v5

    .line 364
    .line 365
    if-eqz v7, :cond_12

    .line 366
    .line 367
    invoke-virtual {p0, v4}, Landroid/view/View;->canScrollVertically(I)Z

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    if-nez v4, :cond_12

    .line 372
    .line 373
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 374
    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 380
    .line 381
    .line 382
    move-result v7

    .line 383
    int-to-float v7, v7

    .line 384
    div-float/2addr v4, v7

    .line 385
    invoke-static {v0, v5, v4}, LE3/f;->u(Landroid/widget/EdgeEffect;FF)F

    .line 386
    .line 387
    .line 388
    const/4 v0, 0x1

    .line 389
    :cond_12
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 390
    .line 391
    if-eqz v4, :cond_13

    .line 392
    .line 393
    invoke-static {v4}, LE3/f;->m(Landroid/widget/EdgeEffect;)F

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    cmpl-float v4, v4, v5

    .line 398
    .line 399
    if-eqz v4, :cond_13

    .line 400
    .line 401
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 402
    .line 403
    .line 404
    move-result v4

    .line 405
    if-nez v4, :cond_13

    .line 406
    .line 407
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 408
    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 410
    .line 411
    .line 412
    move-result p1

    .line 413
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 414
    .line 415
    .line 416
    move-result v4

    .line 417
    int-to-float v4, v4

    .line 418
    div-float/2addr p1, v4

    .line 419
    sub-float/2addr v3, p1

    .line 420
    invoke-static {v0, v5, v3}, LE3/f;->u(Landroid/widget/EdgeEffect;FF)F

    .line 421
    .line 422
    .line 423
    goto :goto_3

    .line 424
    :cond_13
    if-nez v0, :cond_14

    .line 425
    .line 426
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->w0:I

    .line 427
    .line 428
    if-ne p1, v6, :cond_15

    .line 429
    .line 430
    :cond_14
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->o0(I)V

    .line 441
    .line 442
    .line 443
    :cond_15
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->Y0:[I

    .line 444
    .line 445
    aput v1, p1, v2

    .line 446
    .line 447
    aput v1, p1, v1

    .line 448
    .line 449
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->m0(I)V

    .line 450
    .line 451
    .line 452
    :cond_16
    :goto_4
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->w0:I

    .line 453
    .line 454
    if-ne p1, v2, :cond_17

    .line 455
    .line 456
    const/4 v1, 0x1

    .line 457
    :cond_17
    return v1
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    const-string p1, "RV OnLayout"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->r()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Z

    .line 14
    .line 15
    return-void
.end method

.method public final onMeasure(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->q(II)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, LO1/L;->R()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 18
    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 30
    .line 31
    invoke-virtual {v6, v1, v4, p1, p2}, LO1/L;->p0(Ls1/g;LO1/Y;II)V

    .line 32
    .line 33
    .line 34
    const/high16 v1, 0x40000000    # 2.0f

    .line 35
    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    if-ne v5, v1, :cond_1

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    :cond_1
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->c1:Z

    .line 42
    .line 43
    if-nez v3, :cond_5

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget v0, v4, LO1/Y;->d:I

    .line 51
    .line 52
    if-ne v0, v2, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->s()V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 58
    .line 59
    invoke-virtual {v0, p1, p2}, LO1/L;->J0(II)V

    .line 60
    .line 61
    .line 62
    iput-boolean v2, v4, LO1/Y;->i:Z

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->t()V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 68
    .line 69
    invoke-virtual {v0, p1, p2}, LO1/L;->L0(II)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 73
    .line 74
    invoke-virtual {v0}, LO1/L;->O0()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {v0, v3, v1}, LO1/L;->J0(II)V

    .line 99
    .line 100
    .line 101
    iput-boolean v2, v4, LO1/Y;->i:Z

    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->t()V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 107
    .line 108
    invoke-virtual {v0, p1, p2}, LO1/L;->L0(II)V

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->d1:I

    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->e1:I

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_5
    :goto_0
    return-void

    .line 125
    :cond_6
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:Z

    .line 126
    .line 127
    if-eqz v0, :cond_7

    .line 128
    .line 129
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 130
    .line 131
    invoke-virtual {v0, v1, v4, p1, p2}, LO1/L;->p0(Ls1/g;LO1/Y;II)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_7
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->k0:Z

    .line 136
    .line 137
    if-eqz v0, :cond_9

    .line 138
    .line 139
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->l0()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->U()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->Y()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->V(Z)V

    .line 149
    .line 150
    .line 151
    iget-boolean v0, v4, LO1/Y;->k:Z

    .line 152
    .line 153
    if-eqz v0, :cond_8

    .line 154
    .line 155
    iput-boolean v2, v4, LO1/Y;->g:Z

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:LO1/b;

    .line 159
    .line 160
    invoke-virtual {v0}, LO1/b;->c()V

    .line 161
    .line 162
    .line 163
    iput-boolean v3, v4, LO1/Y;->g:Z

    .line 164
    .line 165
    :goto_1
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->k0:Z

    .line 166
    .line 167
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->n0(Z)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_9
    iget-boolean v0, v4, LO1/Y;->k:Z

    .line 172
    .line 173
    if-eqz v0, :cond_a

    .line 174
    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_a
    :goto_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 188
    .line 189
    if-eqz v0, :cond_b

    .line 190
    .line 191
    invoke-virtual {v0}, LO1/C;->a()I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    iput v0, v4, LO1/Y;->e:I

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_b
    iput v3, v4, LO1/Y;->e:I

    .line 199
    .line 200
    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->l0()V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 204
    .line 205
    invoke-virtual {v0, v1, v4, p1, p2}, LO1/L;->p0(Ls1/g;LO1/Y;II)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->n0(Z)V

    .line 209
    .line 210
    .line 211
    iput-boolean v3, v4, LO1/Y;->g:Z

    .line 212
    .line 213
    :goto_4
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->Q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, LO1/V;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, LO1/V;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->J:LO1/V;

    .line 12
    .line 13
    iget-object p1, p1, LS/b;->G:Landroid/os/Parcelable;

    .line 14
    .line 15
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, LO1/V;

    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, LS/b;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->J:LO1/V;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, v1, LO1/V;->I:Landroid/os/Parcelable;

    .line 15
    .line 16
    iput-object v1, v0, LO1/V;->I:Landroid/os/Parcelable;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, LO1/L;->s0()Landroid/os/Parcelable;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, v0, LO1/V;->I:Landroid/os/Parcelable;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    iput-object v1, v0, LO1/V;->I:Landroid/os/Parcelable;

    .line 32
    .line 33
    :goto_0
    return-object v0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    if-ne p1, p3, :cond_0

    .line 5
    .line 6
    if-eq p2, p4, :cond_1

    .line 7
    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    .line 6
    .line 7
    const/4 v8, 0x0

    .line 8
    if-nez v0, :cond_31

    .line 9
    .line 10
    iget-boolean v0, v6, Landroidx/recyclerview/widget/RecyclerView;->i0:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_10

    .line 15
    .line 16
    :cond_0
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->b0:LO1/O;

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v9, 0x1

    .line 22
    if-nez v0, :cond_21

    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/MotionEvent;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    goto/16 :goto_f

    .line 38
    .line 39
    :cond_2
    :goto_0
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 40
    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    return v8

    .line 44
    :cond_3
    invoke-virtual {v0}, LO1/L;->e()Z

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 49
    .line 50
    invoke-virtual {v0}, LO1/L;->f()Z

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroid/view/VelocityTracker;

    .line 55
    .line 56
    if-nez v0, :cond_4

    .line 57
    .line 58
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroid/view/VelocityTracker;

    .line 63
    .line 64
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    iget-object v12, v6, Landroidx/recyclerview/widget/RecyclerView;->Y0:[I

    .line 73
    .line 74
    if-nez v0, :cond_5

    .line 75
    .line 76
    aput v8, v12, v9

    .line 77
    .line 78
    aput v8, v12, v8

    .line 79
    .line 80
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 81
    .line 82
    .line 83
    move-result-object v13

    .line 84
    aget v5, v12, v8

    .line 85
    .line 86
    int-to-float v5, v5

    .line 87
    aget v14, v12, v9

    .line 88
    .line 89
    int-to-float v14, v14

    .line 90
    invoke-virtual {v13, v5, v14}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 91
    .line 92
    .line 93
    const/high16 v5, 0x3f000000    # 0.5f

    .line 94
    .line 95
    if-eqz v0, :cond_1f

    .line 96
    .line 97
    if-eq v0, v9, :cond_18

    .line 98
    .line 99
    if-eq v0, v2, :cond_a

    .line 100
    .line 101
    if-eq v0, v1, :cond_8

    .line 102
    .line 103
    const/4 v1, 0x5

    .line 104
    if-eq v0, v1, :cond_7

    .line 105
    .line 106
    const/4 v1, 0x6

    .line 107
    if-eq v0, v1, :cond_6

    .line 108
    .line 109
    goto/16 :goto_a

    .line 110
    .line 111
    :cond_6
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->W(Landroid/view/MotionEvent;)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_a

    .line 115
    .line 116
    :cond_7
    invoke-virtual {v7, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->x0:I

    .line 121
    .line 122
    invoke-virtual {v7, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    add-float/2addr v0, v5

    .line 127
    float-to-int v0, v0

    .line 128
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->B0:I

    .line 129
    .line 130
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->z0:I

    .line 131
    .line 132
    invoke-virtual {v7, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    add-float/2addr v0, v5

    .line 137
    float-to-int v0, v0

    .line 138
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->C0:I

    .line 139
    .line 140
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->A0:I

    .line 141
    .line 142
    goto/16 :goto_a

    .line 143
    .line 144
    :cond_8
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroid/view/VelocityTracker;

    .line 145
    .line 146
    if-eqz v0, :cond_9

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 149
    .line 150
    .line 151
    :cond_9
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->o0(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->b0()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_a

    .line 161
    .line 162
    :cond_a
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->x0:I

    .line 163
    .line 164
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-gez v0, :cond_b

    .line 169
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v1, "Error processing scroll; pointer index for id "

    .line 173
    .line 174
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->x0:I

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v1, " not found. Did any MotionEvents get skipped?"

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const-string v1, "RecyclerView"

    .line 192
    .line 193
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    return v8

    .line 197
    :cond_b
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    add-float/2addr v1, v5

    .line 202
    float-to-int v14, v1

    .line 203
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    add-float/2addr v0, v5

    .line 208
    float-to-int v15, v0

    .line 209
    iget v0, v6, Landroidx/recyclerview/widget/RecyclerView;->B0:I

    .line 210
    .line 211
    sub-int/2addr v0, v14

    .line 212
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->C0:I

    .line 213
    .line 214
    sub-int/2addr v1, v15

    .line 215
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->w0:I

    .line 216
    .line 217
    if-eq v2, v9, :cond_10

    .line 218
    .line 219
    if-eqz v10, :cond_d

    .line 220
    .line 221
    if-lez v0, :cond_c

    .line 222
    .line 223
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->D0:I

    .line 224
    .line 225
    sub-int/2addr v0, v2

    .line 226
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    goto :goto_1

    .line 231
    :cond_c
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->D0:I

    .line 232
    .line 233
    add-int/2addr v0, v2

    .line 234
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    :goto_1
    if-eqz v0, :cond_d

    .line 239
    .line 240
    const/4 v2, 0x1

    .line 241
    goto :goto_2

    .line 242
    :cond_d
    const/4 v2, 0x0

    .line 243
    :goto_2
    if-eqz v11, :cond_f

    .line 244
    .line 245
    if-lez v1, :cond_e

    .line 246
    .line 247
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->D0:I

    .line 248
    .line 249
    sub-int/2addr v1, v3

    .line 250
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    goto :goto_3

    .line 255
    :cond_e
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->D0:I

    .line 256
    .line 257
    add-int/2addr v1, v3

    .line 258
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    :goto_3
    if-eqz v1, :cond_f

    .line 263
    .line 264
    const/4 v2, 0x1

    .line 265
    :cond_f
    if-eqz v2, :cond_10

    .line 266
    .line 267
    invoke-virtual {v6, v9}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 268
    .line 269
    .line 270
    :cond_10
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->w0:I

    .line 271
    .line 272
    if-ne v2, v9, :cond_20

    .line 273
    .line 274
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView;->Z0:[I

    .line 275
    .line 276
    aput v8, v5, v8

    .line 277
    .line 278
    aput v8, v5, v9

    .line 279
    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    invoke-virtual {v6, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->c0(IF)I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    sub-int v16, v0, v2

    .line 289
    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    invoke-virtual {v6, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->d0(IF)I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    sub-int v17, v1, v0

    .line 299
    .line 300
    if-eqz v10, :cond_11

    .line 301
    .line 302
    move/from16 v1, v16

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_11
    const/4 v1, 0x0

    .line 306
    :goto_4
    if-eqz v11, :cond_12

    .line 307
    .line 308
    move/from16 v2, v17

    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_12
    const/4 v2, 0x0

    .line 312
    :goto_5
    const/4 v3, 0x0

    .line 313
    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView;->Z0:[I

    .line 314
    .line 315
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->X0:[I

    .line 316
    .line 317
    move-object/from16 v18, v0

    .line 318
    .line 319
    move-object/from16 v0, p0

    .line 320
    .line 321
    move-object/from16 v19, v5

    .line 322
    .line 323
    move-object/from16 v5, v18

    .line 324
    .line 325
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->u(III[I[I)Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->X0:[I

    .line 330
    .line 331
    if-eqz v0, :cond_13

    .line 332
    .line 333
    aget v0, v19, v8

    .line 334
    .line 335
    sub-int v16, v16, v0

    .line 336
    .line 337
    aget v0, v19, v9

    .line 338
    .line 339
    sub-int v17, v17, v0

    .line 340
    .line 341
    aget v0, v12, v8

    .line 342
    .line 343
    aget v2, v1, v8

    .line 344
    .line 345
    add-int/2addr v0, v2

    .line 346
    aput v0, v12, v8

    .line 347
    .line 348
    aget v0, v12, v9

    .line 349
    .line 350
    aget v2, v1, v9

    .line 351
    .line 352
    add-int/2addr v0, v2

    .line 353
    aput v0, v12, v9

    .line 354
    .line 355
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 360
    .line 361
    .line 362
    :cond_13
    move/from16 v0, v16

    .line 363
    .line 364
    move/from16 v2, v17

    .line 365
    .line 366
    aget v3, v1, v8

    .line 367
    .line 368
    sub-int/2addr v14, v3

    .line 369
    iput v14, v6, Landroidx/recyclerview/widget/RecyclerView;->B0:I

    .line 370
    .line 371
    aget v1, v1, v9

    .line 372
    .line 373
    sub-int/2addr v15, v1

    .line 374
    iput v15, v6, Landroidx/recyclerview/widget/RecyclerView;->C0:I

    .line 375
    .line 376
    if-eqz v10, :cond_14

    .line 377
    .line 378
    move v1, v0

    .line 379
    goto :goto_6

    .line 380
    :cond_14
    const/4 v1, 0x0

    .line 381
    :goto_6
    if-eqz v11, :cond_15

    .line 382
    .line 383
    move v3, v2

    .line 384
    goto :goto_7

    .line 385
    :cond_15
    const/4 v3, 0x0

    .line 386
    :goto_7
    invoke-virtual {v6, v1, v3, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->f0(IILandroid/view/MotionEvent;I)Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-eqz v1, :cond_16

    .line 391
    .line 392
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-interface {v1, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 397
    .line 398
    .line 399
    :cond_16
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView;->L0:LO1/r;

    .line 400
    .line 401
    if-eqz v1, :cond_20

    .line 402
    .line 403
    if-nez v0, :cond_17

    .line 404
    .line 405
    if-eqz v2, :cond_20

    .line 406
    .line 407
    :cond_17
    invoke-virtual {v1, v6, v0, v2}, LO1/r;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 408
    .line 409
    .line 410
    goto :goto_a

    .line 411
    :cond_18
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroid/view/VelocityTracker;

    .line 412
    .line 413
    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 414
    .line 415
    .line 416
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroid/view/VelocityTracker;

    .line 417
    .line 418
    iget v1, v6, Landroidx/recyclerview/widget/RecyclerView;->G0:I

    .line 419
    .line 420
    int-to-float v2, v1

    .line 421
    const/16 v4, 0x3e8

    .line 422
    .line 423
    invoke-virtual {v0, v4, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 424
    .line 425
    .line 426
    if-eqz v10, :cond_19

    .line 427
    .line 428
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroid/view/VelocityTracker;

    .line 429
    .line 430
    iget v2, v6, Landroidx/recyclerview/widget/RecyclerView;->x0:I

    .line 431
    .line 432
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    neg-float v0, v0

    .line 437
    goto :goto_8

    .line 438
    :cond_19
    const/4 v0, 0x0

    .line 439
    :goto_8
    if-eqz v11, :cond_1a

    .line 440
    .line 441
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroid/view/VelocityTracker;

    .line 442
    .line 443
    iget v4, v6, Landroidx/recyclerview/widget/RecyclerView;->x0:I

    .line 444
    .line 445
    invoke-virtual {v2, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 446
    .line 447
    .line 448
    move-result v2

    .line 449
    neg-float v2, v2

    .line 450
    goto :goto_9

    .line 451
    :cond_1a
    const/4 v2, 0x0

    .line 452
    :goto_9
    cmpl-float v4, v0, v3

    .line 453
    .line 454
    if-nez v4, :cond_1b

    .line 455
    .line 456
    cmpl-float v3, v2, v3

    .line 457
    .line 458
    if-eqz v3, :cond_1c

    .line 459
    .line 460
    :cond_1b
    float-to-int v0, v0

    .line 461
    float-to-int v2, v2

    .line 462
    iget v3, v6, Landroidx/recyclerview/widget/RecyclerView;->F0:I

    .line 463
    .line 464
    invoke-virtual {v6, v0, v2, v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->I(IIII)Z

    .line 465
    .line 466
    .line 467
    move-result v0

    .line 468
    if-nez v0, :cond_1d

    .line 469
    .line 470
    :cond_1c
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 471
    .line 472
    .line 473
    :cond_1d
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroid/view/VelocityTracker;

    .line 474
    .line 475
    if-eqz v0, :cond_1e

    .line 476
    .line 477
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 478
    .line 479
    .line 480
    :cond_1e
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->o0(I)V

    .line 481
    .line 482
    .line 483
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->b0()V

    .line 484
    .line 485
    .line 486
    goto :goto_b

    .line 487
    :cond_1f
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->x0:I

    .line 492
    .line 493
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    add-float/2addr v0, v5

    .line 498
    float-to-int v0, v0

    .line 499
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->B0:I

    .line 500
    .line 501
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->z0:I

    .line 502
    .line 503
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    add-float/2addr v0, v5

    .line 508
    float-to-int v0, v0

    .line 509
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->C0:I

    .line 510
    .line 511
    iput v0, v6, Landroidx/recyclerview/widget/RecyclerView;->A0:I

    .line 512
    .line 513
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->m0(I)V

    .line 514
    .line 515
    .line 516
    :cond_20
    :goto_a
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroid/view/VelocityTracker;

    .line 517
    .line 518
    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 519
    .line 520
    .line 521
    :goto_b
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 522
    .line 523
    .line 524
    return v9

    .line 525
    :cond_21
    check-cast v0, LO1/p;

    .line 526
    .line 527
    iget v4, v0, LO1/p;->v:I

    .line 528
    .line 529
    if-nez v4, :cond_22

    .line 530
    .line 531
    goto/16 :goto_e

    .line 532
    .line 533
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 534
    .line 535
    .line 536
    move-result v4

    .line 537
    if-nez v4, :cond_26

    .line 538
    .line 539
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 540
    .line 541
    .line 542
    move-result v3

    .line 543
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 544
    .line 545
    .line 546
    move-result v4

    .line 547
    invoke-virtual {v0, v3, v4}, LO1/p;->e(FF)Z

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 552
    .line 553
    .line 554
    move-result v4

    .line 555
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 556
    .line 557
    .line 558
    move-result v5

    .line 559
    invoke-virtual {v0, v4, v5}, LO1/p;->d(FF)Z

    .line 560
    .line 561
    .line 562
    move-result v4

    .line 563
    if-nez v3, :cond_23

    .line 564
    .line 565
    if-eqz v4, :cond_2d

    .line 566
    .line 567
    :cond_23
    if-eqz v4, :cond_24

    .line 568
    .line 569
    iput v9, v0, LO1/p;->w:I

    .line 570
    .line 571
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 572
    .line 573
    .line 574
    move-result v3

    .line 575
    float-to-int v3, v3

    .line 576
    int-to-float v3, v3

    .line 577
    iput v3, v0, LO1/p;->p:F

    .line 578
    .line 579
    goto :goto_c

    .line 580
    :cond_24
    if-eqz v3, :cond_25

    .line 581
    .line 582
    iput v2, v0, LO1/p;->w:I

    .line 583
    .line 584
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 585
    .line 586
    .line 587
    move-result v3

    .line 588
    float-to-int v3, v3

    .line 589
    int-to-float v3, v3

    .line 590
    iput v3, v0, LO1/p;->m:F

    .line 591
    .line 592
    :cond_25
    :goto_c
    invoke-virtual {v0, v2}, LO1/p;->g(I)V

    .line 593
    .line 594
    .line 595
    goto/16 :goto_e

    .line 596
    .line 597
    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 598
    .line 599
    .line 600
    move-result v4

    .line 601
    if-ne v4, v9, :cond_27

    .line 602
    .line 603
    iget v4, v0, LO1/p;->v:I

    .line 604
    .line 605
    if-ne v4, v2, :cond_27

    .line 606
    .line 607
    iput v3, v0, LO1/p;->m:F

    .line 608
    .line 609
    iput v3, v0, LO1/p;->p:F

    .line 610
    .line 611
    invoke-virtual {v0, v9}, LO1/p;->g(I)V

    .line 612
    .line 613
    .line 614
    iput v8, v0, LO1/p;->w:I

    .line 615
    .line 616
    goto/16 :goto_e

    .line 617
    .line 618
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 619
    .line 620
    .line 621
    move-result v3

    .line 622
    if-ne v3, v2, :cond_2d

    .line 623
    .line 624
    iget v3, v0, LO1/p;->v:I

    .line 625
    .line 626
    if-ne v3, v2, :cond_2d

    .line 627
    .line 628
    invoke-virtual {v0}, LO1/p;->h()V

    .line 629
    .line 630
    .line 631
    iget v3, v0, LO1/p;->w:I

    .line 632
    .line 633
    const/high16 v4, 0x40000000    # 2.0f

    .line 634
    .line 635
    iget v5, v0, LO1/p;->b:I

    .line 636
    .line 637
    if-ne v3, v9, :cond_2a

    .line 638
    .line 639
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 640
    .line 641
    .line 642
    move-result v3

    .line 643
    iget-object v12, v0, LO1/p;->y:[I

    .line 644
    .line 645
    aput v5, v12, v8

    .line 646
    .line 647
    iget v10, v0, LO1/p;->q:I

    .line 648
    .line 649
    sub-int/2addr v10, v5

    .line 650
    aput v10, v12, v9

    .line 651
    .line 652
    int-to-float v11, v5

    .line 653
    int-to-float v10, v10

    .line 654
    invoke-static {v10, v3}, Ljava/lang/Math;->min(FF)F

    .line 655
    .line 656
    .line 657
    move-result v3

    .line 658
    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    .line 659
    .line 660
    .line 661
    move-result v3

    .line 662
    iget v10, v0, LO1/p;->o:I

    .line 663
    .line 664
    int-to-float v10, v10

    .line 665
    sub-float/2addr v10, v3

    .line 666
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 667
    .line 668
    .line 669
    move-result v10

    .line 670
    cmpg-float v10, v10, v4

    .line 671
    .line 672
    if-gez v10, :cond_28

    .line 673
    .line 674
    goto :goto_d

    .line 675
    :cond_28
    iget v10, v0, LO1/p;->p:F

    .line 676
    .line 677
    iget-object v11, v0, LO1/p;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 678
    .line 679
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    .line 680
    .line 681
    .line 682
    move-result v13

    .line 683
    iget-object v11, v0, LO1/p;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 684
    .line 685
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 686
    .line 687
    .line 688
    move-result v14

    .line 689
    iget v15, v0, LO1/p;->q:I

    .line 690
    .line 691
    move v11, v3

    .line 692
    invoke-static/range {v10 .. v15}, LO1/p;->f(FF[IIII)I

    .line 693
    .line 694
    .line 695
    move-result v10

    .line 696
    if-eqz v10, :cond_29

    .line 697
    .line 698
    iget-object v11, v0, LO1/p;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 699
    .line 700
    invoke-virtual {v11, v10, v8}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 701
    .line 702
    .line 703
    :cond_29
    iput v3, v0, LO1/p;->p:F

    .line 704
    .line 705
    :cond_2a
    :goto_d
    iget v3, v0, LO1/p;->w:I

    .line 706
    .line 707
    if-ne v3, v2, :cond_2d

    .line 708
    .line 709
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 710
    .line 711
    .line 712
    move-result v2

    .line 713
    iget-object v12, v0, LO1/p;->x:[I

    .line 714
    .line 715
    aput v5, v12, v8

    .line 716
    .line 717
    iget v3, v0, LO1/p;->r:I

    .line 718
    .line 719
    sub-int/2addr v3, v5

    .line 720
    aput v3, v12, v9

    .line 721
    .line 722
    int-to-float v5, v5

    .line 723
    int-to-float v3, v3

    .line 724
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    .line 725
    .line 726
    .line 727
    move-result v2

    .line 728
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    .line 729
    .line 730
    .line 731
    move-result v2

    .line 732
    iget v3, v0, LO1/p;->l:I

    .line 733
    .line 734
    int-to-float v3, v3

    .line 735
    sub-float/2addr v3, v2

    .line 736
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 737
    .line 738
    .line 739
    move-result v3

    .line 740
    cmpg-float v3, v3, v4

    .line 741
    .line 742
    if-gez v3, :cond_2b

    .line 743
    .line 744
    goto :goto_e

    .line 745
    :cond_2b
    iget v10, v0, LO1/p;->m:F

    .line 746
    .line 747
    iget-object v3, v0, LO1/p;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 748
    .line 749
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    .line 750
    .line 751
    .line 752
    move-result v13

    .line 753
    iget-object v3, v0, LO1/p;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 754
    .line 755
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 756
    .line 757
    .line 758
    move-result v14

    .line 759
    iget v15, v0, LO1/p;->r:I

    .line 760
    .line 761
    move v11, v2

    .line 762
    invoke-static/range {v10 .. v15}, LO1/p;->f(FF[IIII)I

    .line 763
    .line 764
    .line 765
    move-result v3

    .line 766
    if-eqz v3, :cond_2c

    .line 767
    .line 768
    iget-object v4, v0, LO1/p;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 769
    .line 770
    invoke-virtual {v4, v8, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 771
    .line 772
    .line 773
    :cond_2c
    iput v2, v0, LO1/p;->m:F

    .line 774
    .line 775
    :cond_2d
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 776
    .line 777
    .line 778
    move-result v0

    .line 779
    if-eq v0, v1, :cond_2e

    .line 780
    .line 781
    if-ne v0, v9, :cond_2f

    .line 782
    .line 783
    :cond_2e
    const/4 v0, 0x0

    .line 784
    iput-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->b0:LO1/O;

    .line 785
    .line 786
    :cond_2f
    :goto_f
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroid/view/VelocityTracker;

    .line 787
    .line 788
    if-eqz v0, :cond_30

    .line 789
    .line 790
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 791
    .line 792
    .line 793
    :cond_30
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->o0(I)V

    .line 794
    .line 795
    .line 796
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->b0()V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 800
    .line 801
    .line 802
    return v9

    .line 803
    :cond_31
    :goto_10
    return v8
.end method

.method public final p()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Z

    .line 2
    .line 3
    const-string v1, "RV FullInvalidate"

    .line 4
    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m0:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:LO1/b;

    .line 14
    .line 15
    invoke-virtual {v0}, LO1/b;->g()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:LO1/b;

    .line 23
    .line 24
    iget v2, v0, LO1/b;->f:I

    .line 25
    .line 26
    and-int/lit8 v3, v2, 0x4

    .line 27
    .line 28
    if-eqz v3, :cond_7

    .line 29
    .line 30
    and-int/lit8 v2, v2, 0xb

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_2
    const-string v0, "RV PartialInvalidate"

    .line 36
    .line 37
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->l0()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->U()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:LO1/b;

    .line 47
    .line 48
    invoke-virtual {v0}, LO1/b;->j()V

    .line 49
    .line 50
    .line 51
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    .line 52
    .line 53
    if-nez v0, :cond_6

    .line 54
    .line 55
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 56
    .line 57
    invoke-virtual {v0}, LO1/c;->e()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v1, 0x0

    .line 62
    :goto_0
    if-ge v1, v0, :cond_5

    .line 63
    .line 64
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 65
    .line 66
    invoke-virtual {v2, v1}, LO1/c;->d(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    invoke-virtual {v2}, LO1/c0;->q()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    invoke-virtual {v2}, LO1/c0;->m()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->r()V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:LO1/b;

    .line 97
    .line 98
    invoke-virtual {v0}, LO1/b;->b()V

    .line 99
    .line 100
    .line 101
    :cond_6
    :goto_2
    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->n0(Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->V(Z)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 109
    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_7
    :goto_3
    invoke-virtual {v0}, LO1/b;->g()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_8

    .line 117
    .line 118
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->r()V

    .line 122
    .line 123
    .line 124
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 125
    .line 126
    .line 127
    :cond_8
    :goto_4
    return-void

    .line 128
    :cond_9
    :goto_5
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->r()V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public final p0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K0:LO1/b0;

    .line 6
    .line 7
    iget-object v1, v0, LO1/b0;->M:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, LO1/b0;->I:Landroid/widget/OverScroller;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, v0, LO1/L;->e:LO1/w;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, LO1/w;->h()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final q(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    sget-object v0, LN/N;->a:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {p1, v1, v0}, LO1/L;->h(III)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v1, v0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {p2, v1, v0}, LO1/L;->h(III)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final r()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 4
    .line 5
    const-string v2, "RecyclerView"

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v1, "No adapter attached; skipping layout"

    .line 10
    .line 11
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string v1, "No layout manager attached; skipping layout"

    .line 20
    .line 21
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    iput-boolean v3, v1, LO1/Y;->i:Z

    .line 29
    .line 30
    iget-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->c1:Z

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    if-eqz v4, :cond_3

    .line 34
    .line 35
    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->d1:I

    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-ne v4, v6, :cond_2

    .line 42
    .line 43
    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->e1:I

    .line 44
    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eq v4, v6, :cond_3

    .line 50
    .line 51
    :cond_2
    const/4 v4, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const/4 v4, 0x0

    .line 54
    :goto_0
    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView;->d1:I

    .line 55
    .line 56
    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView;->e1:I

    .line 57
    .line 58
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->c1:Z

    .line 59
    .line 60
    iget v6, v1, LO1/Y;->d:I

    .line 61
    .line 62
    if-ne v6, v5, :cond_4

    .line 63
    .line 64
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->s()V

    .line 65
    .line 66
    .line 67
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 68
    .line 69
    invoke-virtual {v4, v0}, LO1/L;->I0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->t()V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->K:LO1/b;

    .line 77
    .line 78
    iget-object v7, v6, LO1/b;->c:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-nez v7, :cond_5

    .line 85
    .line 86
    iget-object v6, v6, LO1/b;->b:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-nez v6, :cond_5

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    if-nez v4, :cond_7

    .line 96
    .line 97
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 98
    .line 99
    iget v4, v4, LO1/L;->n:I

    .line 100
    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-ne v4, v6, :cond_7

    .line 106
    .line 107
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 108
    .line 109
    iget v4, v4, LO1/L;->o:I

    .line 110
    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eq v4, v6, :cond_6

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_6
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 119
    .line 120
    invoke-virtual {v4, v0}, LO1/L;->I0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_7
    :goto_1
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 125
    .line 126
    invoke-virtual {v4, v0}, LO1/L;->I0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->t()V

    .line 130
    .line 131
    .line 132
    :goto_2
    const/4 v4, 0x4

    .line 133
    invoke-virtual {v1, v4}, LO1/Y;->a(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->l0()V

    .line 137
    .line 138
    .line 139
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->U()V

    .line 140
    .line 141
    .line 142
    iput v5, v1, LO1/Y;->d:I

    .line 143
    .line 144
    iget-boolean v6, v1, LO1/Y;->j:Z

    .line 145
    .line 146
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 147
    .line 148
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->M:LO1/o0;

    .line 149
    .line 150
    if-eqz v6, :cond_21

    .line 151
    .line 152
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 153
    .line 154
    invoke-virtual {v6}, LO1/c;->e()I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    sub-int/2addr v6, v5

    .line 159
    :goto_3
    if-ltz v6, :cond_15

    .line 160
    .line 161
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 162
    .line 163
    invoke-virtual {v10, v6}, LO1/c;->d(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    invoke-virtual {v10}, LO1/c0;->q()Z

    .line 172
    .line 173
    .line 174
    move-result v11

    .line 175
    if-eqz v11, :cond_8

    .line 176
    .line 177
    goto/16 :goto_8

    .line 178
    .line 179
    :cond_8
    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 180
    .line 181
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    iget v11, v10, LO1/c0;->I:I

    .line 185
    .line 186
    int-to-long v11, v11

    .line 187
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 188
    .line 189
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    new-instance v13, Lj0/c;

    .line 193
    .line 194
    const/4 v14, 0x2

    .line 195
    invoke-direct {v13, v14}, Lj0/c;-><init>(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v13, v10}, Lj0/c;->b(LO1/c0;)V

    .line 199
    .line 200
    .line 201
    iget-object v14, v9, LO1/o0;->c:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v14, Lr/j;

    .line 204
    .line 205
    invoke-virtual {v14, v11, v12}, Lr/j;->d(J)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v14

    .line 209
    check-cast v14, LO1/c0;

    .line 210
    .line 211
    if-eqz v14, :cond_13

    .line 212
    .line 213
    invoke-virtual {v14}, LO1/c0;->q()Z

    .line 214
    .line 215
    .line 216
    move-result v15

    .line 217
    if-nez v15, :cond_13

    .line 218
    .line 219
    iget-object v15, v9, LO1/o0;->b:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v15, Lr/m;

    .line 222
    .line 223
    invoke-virtual {v15, v14}, Lr/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v15

    .line 227
    check-cast v15, LO1/n0;

    .line 228
    .line 229
    if-eqz v15, :cond_9

    .line 230
    .line 231
    iget v15, v15, LO1/n0;->a:I

    .line 232
    .line 233
    and-int/2addr v15, v5

    .line 234
    if-eqz v15, :cond_9

    .line 235
    .line 236
    const/4 v15, 0x1

    .line 237
    goto :goto_4

    .line 238
    :cond_9
    const/4 v15, 0x0

    .line 239
    :goto_4
    iget-object v7, v9, LO1/o0;->b:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v7, Lr/m;

    .line 242
    .line 243
    invoke-virtual {v7, v10}, Lr/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    check-cast v7, LO1/n0;

    .line 248
    .line 249
    if-eqz v7, :cond_a

    .line 250
    .line 251
    iget v7, v7, LO1/n0;->a:I

    .line 252
    .line 253
    and-int/2addr v7, v5

    .line 254
    if-eqz v7, :cond_a

    .line 255
    .line 256
    const/4 v7, 0x1

    .line 257
    goto :goto_5

    .line 258
    :cond_a
    const/4 v7, 0x0

    .line 259
    :goto_5
    if-eqz v15, :cond_b

    .line 260
    .line 261
    if-ne v14, v10, :cond_b

    .line 262
    .line 263
    invoke-virtual {v9, v10, v13}, LO1/o0;->b(LO1/c0;Lj0/c;)V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_8

    .line 267
    .line 268
    :cond_b
    invoke-virtual {v9, v14, v4}, LO1/o0;->k(LO1/c0;I)Lj0/c;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    invoke-virtual {v9, v10, v13}, LO1/o0;->b(LO1/c0;Lj0/c;)V

    .line 273
    .line 274
    .line 275
    const/16 v13, 0x8

    .line 276
    .line 277
    invoke-virtual {v9, v10, v13}, LO1/o0;->k(LO1/c0;I)Lj0/c;

    .line 278
    .line 279
    .line 280
    move-result-object v13

    .line 281
    if-nez v5, :cond_f

    .line 282
    .line 283
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 284
    .line 285
    invoke-virtual {v5}, LO1/c;->e()I

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    const/4 v7, 0x0

    .line 290
    :goto_6
    if-ge v7, v5, :cond_e

    .line 291
    .line 292
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 293
    .line 294
    invoke-virtual {v13, v7}, LO1/c;->d(I)Landroid/view/View;

    .line 295
    .line 296
    .line 297
    move-result-object v13

    .line 298
    invoke-static {v13}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 299
    .line 300
    .line 301
    move-result-object v13

    .line 302
    if-ne v13, v10, :cond_c

    .line 303
    .line 304
    move/from16 v16, v5

    .line 305
    .line 306
    goto :goto_7

    .line 307
    :cond_c
    iget-object v15, v0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 308
    .line 309
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    iget v15, v13, LO1/c0;->I:I

    .line 313
    .line 314
    move/from16 v16, v5

    .line 315
    .line 316
    int-to-long v4, v15

    .line 317
    cmp-long v15, v4, v11

    .line 318
    .line 319
    if-eqz v15, :cond_d

    .line 320
    .line 321
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .line 322
    .line 323
    move/from16 v5, v16

    .line 324
    .line 325
    const/4 v4, 0x4

    .line 326
    goto :goto_6

    .line 327
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 328
    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    const-string v3, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    .line 332
    .line 333
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string v3, " \n View Holder 2:"

    .line 340
    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-static {v0, v2}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw v1

    .line 355
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    const-string v5, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    .line 358
    .line 359
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    const-string v5, " cannot be found but it is necessary for "

    .line 366
    .line 367
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->B()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    goto :goto_8

    .line 388
    :cond_f
    invoke-virtual {v14, v3}, LO1/c0;->p(Z)V

    .line 389
    .line 390
    .line 391
    if-eqz v15, :cond_10

    .line 392
    .line 393
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView;->h(LO1/c0;)V

    .line 394
    .line 395
    .line 396
    :cond_10
    if-eq v14, v10, :cond_12

    .line 397
    .line 398
    if-eqz v7, :cond_11

    .line 399
    .line 400
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->h(LO1/c0;)V

    .line 401
    .line 402
    .line 403
    :cond_11
    iput-object v10, v14, LO1/c0;->N:LO1/c0;

    .line 404
    .line 405
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView;->h(LO1/c0;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v8, v14}, Ls1/g;->m(LO1/c0;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v10, v3}, LO1/c0;->p(Z)V

    .line 412
    .line 413
    .line 414
    iput-object v14, v10, LO1/c0;->O:LO1/c0;

    .line 415
    .line 416
    :cond_12
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 417
    .line 418
    invoke-virtual {v4, v14, v10, v5, v13}, LO1/H;->a(LO1/c0;LO1/c0;Lj0/c;Lj0/c;)Z

    .line 419
    .line 420
    .line 421
    move-result v4

    .line 422
    if-eqz v4, :cond_14

    .line 423
    .line 424
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->X()V

    .line 425
    .line 426
    .line 427
    goto :goto_8

    .line 428
    :cond_13
    invoke-virtual {v9, v10, v13}, LO1/o0;->b(LO1/c0;Lj0/c;)V

    .line 429
    .line 430
    .line 431
    :cond_14
    :goto_8
    add-int/lit8 v6, v6, -0x1

    .line 432
    .line 433
    const/4 v4, 0x4

    .line 434
    const/4 v5, 0x1

    .line 435
    goto/16 :goto_3

    .line 436
    .line 437
    :cond_15
    iget-object v2, v9, LO1/o0;->b:Ljava/lang/Object;

    .line 438
    .line 439
    check-cast v2, Lr/m;

    .line 440
    .line 441
    iget v2, v2, Lr/m;->I:I

    .line 442
    .line 443
    const/4 v4, 0x1

    .line 444
    sub-int/2addr v2, v4

    .line 445
    :goto_9
    if-ltz v2, :cond_21

    .line 446
    .line 447
    iget-object v4, v9, LO1/o0;->b:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast v4, Lr/m;

    .line 450
    .line 451
    invoke-virtual {v4, v2}, Lr/m;->f(I)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    move-object v11, v4

    .line 456
    check-cast v11, LO1/c0;

    .line 457
    .line 458
    iget-object v4, v9, LO1/o0;->b:Ljava/lang/Object;

    .line 459
    .line 460
    check-cast v4, Lr/m;

    .line 461
    .line 462
    invoke-virtual {v4, v2}, Lr/m;->h(I)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    check-cast v4, LO1/n0;

    .line 467
    .line 468
    iget v5, v4, LO1/n0;->a:I

    .line 469
    .line 470
    and-int/lit8 v6, v5, 0x3

    .line 471
    .line 472
    const/4 v7, 0x3

    .line 473
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->g1:LO1/B;

    .line 474
    .line 475
    if-ne v6, v7, :cond_17

    .line 476
    .line 477
    iget-object v5, v10, LO1/B;->G:Landroidx/recyclerview/widget/RecyclerView;

    .line 478
    .line 479
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 480
    .line 481
    iget-object v7, v11, LO1/c0;->G:Landroid/view/View;

    .line 482
    .line 483
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 484
    .line 485
    invoke-virtual {v6, v7, v5}, LO1/L;->y0(Landroid/view/View;Ls1/g;)V

    .line 486
    .line 487
    .line 488
    :cond_16
    :goto_a
    const/4 v6, 0x0

    .line 489
    goto/16 :goto_c

    .line 490
    .line 491
    :cond_17
    and-int/lit8 v6, v5, 0x1

    .line 492
    .line 493
    if-eqz v6, :cond_19

    .line 494
    .line 495
    iget-object v5, v4, LO1/n0;->b:Lj0/c;

    .line 496
    .line 497
    if-nez v5, :cond_18

    .line 498
    .line 499
    iget-object v5, v10, LO1/B;->G:Landroidx/recyclerview/widget/RecyclerView;

    .line 500
    .line 501
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 502
    .line 503
    iget-object v7, v11, LO1/c0;->G:Landroid/view/View;

    .line 504
    .line 505
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 506
    .line 507
    invoke-virtual {v6, v7, v5}, LO1/L;->y0(Landroid/view/View;Ls1/g;)V

    .line 508
    .line 509
    .line 510
    goto :goto_a

    .line 511
    :cond_18
    iget-object v6, v4, LO1/n0;->c:Lj0/c;

    .line 512
    .line 513
    invoke-virtual {v10, v11, v5, v6}, LO1/B;->g(LO1/c0;Lj0/c;Lj0/c;)V

    .line 514
    .line 515
    .line 516
    goto :goto_a

    .line 517
    :cond_19
    and-int/lit8 v6, v5, 0xe

    .line 518
    .line 519
    const/16 v7, 0xe

    .line 520
    .line 521
    if-ne v6, v7, :cond_1a

    .line 522
    .line 523
    iget-object v5, v4, LO1/n0;->b:Lj0/c;

    .line 524
    .line 525
    iget-object v6, v4, LO1/n0;->c:Lj0/c;

    .line 526
    .line 527
    invoke-virtual {v10, v11, v5, v6}, LO1/B;->f(LO1/c0;Lj0/c;Lj0/c;)V

    .line 528
    .line 529
    .line 530
    goto :goto_a

    .line 531
    :cond_1a
    and-int/lit8 v6, v5, 0xc

    .line 532
    .line 533
    const/16 v7, 0xc

    .line 534
    .line 535
    if-ne v6, v7, :cond_1e

    .line 536
    .line 537
    iget-object v5, v4, LO1/n0;->b:Lj0/c;

    .line 538
    .line 539
    iget-object v6, v4, LO1/n0;->c:Lj0/c;

    .line 540
    .line 541
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v11, v3}, LO1/c0;->p(Z)V

    .line 545
    .line 546
    .line 547
    iget-object v7, v10, LO1/B;->G:Landroidx/recyclerview/widget/RecyclerView;

    .line 548
    .line 549
    iget-boolean v10, v7, Landroidx/recyclerview/widget/RecyclerView;->m0:Z

    .line 550
    .line 551
    if-eqz v10, :cond_1b

    .line 552
    .line 553
    iget-object v10, v7, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 554
    .line 555
    invoke-virtual {v10, v11, v11, v5, v6}, LO1/H;->a(LO1/c0;LO1/c0;Lj0/c;Lj0/c;)Z

    .line 556
    .line 557
    .line 558
    move-result v5

    .line 559
    if-eqz v5, :cond_16

    .line 560
    .line 561
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->X()V

    .line 562
    .line 563
    .line 564
    goto :goto_a

    .line 565
    :cond_1b
    iget-object v10, v7, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 566
    .line 567
    check-cast v10, LO1/j;

    .line 568
    .line 569
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 570
    .line 571
    .line 572
    iget v12, v5, Lj0/c;->G:I

    .line 573
    .line 574
    iget v14, v6, Lj0/c;->G:I

    .line 575
    .line 576
    if-ne v12, v14, :cond_1d

    .line 577
    .line 578
    iget v13, v5, Lj0/c;->H:I

    .line 579
    .line 580
    iget v15, v6, Lj0/c;->H:I

    .line 581
    .line 582
    if-eq v13, v15, :cond_1c

    .line 583
    .line 584
    goto :goto_b

    .line 585
    :cond_1c
    invoke-virtual {v10, v11}, LO1/H;->c(LO1/c0;)V

    .line 586
    .line 587
    .line 588
    goto :goto_a

    .line 589
    :cond_1d
    :goto_b
    iget v13, v5, Lj0/c;->H:I

    .line 590
    .line 591
    iget v15, v6, Lj0/c;->H:I

    .line 592
    .line 593
    invoke-virtual/range {v10 .. v15}, LO1/j;->g(LO1/c0;IIII)Z

    .line 594
    .line 595
    .line 596
    move-result v5

    .line 597
    if-eqz v5, :cond_16

    .line 598
    .line 599
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->X()V

    .line 600
    .line 601
    .line 602
    goto :goto_a

    .line 603
    :cond_1e
    and-int/lit8 v6, v5, 0x4

    .line 604
    .line 605
    if-eqz v6, :cond_1f

    .line 606
    .line 607
    iget-object v5, v4, LO1/n0;->b:Lj0/c;

    .line 608
    .line 609
    const/4 v6, 0x0

    .line 610
    invoke-virtual {v10, v11, v5, v6}, LO1/B;->g(LO1/c0;Lj0/c;Lj0/c;)V

    .line 611
    .line 612
    .line 613
    goto :goto_c

    .line 614
    :cond_1f
    const/4 v6, 0x0

    .line 615
    and-int/lit8 v5, v5, 0x8

    .line 616
    .line 617
    if-eqz v5, :cond_20

    .line 618
    .line 619
    iget-object v5, v4, LO1/n0;->b:Lj0/c;

    .line 620
    .line 621
    iget-object v7, v4, LO1/n0;->c:Lj0/c;

    .line 622
    .line 623
    invoke-virtual {v10, v11, v5, v7}, LO1/B;->f(LO1/c0;Lj0/c;Lj0/c;)V

    .line 624
    .line 625
    .line 626
    :cond_20
    :goto_c
    iput v3, v4, LO1/n0;->a:I

    .line 627
    .line 628
    iput-object v6, v4, LO1/n0;->b:Lj0/c;

    .line 629
    .line 630
    iput-object v6, v4, LO1/n0;->c:Lj0/c;

    .line 631
    .line 632
    sget-object v5, LO1/n0;->d:Lu/e;

    .line 633
    .line 634
    invoke-virtual {v5, v4}, Lu/e;->a(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    add-int/lit8 v2, v2, -0x1

    .line 638
    .line 639
    goto/16 :goto_9

    .line 640
    .line 641
    :cond_21
    const/4 v6, 0x0

    .line 642
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 643
    .line 644
    invoke-virtual {v2, v8}, LO1/L;->x0(Ls1/g;)V

    .line 645
    .line 646
    .line 647
    iget v2, v1, LO1/Y;->e:I

    .line 648
    .line 649
    iput v2, v1, LO1/Y;->b:I

    .line 650
    .line 651
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->m0:Z

    .line 652
    .line 653
    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->n0:Z

    .line 654
    .line 655
    iput-boolean v3, v1, LO1/Y;->j:Z

    .line 656
    .line 657
    iput-boolean v3, v1, LO1/Y;->k:Z

    .line 658
    .line 659
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 660
    .line 661
    iput-boolean v3, v2, LO1/L;->f:Z

    .line 662
    .line 663
    iget-object v2, v8, Ls1/g;->d:Ljava/lang/Cloneable;

    .line 664
    .line 665
    check-cast v2, Ljava/util/ArrayList;

    .line 666
    .line 667
    if-eqz v2, :cond_22

    .line 668
    .line 669
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 670
    .line 671
    .line 672
    :cond_22
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 673
    .line 674
    iget-boolean v4, v2, LO1/L;->k:Z

    .line 675
    .line 676
    if-eqz v4, :cond_23

    .line 677
    .line 678
    iput v3, v2, LO1/L;->j:I

    .line 679
    .line 680
    iput-boolean v3, v2, LO1/L;->k:Z

    .line 681
    .line 682
    invoke-virtual {v8}, Ls1/g;->n()V

    .line 683
    .line 684
    .line 685
    :cond_23
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 686
    .line 687
    invoke-virtual {v2, v1}, LO1/L;->o0(LO1/Y;)V

    .line 688
    .line 689
    .line 690
    const/4 v2, 0x1

    .line 691
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->V(Z)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->n0(Z)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v9}, LO1/o0;->d()V

    .line 698
    .line 699
    .line 700
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->V0:[I

    .line 701
    .line 702
    aget v5, v4, v3

    .line 703
    .line 704
    aget v7, v4, v2

    .line 705
    .line 706
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->F([I)V

    .line 707
    .line 708
    .line 709
    aget v8, v4, v3

    .line 710
    .line 711
    if-ne v8, v5, :cond_24

    .line 712
    .line 713
    aget v4, v4, v2

    .line 714
    .line 715
    if-eq v4, v7, :cond_25

    .line 716
    .line 717
    :cond_24
    invoke-virtual {v0, v3, v3}, Landroidx/recyclerview/widget/RecyclerView;->w(II)V

    .line 718
    .line 719
    .line 720
    :cond_25
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->J0:Z

    .line 721
    .line 722
    const-wide/16 v4, -0x1

    .line 723
    .line 724
    const/4 v7, -0x1

    .line 725
    if-eqz v2, :cond_31

    .line 726
    .line 727
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 728
    .line 729
    if-eqz v2, :cond_31

    .line 730
    .line 731
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    .line 732
    .line 733
    .line 734
    move-result v2

    .line 735
    if-eqz v2, :cond_31

    .line 736
    .line 737
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 738
    .line 739
    .line 740
    move-result v2

    .line 741
    const/high16 v8, 0x60000

    .line 742
    .line 743
    if-eq v2, v8, :cond_31

    .line 744
    .line 745
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 746
    .line 747
    .line 748
    move-result v2

    .line 749
    const/high16 v8, 0x20000

    .line 750
    .line 751
    if-ne v2, v8, :cond_26

    .line 752
    .line 753
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    .line 754
    .line 755
    .line 756
    move-result v2

    .line 757
    if-eqz v2, :cond_26

    .line 758
    .line 759
    goto/16 :goto_11

    .line 760
    .line 761
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    .line 762
    .line 763
    .line 764
    move-result v2

    .line 765
    if-nez v2, :cond_27

    .line 766
    .line 767
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 768
    .line 769
    .line 770
    move-result-object v2

    .line 771
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 772
    .line 773
    iget-object v8, v8, LO1/c;->c:Ljava/util/ArrayList;

    .line 774
    .line 775
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 776
    .line 777
    .line 778
    move-result v2

    .line 779
    if-nez v2, :cond_27

    .line 780
    .line 781
    goto/16 :goto_11

    .line 782
    .line 783
    :cond_27
    iget-wide v8, v1, LO1/Y;->m:J

    .line 784
    .line 785
    cmp-long v2, v8, v4

    .line 786
    .line 787
    if-eqz v2, :cond_28

    .line 788
    .line 789
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 790
    .line 791
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 792
    .line 793
    .line 794
    :cond_28
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 795
    .line 796
    invoke-virtual {v2}, LO1/c;->e()I

    .line 797
    .line 798
    .line 799
    move-result v2

    .line 800
    if-lez v2, :cond_2f

    .line 801
    .line 802
    iget v2, v1, LO1/Y;->l:I

    .line 803
    .line 804
    if-eq v2, v7, :cond_29

    .line 805
    .line 806
    move v3, v2

    .line 807
    :cond_29
    invoke-virtual {v1}, LO1/Y;->b()I

    .line 808
    .line 809
    .line 810
    move-result v2

    .line 811
    move v8, v3

    .line 812
    :goto_d
    if-ge v8, v2, :cond_2c

    .line 813
    .line 814
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->H(I)LO1/c0;

    .line 815
    .line 816
    .line 817
    move-result-object v9

    .line 818
    if-nez v9, :cond_2a

    .line 819
    .line 820
    goto :goto_e

    .line 821
    :cond_2a
    iget-object v9, v9, LO1/c0;->G:Landroid/view/View;

    .line 822
    .line 823
    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    .line 824
    .line 825
    .line 826
    move-result v10

    .line 827
    if-eqz v10, :cond_2b

    .line 828
    .line 829
    move-object v6, v9

    .line 830
    goto :goto_10

    .line 831
    :cond_2b
    add-int/lit8 v8, v8, 0x1

    .line 832
    .line 833
    goto :goto_d

    .line 834
    :cond_2c
    :goto_e
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 835
    .line 836
    .line 837
    move-result v2

    .line 838
    const/4 v3, 0x1

    .line 839
    sub-int/2addr v2, v3

    .line 840
    :goto_f
    if-ltz v2, :cond_2f

    .line 841
    .line 842
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->H(I)LO1/c0;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    if-nez v3, :cond_2d

    .line 847
    .line 848
    goto :goto_10

    .line 849
    :cond_2d
    iget-object v3, v3, LO1/c0;->G:Landroid/view/View;

    .line 850
    .line 851
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    .line 852
    .line 853
    .line 854
    move-result v8

    .line 855
    if-eqz v8, :cond_2e

    .line 856
    .line 857
    move-object v6, v3

    .line 858
    goto :goto_10

    .line 859
    :cond_2e
    add-int/lit8 v2, v2, -0x1

    .line 860
    .line 861
    goto :goto_f

    .line 862
    :cond_2f
    :goto_10
    if-eqz v6, :cond_31

    .line 863
    .line 864
    iget v2, v1, LO1/Y;->n:I

    .line 865
    .line 866
    int-to-long v8, v2

    .line 867
    cmp-long v3, v8, v4

    .line 868
    .line 869
    if-eqz v3, :cond_30

    .line 870
    .line 871
    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 872
    .line 873
    .line 874
    move-result-object v2

    .line 875
    if-eqz v2, :cond_30

    .line 876
    .line 877
    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    .line 878
    .line 879
    .line 880
    move-result v3

    .line 881
    if-eqz v3, :cond_30

    .line 882
    .line 883
    move-object v6, v2

    .line 884
    :cond_30
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 885
    .line 886
    .line 887
    :cond_31
    :goto_11
    iput-wide v4, v1, LO1/Y;->m:J

    .line 888
    .line 889
    iput v7, v1, LO1/Y;->l:I

    .line 890
    .line 891
    iput v7, v1, LO1/Y;->n:I

    .line 892
    .line 893
    return-void
.end method

.method public final removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, LO1/c0;->l()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget v1, v0, LO1/c0;->P:I

    .line 14
    .line 15
    and-int/lit16 v1, v1, -0x101

    .line 16
    .line 17
    iput v1, v0, LO1/c0;->P:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, LO1/c0;->q()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    .line 32
    .line 33
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-static {p0, p2}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_2
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->i1:Z

    .line 48
    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 55
    .line 56
    .line 57
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v1, "No ViewHolder found for child: "

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v0}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p2
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, LO1/L;->q0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->e0(Landroid/view/View;Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, LO1/L;->B0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, LO1/O;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final requestLayout()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public final s()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, LO1/Y;->a(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->C(LO1/Y;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-boolean v2, v0, LO1/Y;->i:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->l0()V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->M:LO1/o0;

    .line 17
    .line 18
    invoke-virtual {v3}, LO1/o0;->d()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->U()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->Y()V

    .line 25
    .line 26
    .line 27
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->J0:Z

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 39
    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v4, v5

    .line 48
    :goto_0
    if-nez v4, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->D(Landroid/view/View;)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)LO1/c0;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    :goto_1
    const-wide/16 v6, -0x1

    .line 63
    .line 64
    const/4 v4, -0x1

    .line 65
    if-nez v5, :cond_3

    .line 66
    .line 67
    iput-wide v6, v0, LO1/Y;->m:J

    .line 68
    .line 69
    iput v4, v0, LO1/Y;->l:I

    .line 70
    .line 71
    iput v4, v0, LO1/Y;->n:I

    .line 72
    .line 73
    goto :goto_5

    .line 74
    :cond_3
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 75
    .line 76
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iput-wide v6, v0, LO1/Y;->m:J

    .line 80
    .line 81
    iget-boolean v6, p0, Landroidx/recyclerview/widget/RecyclerView;->m0:Z

    .line 82
    .line 83
    if-eqz v6, :cond_4

    .line 84
    .line 85
    :goto_2
    const/4 v6, -0x1

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    invoke-virtual {v5}, LO1/c0;->j()Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_5

    .line 92
    .line 93
    iget v6, v5, LO1/c0;->J:I

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_5
    iget-object v6, v5, LO1/c0;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 97
    .line 98
    if-nez v6, :cond_6

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->J(LO1/c0;)I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    :goto_3
    iput v6, v0, LO1/Y;->l:I

    .line 106
    .line 107
    iget-object v5, v5, LO1/c0;->G:Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    :cond_7
    :goto_4
    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-nez v7, :cond_8

    .line 118
    .line 119
    instance-of v7, v5, Landroid/view/ViewGroup;

    .line 120
    .line 121
    if-eqz v7, :cond_8

    .line 122
    .line 123
    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-eqz v7, :cond_8

    .line 128
    .line 129
    check-cast v5, Landroid/view/ViewGroup;

    .line 130
    .line 131
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-eq v7, v4, :cond_7

    .line 140
    .line 141
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    goto :goto_4

    .line 146
    :cond_8
    iput v6, v0, LO1/Y;->n:I

    .line 147
    .line 148
    :goto_5
    iget-boolean v5, v0, LO1/Y;->j:Z

    .line 149
    .line 150
    if-eqz v5, :cond_9

    .line 151
    .line 152
    iget-boolean v5, p0, Landroidx/recyclerview/widget/RecyclerView;->R0:Z

    .line 153
    .line 154
    if-eqz v5, :cond_9

    .line 155
    .line 156
    const/4 v5, 0x1

    .line 157
    goto :goto_6

    .line 158
    :cond_9
    const/4 v5, 0x0

    .line 159
    :goto_6
    iput-boolean v5, v0, LO1/Y;->h:Z

    .line 160
    .line 161
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->R0:Z

    .line 162
    .line 163
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->Q0:Z

    .line 164
    .line 165
    iget-boolean v5, v0, LO1/Y;->k:Z

    .line 166
    .line 167
    iput-boolean v5, v0, LO1/Y;->g:Z

    .line 168
    .line 169
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 170
    .line 171
    invoke-virtual {v5}, LO1/C;->a()I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    iput v5, v0, LO1/Y;->e:I

    .line 176
    .line 177
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->V0:[I

    .line 178
    .line 179
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView;->F([I)V

    .line 180
    .line 181
    .line 182
    iget-boolean v5, v0, LO1/Y;->j:Z

    .line 183
    .line 184
    const/4 v6, 0x2

    .line 185
    if-eqz v5, :cond_c

    .line 186
    .line 187
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 188
    .line 189
    invoke-virtual {v5}, LO1/c;->e()I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    const/4 v7, 0x0

    .line 194
    :goto_7
    if-ge v7, v5, :cond_c

    .line 195
    .line 196
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 197
    .line 198
    invoke-virtual {v8, v7}, LO1/c;->d(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-virtual {v8}, LO1/c0;->q()Z

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    if-nez v9, :cond_b

    .line 211
    .line 212
    invoke-virtual {v8}, LO1/c0;->h()Z

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    if-eqz v9, :cond_a

    .line 217
    .line 218
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 219
    .line 220
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    goto :goto_8

    .line 224
    :cond_a
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 225
    .line 226
    invoke-static {v8}, LO1/H;->b(LO1/c0;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v8}, LO1/c0;->e()Ljava/util/List;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    new-instance v9, Lj0/c;

    .line 236
    .line 237
    invoke-direct {v9, v6}, Lj0/c;-><init>(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v9, v8}, Lj0/c;->b(LO1/c0;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3, v8, v9}, LO1/o0;->c(LO1/c0;Lj0/c;)V

    .line 244
    .line 245
    .line 246
    iget-boolean v9, v0, LO1/Y;->h:Z

    .line 247
    .line 248
    if-eqz v9, :cond_b

    .line 249
    .line 250
    invoke-virtual {v8}, LO1/c0;->m()Z

    .line 251
    .line 252
    .line 253
    move-result v9

    .line 254
    if-eqz v9, :cond_b

    .line 255
    .line 256
    invoke-virtual {v8}, LO1/c0;->j()Z

    .line 257
    .line 258
    .line 259
    move-result v9

    .line 260
    if-nez v9, :cond_b

    .line 261
    .line 262
    invoke-virtual {v8}, LO1/c0;->q()Z

    .line 263
    .line 264
    .line 265
    move-result v9

    .line 266
    if-nez v9, :cond_b

    .line 267
    .line 268
    invoke-virtual {v8}, LO1/c0;->h()Z

    .line 269
    .line 270
    .line 271
    move-result v9

    .line 272
    if-nez v9, :cond_b

    .line 273
    .line 274
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 275
    .line 276
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    iget v9, v8, LO1/c0;->I:I

    .line 280
    .line 281
    int-to-long v9, v9

    .line 282
    iget-object v11, v3, LO1/o0;->c:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v11, Lr/j;

    .line 285
    .line 286
    invoke-virtual {v11, v8, v9, v10}, Lr/j;->g(Ljava/lang/Object;J)V

    .line 287
    .line 288
    .line 289
    :cond_b
    :goto_8
    add-int/lit8 v7, v7, 0x1

    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_c
    iget-boolean v5, v0, LO1/Y;->k:Z

    .line 293
    .line 294
    if-eqz v5, :cond_16

    .line 295
    .line 296
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 297
    .line 298
    invoke-virtual {v5}, LO1/c;->h()I

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    const/4 v7, 0x0

    .line 303
    :goto_9
    if-ge v7, v5, :cond_10

    .line 304
    .line 305
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 306
    .line 307
    invoke-virtual {v8, v7}, LO1/c;->g(I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 312
    .line 313
    .line 314
    move-result-object v8

    .line 315
    sget-boolean v9, Landroidx/recyclerview/widget/RecyclerView;->i1:Z

    .line 316
    .line 317
    if-eqz v9, :cond_e

    .line 318
    .line 319
    iget v9, v8, LO1/c0;->I:I

    .line 320
    .line 321
    if-ne v9, v4, :cond_e

    .line 322
    .line 323
    invoke-virtual {v8}, LO1/c0;->j()Z

    .line 324
    .line 325
    .line 326
    move-result v9

    .line 327
    if-eqz v9, :cond_d

    .line 328
    .line 329
    goto :goto_a

    .line 330
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 331
    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string v2, "view holder cannot have position -1 unless it is removed"

    .line 335
    .line 336
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-static {p0, v1}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    throw v0

    .line 347
    :cond_e
    :goto_a
    invoke-virtual {v8}, LO1/c0;->q()Z

    .line 348
    .line 349
    .line 350
    move-result v9

    .line 351
    if-nez v9, :cond_f

    .line 352
    .line 353
    iget v9, v8, LO1/c0;->J:I

    .line 354
    .line 355
    if-ne v9, v4, :cond_f

    .line 356
    .line 357
    iget v9, v8, LO1/c0;->I:I

    .line 358
    .line 359
    iput v9, v8, LO1/c0;->J:I

    .line 360
    .line 361
    :cond_f
    add-int/lit8 v7, v7, 0x1

    .line 362
    .line 363
    goto :goto_9

    .line 364
    :cond_10
    iget-boolean v4, v0, LO1/Y;->f:Z

    .line 365
    .line 366
    iput-boolean v2, v0, LO1/Y;->f:Z

    .line 367
    .line 368
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 369
    .line 370
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 371
    .line 372
    invoke-virtual {v5, v7, v0}, LO1/L;->n0(Ls1/g;LO1/Y;)V

    .line 373
    .line 374
    .line 375
    iput-boolean v4, v0, LO1/Y;->f:Z

    .line 376
    .line 377
    const/4 v4, 0x0

    .line 378
    :goto_b
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 379
    .line 380
    invoke-virtual {v5}, LO1/c;->e()I

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    if-ge v4, v5, :cond_15

    .line 385
    .line 386
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 387
    .line 388
    invoke-virtual {v5, v4}, LO1/c;->d(I)Landroid/view/View;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    invoke-virtual {v5}, LO1/c0;->q()Z

    .line 397
    .line 398
    .line 399
    move-result v7

    .line 400
    if-eqz v7, :cond_11

    .line 401
    .line 402
    goto :goto_c

    .line 403
    :cond_11
    iget-object v7, v3, LO1/o0;->b:Ljava/lang/Object;

    .line 404
    .line 405
    check-cast v7, Lr/m;

    .line 406
    .line 407
    invoke-virtual {v7, v5}, Lr/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    check-cast v7, LO1/n0;

    .line 412
    .line 413
    if-eqz v7, :cond_12

    .line 414
    .line 415
    iget v7, v7, LO1/n0;->a:I

    .line 416
    .line 417
    and-int/lit8 v7, v7, 0x4

    .line 418
    .line 419
    if-eqz v7, :cond_12

    .line 420
    .line 421
    goto :goto_c

    .line 422
    :cond_12
    invoke-static {v5}, LO1/H;->b(LO1/c0;)V

    .line 423
    .line 424
    .line 425
    const/16 v7, 0x2000

    .line 426
    .line 427
    invoke-virtual {v5, v7}, LO1/c0;->f(I)Z

    .line 428
    .line 429
    .line 430
    move-result v7

    .line 431
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 432
    .line 433
    invoke-virtual {v5}, LO1/c0;->e()Ljava/util/List;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    new-instance v8, Lj0/c;

    .line 440
    .line 441
    invoke-direct {v8, v6}, Lj0/c;-><init>(I)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v8, v5}, Lj0/c;->b(LO1/c0;)V

    .line 445
    .line 446
    .line 447
    if-eqz v7, :cond_13

    .line 448
    .line 449
    invoke-virtual {p0, v5, v8}, Landroidx/recyclerview/widget/RecyclerView;->a0(LO1/c0;Lj0/c;)V

    .line 450
    .line 451
    .line 452
    goto :goto_c

    .line 453
    :cond_13
    iget-object v7, v3, LO1/o0;->b:Ljava/lang/Object;

    .line 454
    .line 455
    check-cast v7, Lr/m;

    .line 456
    .line 457
    invoke-virtual {v7, v5}, Lr/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v7

    .line 461
    check-cast v7, LO1/n0;

    .line 462
    .line 463
    if-nez v7, :cond_14

    .line 464
    .line 465
    invoke-static {}, LO1/n0;->a()LO1/n0;

    .line 466
    .line 467
    .line 468
    move-result-object v7

    .line 469
    iget-object v9, v3, LO1/o0;->b:Ljava/lang/Object;

    .line 470
    .line 471
    check-cast v9, Lr/m;

    .line 472
    .line 473
    invoke-virtual {v9, v5, v7}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    :cond_14
    iget v5, v7, LO1/n0;->a:I

    .line 477
    .line 478
    or-int/2addr v5, v6

    .line 479
    iput v5, v7, LO1/n0;->a:I

    .line 480
    .line 481
    iput-object v8, v7, LO1/n0;->b:Lj0/c;

    .line 482
    .line 483
    :goto_c
    add-int/lit8 v4, v4, 0x1

    .line 484
    .line 485
    goto :goto_b

    .line 486
    :cond_15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->m()V

    .line 487
    .line 488
    .line 489
    goto :goto_d

    .line 490
    :cond_16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->m()V

    .line 491
    .line 492
    .line 493
    :goto_d
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->V(Z)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->n0(Z)V

    .line 497
    .line 498
    .line 499
    iput v6, v0, LO1/Y;->d:I

    .line 500
    .line 501
    return-void
.end method

.method public final scrollBy(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, "RecyclerView"

    .line 6
    .line 7
    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 8
    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {v0}, LO1/L;->e()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 23
    .line 24
    invoke-virtual {v1}, LO1/L;->f()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    if-eqz v1, :cond_5

    .line 31
    .line 32
    :cond_2
    const/4 v2, 0x0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    const/4 p1, 0x0

    .line 37
    :goto_0
    if-eqz v1, :cond_4

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_4
    const/4 p2, 0x0

    .line 41
    :goto_1
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, p1, p2, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->f0(IILandroid/view/MotionEvent;I)Z

    .line 43
    .line 44
    .line 45
    :cond_5
    return-void
.end method

.method public final scrollTo(II)V
    .locals 0

    .line 1
    const-string p1, "RecyclerView"

    .line 2
    .line 3
    const-string p2, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->Q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v0, p1

    .line 20
    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->j0:I

    .line 21
    .line 22
    or-int/2addr p1, v0

    .line 23
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->j0:I

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setAccessibilityDelegateCompat(LO1/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->U0:LO1/e0;

    .line 2
    .line 3
    invoke-static {p0, p1}, LN/N;->m(Landroid/view/View;LN/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAdapter(LO1/C;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->H:LO1/U;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v1, LO1/C;->G:LO1/D;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, LO1/H;->e()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 29
    .line 30
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1, v3}, LO1/L;->w0(Ls1/g;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 38
    .line 39
    invoke-virtual {v1, v3}, LO1/L;->x0(Ls1/g;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object v1, v3, Ls1/g;->c:Ljava/lang/Cloneable;

    .line 43
    .line 44
    check-cast v1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ls1/g;->g()V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->K:LO1/b;

    .line 53
    .line 54
    iget-object v4, v1, LO1/b;->b:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v1, v4}, LO1/b;->l(Ljava/util/ArrayList;)V

    .line 57
    .line 58
    .line 59
    iget-object v4, v1, LO1/b;->c:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v1, v4}, LO1/b;->l(Ljava/util/ArrayList;)V

    .line 62
    .line 63
    .line 64
    iput v0, v1, LO1/b;->f:I

    .line 65
    .line 66
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 67
    .line 68
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    iget-object p1, p1, LO1/C;->G:LO1/D;

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    invoke-virtual {p1, v1}, LO1/L;->Y(LO1/C;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 85
    .line 86
    iget-object v2, v3, Ls1/g;->c:Ljava/lang/Cloneable;

    .line 87
    .line 88
    check-cast v2, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ls1/g;->g()V

    .line 94
    .line 95
    .line 96
    const/4 v2, 0x1

    .line 97
    invoke-virtual {v3, v1, v2}, Ls1/g;->f(LO1/C;Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ls1/g;->c()LO1/S;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    iget v1, v4, LO1/S;->b:I

    .line 107
    .line 108
    sub-int/2addr v1, v2

    .line 109
    iput v1, v4, LO1/S;->b:I

    .line 110
    .line 111
    :cond_5
    iget v1, v4, LO1/S;->b:I

    .line 112
    .line 113
    if-nez v1, :cond_7

    .line 114
    .line 115
    const/4 v1, 0x0

    .line 116
    :goto_0
    iget-object v5, v4, LO1/S;->a:Landroid/util/SparseArray;

    .line 117
    .line 118
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-ge v1, v6, :cond_7

    .line 123
    .line 124
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    check-cast v5, LO1/Q;

    .line 129
    .line 130
    iget-object v6, v5, LO1/Q;->a:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-eqz v7, :cond_6

    .line 141
    .line 142
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    check-cast v7, LO1/c0;

    .line 147
    .line 148
    iget-object v7, v7, LO1/c0;->G:Landroid/view/View;

    .line 149
    .line 150
    invoke-static {v7}, Lo3/r;->d(Landroid/view/View;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_6
    iget-object v5, v5, LO1/Q;->a:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 157
    .line 158
    .line 159
    add-int/lit8 v1, v1, 0x1

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_7
    if-eqz p1, :cond_8

    .line 163
    .line 164
    iget p1, v4, LO1/S;->b:I

    .line 165
    .line 166
    add-int/2addr p1, v2

    .line 167
    iput p1, v4, LO1/S;->b:I

    .line 168
    .line 169
    :cond_8
    invoke-virtual {v3}, Ls1/g;->e()V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 173
    .line 174
    iput-boolean v2, p1, LO1/Y;->f:Z

    .line 175
    .line 176
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->Z(Z)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 180
    .line 181
    .line 182
    return-void
.end method

.method public setChildDrawingOrderCallback(LO1/F;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 13
    .line 14
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Z

    .line 15
    .line 16
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 17
    .line 18
    .line 19
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:Z

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public setEdgeEffectFactory(LO1/G;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->q0:LO1/G;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->s0:Landroid/widget/EdgeEffect;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setItemAnimator(LO1/H;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, LO1/H;->e()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, LO1/H;->a:LO1/B;

    .line 12
    .line 13
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->S0:LO1/B;

    .line 18
    .line 19
    iput-object v0, p1, LO1/H;->a:LO1/B;

    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 2
    .line 3
    iput p1, v0, Ls1/g;->a:I

    .line 4
    .line 5
    invoke-virtual {v0}, Ls1/g;->n()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setLayoutManager(LO1/L;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->p0()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, LO1/H;->e()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, LO1/L;->w0(Ls1/g;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, LO1/L;->x0(Ls1/g;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v2, Ls1/g;->c:Ljava/lang/Cloneable;

    .line 34
    .line 35
    check-cast v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ls1/g;->g()V

    .line 41
    .line 42
    .line 43
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Z

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 48
    .line 49
    iput-boolean v1, v0, LO1/L;->g:Z

    .line 50
    .line 51
    invoke-virtual {v0, p0}, LO1/L;->a0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-virtual {v0, v3}, LO1/L;->M0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 58
    .line 59
    .line 60
    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, v2, Ls1/g;->c:Ljava/lang/Cloneable;

    .line 64
    .line 65
    check-cast v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ls1/g;->g()V

    .line 71
    .line 72
    .line 73
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 74
    .line 75
    iget-object v3, v0, LO1/c;->b:Lf6/c;

    .line 76
    .line 77
    invoke-virtual {v3}, Lf6/c;->i()V

    .line 78
    .line 79
    .line 80
    iget-object v3, v0, LO1/c;->c:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    const/4 v5, 0x1

    .line 87
    sub-int/2addr v4, v5

    .line 88
    :goto_1
    iget-object v6, v0, LO1/c;->a:LO1/B;

    .line 89
    .line 90
    if-ltz v4, :cond_6

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    check-cast v7, Landroid/view/View;

    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    if-eqz v7, :cond_5

    .line 106
    .line 107
    iget v8, v7, LO1/c0;->V:I

    .line 108
    .line 109
    iget-object v6, v6, LO1/B;->G:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    .line 111
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->Q()Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_4

    .line 116
    .line 117
    iput v8, v7, LO1/c0;->W:I

    .line 118
    .line 119
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->a1:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    iget-object v6, v7, LO1/c0;->G:Landroid/view/View;

    .line 126
    .line 127
    invoke-virtual {v6, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 128
    .line 129
    .line 130
    :goto_2
    iput v1, v7, LO1/c0;->V:I

    .line 131
    .line 132
    :cond_5
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    add-int/lit8 v4, v4, -0x1

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_6
    iget-object v0, v6, LO1/B;->G:Landroidx/recyclerview/widget/RecyclerView;

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    :goto_3
    if-ge v1, v3, :cond_7

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 154
    .line 155
    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 160
    .line 161
    .line 162
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 163
    .line 164
    if-eqz p1, :cond_9

    .line 165
    .line 166
    iget-object v0, p1, LO1/L;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 167
    .line 168
    if-nez v0, :cond_8

    .line 169
    .line 170
    invoke-virtual {p1, p0}, LO1/L;->M0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 171
    .line 172
    .line 173
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Z

    .line 174
    .line 175
    if-eqz p1, :cond_9

    .line 176
    .line 177
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 178
    .line 179
    iput-boolean v5, p1, LO1/L;->g:Z

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 183
    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v2, "LayoutManager "

    .line 187
    .line 188
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v2, " is already attached to a RecyclerView:"

    .line 195
    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget-object p1, p1, LO1/L;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 200
    .line 201
    invoke-static {p1, v1}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v0

    .line 209
    :cond_9
    :goto_4
    invoke-virtual {v2}, Ls1/g;->n()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()LN/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, LN/o;->d:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v1, LN/N;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    iget-object v1, v0, LN/o;->c:Landroid/view/View;

    .line 12
    .line 13
    invoke-static {v1}, LN/E;->o(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-boolean p1, v0, LN/o;->d:Z

    .line 17
    .line 18
    return-void
.end method

.method public setOnFlingListener(LO1/N;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->E0:LO1/N;

    .line 2
    .line 3
    return-void
.end method

.method public setOnScrollListener(LO1/P;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->O0:LO1/P;

    .line 2
    .line 3
    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->J0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRecycledViewPool(LO1/S;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 2
    .line 3
    iget-object v1, v0, Ls1/g;->i:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Ls1/g;->f(LO1/C;Z)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Ls1/g;->g:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, LO1/S;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget v2, v1, LO1/S;->b:I

    .line 20
    .line 21
    add-int/lit8 v2, v2, -0x1

    .line 22
    .line 23
    iput v2, v1, LO1/S;->b:I

    .line 24
    .line 25
    :cond_0
    iput-object p1, v0, Ls1/g;->g:Ljava/lang/Object;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, v0, Ls1/g;->i:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()LO1/C;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Ls1/g;->g:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, LO1/S;

    .line 42
    .line 43
    iget v1, p1, LO1/S;->b:I

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    iput v1, p1, LO1/S;->b:I

    .line 48
    .line 49
    :cond_1
    invoke-virtual {v0}, Ls1/g;->e()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public setRecyclerListener(LO1/T;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->U:LO1/T;

    .line 2
    .line 3
    return-void
.end method

.method public setScrollState(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->w0:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->j1:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const-string v0, "setting scroll state to "

    .line 11
    .line 12
    const-string v1, " from "

    .line 13
    .line 14
    invoke-static {v0, p1, v1}, La/r;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView;->w0:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/Exception;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "RecyclerView"

    .line 33
    .line 34
    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    :cond_1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->w0:I

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    if-eq p1, v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K0:LO1/b0;

    .line 43
    .line 44
    iget-object v1, v0, LO1/b0;->M:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    iget-object v0, v0, LO1/b0;->I:Landroid/widget/OverScroller;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v0, v0, LO1/L;->e:LO1/w;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0}, LO1/w;->h()V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {v0, p1}, LO1/L;->t0(I)V

    .line 70
    .line 71
    .line 72
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->O0:LO1/P;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0, p1}, LO1/P;->a(I)V

    .line 77
    .line 78
    .line 79
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->P0:Ljava/util/ArrayList;

    .line 80
    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    add-int/lit8 v0, v0, -0x1

    .line 88
    .line 89
    :goto_0
    if-ltz v0, :cond_5

    .line 90
    .line 91
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->P0:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, LO1/P;

    .line 98
    .line 99
    invoke-virtual {v1, p1}, LO1/P;->a(I)V

    .line 100
    .line 101
    .line 102
    add-int/lit8 v0, v0, -0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq p1, v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, "; using default value"

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v1, "RecyclerView"

    .line 34
    .line 35
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->D0:I

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->D0:I

    .line 51
    .line 52
    :goto_1
    return-void
.end method

.method public setViewCacheExtension(LO1/a0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 2
    .line 3
    iput-object p1, v0, Ls1/g;->h:Ljava/lang/Object;

    .line 4
    .line 5
    return-void
.end method

.method public final startNestedScroll(I)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()LN/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, LN/o;->h(II)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final stopNestedScroll()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()LN/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, LN/o;->i(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final suppressLayout(Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    const-string v0, "Do not suppressLayout in layout or scroll"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->k(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    .line 14
    .line 15
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v5, 0x3

    .line 40
    const/4 v6, 0x0

    .line 41
    move-wide v1, v3

    .line 42
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    .line 51
    .line 52
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->i0:Z

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->p0()V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    return-void
.end method

.method public final t()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->l0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->U()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 8
    .line 9
    const/4 v1, 0x6

    .line 10
    invoke-virtual {v0, v1}, LO1/Y;->a(I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->K:LO1/b;

    .line 14
    .line 15
    invoke-virtual {v1}, LO1/b;->c()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 19
    .line 20
    invoke-virtual {v1}, LO1/C;->a()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iput v1, v0, LO1/Y;->e:I

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput v1, v0, LO1/Y;->c:I

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->J:LO1/V;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 35
    .line 36
    iget v4, v2, LO1/C;->H:I

    .line 37
    .line 38
    invoke-static {v4}, Lu/h;->b(I)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eq v4, v3, :cond_0

    .line 43
    .line 44
    const/4 v2, 0x2

    .line 45
    if-eq v4, v2, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v2}, LO1/C;->a()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-lez v2, :cond_2

    .line 53
    .line 54
    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->J:LO1/V;

    .line 55
    .line 56
    iget-object v2, v2, LO1/V;->I:Landroid/os/Parcelable;

    .line 57
    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 61
    .line 62
    invoke-virtual {v4, v2}, LO1/L;->r0(Landroid/os/Parcelable;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    const/4 v2, 0x0

    .line 66
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->J:LO1/V;

    .line 67
    .line 68
    :cond_2
    iput-boolean v1, v0, LO1/Y;->g:Z

    .line 69
    .line 70
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 71
    .line 72
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Ls1/g;

    .line 73
    .line 74
    invoke-virtual {v2, v4, v0}, LO1/L;->n0(Ls1/g;LO1/Y;)V

    .line 75
    .line 76
    .line 77
    iput-boolean v1, v0, LO1/Y;->f:Z

    .line 78
    .line 79
    iget-boolean v2, v0, LO1/Y;->j:Z

    .line 80
    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 84
    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    const/4 v2, 0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const/4 v2, 0x0

    .line 90
    :goto_1
    iput-boolean v2, v0, LO1/Y;->j:Z

    .line 91
    .line 92
    const/4 v2, 0x4

    .line 93
    iput v2, v0, LO1/Y;->d:I

    .line 94
    .line 95
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->V(Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->n0(Z)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final u(III[I[I)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()LN/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move-object v5, p5

    .line 10
    invoke-virtual/range {v0 .. v5}, LN/o;->c(III[I[I)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final v(IIII[II[I)V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()LN/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move-object v5, p5

    .line 10
    move v6, p6

    .line 11
    move-object v7, p7

    .line 12
    invoke-virtual/range {v0 .. v7}, LN/o;->e(IIII[II[I)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final w(II)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->p0:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->p0:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int v2, v0, p1

    .line 16
    .line 17
    sub-int v3, v1, p2

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->O0:LO1/P;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, p0, p1, p2}, LO1/P;->b(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->P0:Ljava/util/ArrayList;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    :goto_0
    if-ltz v0, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->P0:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, LO1/P;

    .line 48
    .line 49
    invoke-virtual {v1, p0, p1, p2}, LO1/P;->b(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v0, v0, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->p0:I

    .line 56
    .line 57
    add-int/lit8 p1, p1, -0x1

    .line 58
    .line 59
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->p0:I

    .line 60
    .line 61
    return-void
.end method

.method public final x()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->q0:LO1/G;

    .line 7
    .line 8
    check-cast v0, LO1/Z;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:Landroid/widget/EdgeEffect;

    .line 23
    .line 24
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    sub-int/2addr v1, v2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    sub-int/2addr v1, v2

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    sub-int/2addr v2, v3

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    sub-int/2addr v2, v3

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public final y()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->q0:LO1/G;

    .line 7
    .line 8
    check-cast v0, LO1/Z;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:Landroid/widget/EdgeEffect;

    .line 23
    .line 24
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    sub-int/2addr v1, v2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    sub-int/2addr v1, v2

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    sub-int/2addr v2, v3

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    sub-int/2addr v2, v3

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public final z()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->q0:LO1/G;

    .line 7
    .line 8
    check-cast v0, LO1/Z;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/widget/EdgeEffect;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t0:Landroid/widget/EdgeEffect;

    .line 23
    .line 24
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->N:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    sub-int/2addr v1, v2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    sub-int/2addr v1, v2

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    sub-int/2addr v2, v3

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    sub-int/2addr v2, v3

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method
