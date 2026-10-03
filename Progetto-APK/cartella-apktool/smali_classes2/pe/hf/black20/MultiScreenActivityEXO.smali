.class public Lpe/hf/black20/MultiScreenActivityEXO;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static S1:Ls0/h;


# instance fields
.field public A0:Landroid/widget/ImageButton;

.field public A1:I

.field public B0:Landroid/widget/ImageButton;

.field public B1:I

.field public C0:Landroid/widget/ImageButton;

.field public final C1:Z

.field public D0:Landroid/widget/ImageButton;

.field public D1:Lorg/json/JSONArray;

.field public E0:Landroid/widget/ImageButton;

.field public E1:Z

.field public F0:Landroid/widget/Button;

.field public F1:Ljava/lang/String;

.field public final G:Lpe/hf/black20/MultiScreenActivityEXO;

.field public G0:Landroid/widget/Button;

.field public G1:Landroidx/media3/ui/PlayerView;

.field public H:Landroid/content/SharedPreferences;

.field public H0:Landroid/widget/Button;

.field public H1:Landroidx/media3/ui/PlayerView;

.field public I:Ljava/lang/String;

.field public I0:Landroid/widget/Button;

.field public I1:Landroidx/media3/ui/PlayerView;

.field public J:Ljava/lang/String;

.field public J0:I

.field public J1:Landroidx/media3/ui/PlayerView;

.field public K:Ljava/lang/String;

.field public K0:I

.field public K1:LB0/O;

.field public L:Ljava/lang/String;

.field public L0:I

.field public L1:LB0/O;

.field public M:Landroid/view/SurfaceView;

.field public M0:Ljava/lang/String;

.field public M1:LB0/O;

.field public N:Landroid/view/SurfaceView;

.field public N0:Ljava/lang/String;

.field public N1:LB0/O;

.field public O:Landroid/view/SurfaceView;

.field public O0:F

.field public final O1:Lb7/W;

.field public P:Landroid/view/SurfaceView;

.field public P0:F

.field public final P1:Lb7/W;

.field public Q:Ljava/lang/String;

.field public Q0:F

.field public final Q1:Lb7/W;

.field public R:Ljava/lang/String;

.field public R0:F

.field public final R1:Lb7/W;

.field public S:Ljava/lang/String;

.field public S0:I

.field public T:Lorg/videolan/libvlc/MediaPlayer;

.field public T0:I

.field public U:Lorg/videolan/libvlc/MediaPlayer;

.field public U0:I

.field public V:Lorg/videolan/libvlc/MediaPlayer;

.field public V0:I

.field public W:Lorg/videolan/libvlc/MediaPlayer;

.field public W0:I

.field public X:Landroid/widget/FrameLayout;

.field public X0:I

.field public Y:Landroid/widget/FrameLayout;

.field public Y0:I

.field public Z:Landroid/widget/FrameLayout;

.field public Z0:I

.field public a0:Landroid/widget/FrameLayout;

.field public a1:I

.field public b0:Landroid/widget/FrameLayout;

.field public b1:Landroid/view/GestureDetector;

.field public c0:Landroid/widget/FrameLayout;

.field public c1:Landroid/widget/ProgressBar;

.field public d0:Landroid/widget/FrameLayout;

.field public d1:Landroid/widget/ListView;

.field public e0:Landroid/widget/FrameLayout;

.field public e1:Landroid/widget/ListView;

.field public f0:Landroid/widget/FrameLayout;

.field public f1:Lc7/d;

.field public g0:Landroid/widget/FrameLayout;

.field public g1:Lc7/b;

.field public h0:Landroid/widget/ImageButton;

.field public h1:Lc7/b;

.field public i0:Landroid/widget/ImageButton;

.field public i1:Lc7/c;

.field public j0:Landroid/widget/ImageButton;

.field public j1:Lh7/i;

.field public k0:Landroid/widget/ImageButton;

.field public k1:Le2/z;

.field public l0:Landroid/widget/ImageButton;

.field public l1:Ljava/util/ArrayList;

.field public m0:Landroid/widget/ImageButton;

.field public m1:Ljava/util/ArrayList;

.field public n0:Landroid/widget/ImageButton;

.field public n1:Ljava/util/ArrayList;

.field public o0:Landroid/widget/ImageButton;

.field public o1:Ljava/util/ArrayList;

.field public p0:Landroid/widget/ImageButton;

.field public final p1:Ljava/lang/String;

.field public q0:Landroid/widget/ImageButton;

.field public q1:Ljava/lang/String;

.field public r0:Landroid/widget/ImageButton;

.field public r1:Ljava/lang/String;

.field public s0:Landroid/widget/ImageButton;

.field public final s1:Ljava/lang/String;

.field public t0:Landroid/widget/ImageButton;

.field public t1:Landroid/widget/TextView;

.field public u0:Landroid/widget/ImageButton;

.field public u1:Landroid/widget/TextView;

.field public v0:Landroid/widget/ImageButton;

.field public v1:Landroid/widget/TextView;

.field public w0:Landroid/widget/ImageButton;

.field public w1:Landroid/widget/TextView;

.field public x0:Landroid/widget/ImageButton;

.field public x1:I

.field public y0:Landroid/widget/ImageButton;

.field public y1:I

.field public z0:Landroid/widget/ImageButton;

.field public z1:I


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
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->G:Lpe/hf/black20/MultiScreenActivityEXO;

    .line 5
    .line 6
    const-string v0, "300"

    .line 7
    .line 8
    iput-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->Q:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->R:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->S:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "p1"

    .line 15
    .line 16
    iput-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->M0:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->N0:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->O0:F

    .line 22
    .line 23
    iput v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->P0:F

    .line 24
    .line 25
    iput v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->Q0:F

    .line 26
    .line 27
    iput v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->R0:F

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->S0:I

    .line 31
    .line 32
    iput v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->T0:I

    .line 33
    .line 34
    iput v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->U0:I

    .line 35
    .line 36
    iput v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->V0:I

    .line 37
    .line 38
    iput v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->W0:I

    .line 39
    .line 40
    iput v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->X0:I

    .line 41
    .line 42
    iput v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->Y0:I

    .line 43
    .line 44
    iput v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->Z0:I

    .line 45
    .line 46
    iput v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->a1:I

    .line 47
    .line 48
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->l1:Ljava/util/ArrayList;

    .line 54
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->o1:Ljava/util/ArrayList;

    .line 61
    .line 62
    const-string v1, "no"

    .line 63
    .line 64
    iput-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->p1:Ljava/lang/String;

    .line 65
    .line 66
    const-string v1, "0"

    .line 67
    .line 68
    iput-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->q1:Ljava/lang/String;

    .line 69
    .line 70
    iput-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->r1:Ljava/lang/String;

    .line 71
    .line 72
    const-string v1, "ASC"

    .line 73
    .line 74
    iput-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->s1:Ljava/lang/String;

    .line 75
    .line 76
    iput v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->B1:I

    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    iput-boolean v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->C1:Z

    .line 80
    .line 81
    iput-boolean v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->E1:Z

    .line 82
    .line 83
    const-string v2, ""

    .line 84
    .line 85
    iput-object v2, p0, Lpe/hf/black20/MultiScreenActivityEXO;->F1:Ljava/lang/String;

    .line 86
    .line 87
    new-instance v2, Lb7/W;

    .line 88
    .line 89
    invoke-direct {v2, p0, v0}, Lb7/W;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 90
    .line 91
    .line 92
    iput-object v2, p0, Lpe/hf/black20/MultiScreenActivityEXO;->O1:Lb7/W;

    .line 93
    .line 94
    new-instance v0, Lb7/W;

    .line 95
    .line 96
    invoke-direct {v0, p0, v1}, Lb7/W;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->P1:Lb7/W;

    .line 100
    .line 101
    new-instance v0, Lb7/W;

    .line 102
    .line 103
    const/4 v1, 0x2

    .line 104
    invoke-direct {v0, p0, v1}, Lb7/W;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->Q1:Lb7/W;

    .line 108
    .line 109
    new-instance v0, Lb7/W;

    .line 110
    .line 111
    const/4 v1, 0x3

    .line 112
    invoke-direct {v0, p0, v1}, Lb7/W;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 113
    .line 114
    .line 115
    iput-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->R1:Lb7/W;

    .line 116
    .line 117
    return-void
.end method

.method public static a(Lpe/hf/black20/MultiScreenActivityEXO;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->O0:F

    .line 3
    .line 4
    iput v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->P0:F

    .line 5
    .line 6
    iput v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->Q0:F

    .line 7
    .line 8
    iput v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->R0:F

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->S0:I

    .line 12
    .line 13
    iput v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->T0:I

    .line 14
    .line 15
    iput v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->U0:I

    .line 16
    .line 17
    iput v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->V0:I

    .line 18
    .line 19
    iget-object v2, p0, Lpe/hf/black20/MultiScreenActivityEXO;->K1:LB0/O;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2, v0}, LB0/O;->W(F)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v2, p0, Lpe/hf/black20/MultiScreenActivityEXO;->L1:LB0/O;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2, v0}, LB0/O;->W(F)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v2, p0, Lpe/hf/black20/MultiScreenActivityEXO;->M1:LB0/O;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-virtual {v2, v0}, LB0/O;->W(F)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v2, p0, Lpe/hf/black20/MultiScreenActivityEXO;->N1:LB0/O;

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v2, v0}, LB0/O;->W(F)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->T:Lorg/videolan/libvlc/MediaPlayer;

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 52
    .line 53
    .line 54
    :cond_4
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->U:Lorg/videolan/libvlc/MediaPlayer;

    .line 55
    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 59
    .line 60
    .line 61
    :cond_5
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->V:Lorg/videolan/libvlc/MediaPlayer;

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 66
    .line 67
    .line 68
    :cond_6
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->W:Lorg/videolan/libvlc/MediaPlayer;

    .line 69
    .line 70
    if-eqz v0, :cond_7

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 73
    .line 74
    .line 75
    :cond_7
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->p0:Landroid/widget/ImageButton;

    .line 76
    .line 77
    const v1, 0x7f0808e8

    .line 78
    .line 79
    .line 80
    invoke-static {p0, v1, v0}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->q0:Landroid/widget/ImageButton;

    .line 84
    .line 85
    invoke-static {p0, v1, v0}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->r0:Landroid/widget/ImageButton;

    .line 89
    .line 90
    invoke-static {p0, v1, v0}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->s0:Landroid/widget/ImageButton;

    .line 94
    .line 95
    invoke-static {p0, v1, v0}, La/r;->r(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public static b(Lpe/hf/black20/MultiScreenActivityEXO;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->f0:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->F0:Landroid/widget/Button;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->G0:Landroid/widget/Button;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->H0:Landroid/widget/Button;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->I0:Landroid/widget/Button;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->x0:Landroid/widget/ImageButton;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->c0:Landroid/widget/FrameLayout;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->d0:Landroid/widget/FrameLayout;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->e0:Landroid/widget/FrameLayout;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->f0:Landroid/widget/FrameLayout;

    .line 58
    .line 59
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method

.method public static c(Lpe/hf/black20/MultiScreenActivityEXO;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->g0:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->o()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lb7/Y;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lb7/Y;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;)V

    .line 13
    .line 14
    .line 15
    new-array v1, v1, [Ljava/lang/Void;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->w()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static n(Landroid/net/Uri;)LO0/a;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lp0/M;->I(Landroid/net/Uri;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v0}, Lp0/M;->J(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_0
    const/4 v1, 0x2

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    new-instance v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    .line 24
    .line 25
    sget-object v1, Lpe/hf/black20/MultiScreenActivityEXO;->S1:Ls0/h;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;-><init>(Ls0/h;)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->i:Z

    .line 32
    .line 33
    new-instance v1, LH0/d;

    .line 34
    .line 35
    const/16 v2, 0x9

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-direct {v1, v2, v3}, LH0/d;-><init>(IZ)V

    .line 39
    .line 40
    .line 41
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->b:LH0/k;

    .line 42
    .line 43
    invoke-static {p0}, Lm0/I;->a(Landroid/net/Uri;)Lm0/I;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->b(Lm0/I;)LH0/o;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    if-nez v0, :cond_2

    .line 53
    .line 54
    new-instance v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    .line 55
    .line 56
    sget-object v1, Lpe/hf/black20/MultiScreenActivityEXO;->S1:Ls0/h;

    .line 57
    .line 58
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;-><init>(Ls0/h;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p0}, Lm0/I;->a(Landroid/net/Uri;)Lm0/I;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->b(Lm0/I;)LE0/j;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const/4 v1, 0x4

    .line 71
    if-ne v0, v1, :cond_3

    .line 72
    .line 73
    sget-object v4, Lpe/hf/black20/MultiScreenActivityEXO;->S1:Ls0/h;

    .line 74
    .line 75
    new-instance v0, LW0/p;

    .line 76
    .line 77
    invoke-direct {v0}, LW0/p;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v5, LB0/x;

    .line 81
    .line 82
    const/16 v1, 0x13

    .line 83
    .line 84
    invoke-direct {v5, v0, v1}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    new-instance v0, LG0/j;

    .line 88
    .line 89
    invoke-direct {v0}, LG0/j;-><init>()V

    .line 90
    .line 91
    .line 92
    new-instance v7, LU4/b;

    .line 93
    .line 94
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-static {p0}, Lm0/I;->a(Landroid/net/Uri;)Lm0/I;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    iget-object p0, v3, Lm0/I;->b:Lm0/E;

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    new-instance p0, LO0/N;

    .line 107
    .line 108
    invoke-virtual {v0, v3}, LG0/j;->b(Lm0/I;)LG0/r;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    const/high16 v8, 0x100000

    .line 113
    .line 114
    move-object v2, p0

    .line 115
    invoke-direct/range {v2 .. v8}, LO0/N;-><init>(Lm0/I;Ls0/h;LB0/x;LG0/r;LU4/b;I)V

    .line 116
    .line 117
    .line 118
    :goto_1
    return-object p0

    .line 119
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 120
    .line 121
    const-string v1, "Unsupported type: "

    .line 122
    .line 123
    invoke-static {v1, v0}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, LB0/z;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LB0/z;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, LB0/z;->a()LB0/O;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->K1:LB0/O;

    .line 11
    .line 12
    iget v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->O0:F

    .line 13
    .line 14
    invoke-virtual {v0, v1}, LB0/O;->W(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->G1:Landroidx/media3/ui/PlayerView;

    .line 18
    .line 19
    iget-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->K1:LB0/O;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setPlayer(Lm0/Y;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->K1:LB0/O;

    .line 25
    .line 26
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lpe/hf/black20/MultiScreenActivityEXO;->n(Landroid/net/Uri;)LO0/a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, LB0/O;->Q(LO0/a;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->K1:LB0/O;

    .line 38
    .line 39
    invoke-virtual {p1}, LB0/O;->K()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->K1:LB0/O;

    .line 43
    .line 44
    invoke-virtual {p1}, Lm0/f;->h()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, LB0/z;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LB0/z;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, LB0/z;->a()LB0/O;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->L1:LB0/O;

    .line 11
    .line 12
    iget v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->P0:F

    .line 13
    .line 14
    invoke-virtual {v0, v1}, LB0/O;->W(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->H1:Landroidx/media3/ui/PlayerView;

    .line 18
    .line 19
    iget-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->L1:LB0/O;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setPlayer(Lm0/Y;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->L1:LB0/O;

    .line 25
    .line 26
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lpe/hf/black20/MultiScreenActivityEXO;->n(Landroid/net/Uri;)LO0/a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, LB0/O;->Q(LO0/a;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->L1:LB0/O;

    .line 38
    .line 39
    invoke-virtual {p1}, LB0/O;->K()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->L1:LB0/O;

    .line 43
    .line 44
    invoke-virtual {p1}, Lm0/f;->h()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, LB0/z;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LB0/z;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, LB0/z;->a()LB0/O;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->M1:LB0/O;

    .line 11
    .line 12
    iget v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->Q0:F

    .line 13
    .line 14
    invoke-virtual {v0, v1}, LB0/O;->W(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->I1:Landroidx/media3/ui/PlayerView;

    .line 18
    .line 19
    iget-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->M1:LB0/O;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setPlayer(Lm0/Y;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->M1:LB0/O;

    .line 25
    .line 26
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lpe/hf/black20/MultiScreenActivityEXO;->n(Landroid/net/Uri;)LO0/a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, LB0/O;->Q(LO0/a;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->M1:LB0/O;

    .line 38
    .line 39
    invoke-virtual {p1}, LB0/O;->K()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->M1:LB0/O;

    .line 43
    .line 44
    invoke-virtual {p1}, Lm0/f;->h()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, LB0/z;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LB0/z;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, LB0/z;->a()LB0/O;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->N1:LB0/O;

    .line 11
    .line 12
    iget v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->R0:F

    .line 13
    .line 14
    invoke-virtual {v0, v1}, LB0/O;->W(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->J1:Landroidx/media3/ui/PlayerView;

    .line 18
    .line 19
    iget-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->N1:LB0/O;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setPlayer(Lm0/Y;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->N1:LB0/O;

    .line 25
    .line 26
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lpe/hf/black20/MultiScreenActivityEXO;->n(Landroid/net/Uri;)LO0/a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, LB0/O;->Q(LO0/a;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->N1:LB0/O;

    .line 38
    .line 39
    invoke-virtual {p1}, LB0/O;->K()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->N1:LB0/O;

    .line 43
    .line 44
    invoke-virtual {p1}, Lm0/f;->h()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->I:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->q()V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->Q:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->R:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    const-string v0, "--input-fast-seek"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    const-string v0, "--http-reconnect"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    const-string v0, "--repeat"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    const-string v0, "--avcodec-hw=any"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lorg/videolan/libvlc/util/HWDecoderUtil;->getAudioOutputFromDevice()Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget-object v1, Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;->OPENSLES:Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    .line 54
    .line 55
    if-ne v0, v1, :cond_0

    .line 56
    .line 57
    const-string v0, "--aout=opensles"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const-string v0, "--aout=android_audiotrack"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :goto_0
    const-string v0, "--audio-time-stretch"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    const-string v1, "--avcodec-skip-frame"

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    const-string v1, "--avcodec-skip-idct"

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    const-string v0, "--no-ts-trust-pcr"

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    new-instance v0, Lorg/videolan/libvlc/LibVLC;

    .line 92
    .line 93
    iget-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->G:Lpe/hf/black20/MultiScreenActivityEXO;

    .line 94
    .line 95
    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/LibVLC;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->M:Landroid/view/SurfaceView;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const/4 v1, 0x1

    .line 105
    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 106
    .line 107
    .line 108
    new-instance p1, Lorg/videolan/libvlc/MediaPlayer;

    .line 109
    .line 110
    invoke-direct {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;)V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->T:Lorg/videolan/libvlc/MediaPlayer;

    .line 114
    .line 115
    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->setAudioDigitalOutputEnabled(Z)Z

    .line 116
    .line 117
    .line 118
    new-instance p1, Lorg/videolan/libvlc/Media;

    .line 119
    .line 120
    iget-object v2, p0, Lpe/hf/black20/MultiScreenActivityEXO;->I:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-direct {p1, v0, v2}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/net/Uri;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->S:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v0, ":no-sout-all"

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v0, ":sout-keep"

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v2, ":http-user-agent="

    .line 147
    .line 148
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, Lpe/hf/black20/MultiScreenActivityEXO;->F1:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->H:Landroid/content/SharedPreferences;

    .line 164
    .line 165
    const-string v2, "vlc_hw"

    .line 166
    .line 167
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_2

    .line 172
    .line 173
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->H:Landroid/content/SharedPreferences;

    .line 174
    .line 175
    const/4 v3, 0x0

    .line 176
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    const-string v2, "yes"

    .line 181
    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_1

    .line 187
    .line 188
    invoke-virtual {p1, v1, v1}, Lorg/videolan/libvlc/Media;->setHWDecoderEnabled(ZZ)V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_1
    const/4 v0, 0x0

    .line 193
    invoke-virtual {p1, v0, v1}, Lorg/videolan/libvlc/Media;->setHWDecoderEnabled(ZZ)V

    .line 194
    .line 195
    .line 196
    :cond_2
    :goto_1
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->T:Lorg/videolan/libvlc/MediaPlayer;

    .line 197
    .line 198
    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/interfaces/IMedia;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->T:Lorg/videolan/libvlc/MediaPlayer;

    .line 202
    .line 203
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->M:Landroid/view/SurfaceView;

    .line 208
    .line 209
    invoke-interface {p1, v0}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setVideoView(Landroid/view/SurfaceView;)V

    .line 210
    .line 211
    .line 212
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IVLCVout;->attachViews()V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->T:Lorg/videolan/libvlc/MediaPlayer;

    .line 216
    .line 217
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->T:Lorg/videolan/libvlc/MediaPlayer;

    .line 221
    .line 222
    iget v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->S0:I

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->T:Lorg/videolan/libvlc/MediaPlayer;

    .line 228
    .line 229
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->X:Landroid/widget/FrameLayout;

    .line 234
    .line 235
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    iget-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->X:Landroid/widget/FrameLayout;

    .line 240
    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    invoke-interface {p1, v0, v1}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setWindowSize(II)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->T:Lorg/videolan/libvlc/MediaPlayer;

    .line 249
    .line 250
    const-string v0, "16:9"

    .line 251
    .line 252
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->T:Lorg/videolan/libvlc/MediaPlayer;

    .line 256
    .line 257
    const/4 v0, 0x0

    .line 258
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setScale(F)V

    .line 259
    .line 260
    .line 261
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->J:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->r()V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->Q:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->R:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    const-string v0, "--input-fast-seek"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    const-string v0, "--http-reconnect"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    const-string v0, "--repeat"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    const-string v0, "--avcodec-hw=any"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lorg/videolan/libvlc/util/HWDecoderUtil;->getAudioOutputFromDevice()Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget-object v1, Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;->OPENSLES:Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    .line 54
    .line 55
    if-ne v0, v1, :cond_0

    .line 56
    .line 57
    const-string v0, "--aout=opensles"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const-string v0, "--aout=android_audiotrack"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :goto_0
    const-string v0, "--audio-time-stretch"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    const-string v1, "--avcodec-skip-frame"

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    const-string v1, "--avcodec-skip-idct"

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    const-string v0, "--no-ts-trust-pcr"

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    new-instance v0, Lorg/videolan/libvlc/LibVLC;

    .line 92
    .line 93
    iget-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->G:Lpe/hf/black20/MultiScreenActivityEXO;

    .line 94
    .line 95
    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/LibVLC;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->N:Landroid/view/SurfaceView;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const/4 v1, 0x1

    .line 105
    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 106
    .line 107
    .line 108
    new-instance p1, Lorg/videolan/libvlc/MediaPlayer;

    .line 109
    .line 110
    invoke-direct {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;)V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->U:Lorg/videolan/libvlc/MediaPlayer;

    .line 114
    .line 115
    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->setAudioDigitalOutputEnabled(Z)Z

    .line 116
    .line 117
    .line 118
    new-instance p1, Lorg/videolan/libvlc/Media;

    .line 119
    .line 120
    iget-object v2, p0, Lpe/hf/black20/MultiScreenActivityEXO;->J:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-direct {p1, v0, v2}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/net/Uri;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->S:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v0, ":no-sout-all"

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v0, ":sout-keep"

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v2, ":http-user-agent="

    .line 147
    .line 148
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, Lpe/hf/black20/MultiScreenActivityEXO;->F1:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->H:Landroid/content/SharedPreferences;

    .line 164
    .line 165
    const-string v2, "vlc_hw"

    .line 166
    .line 167
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_2

    .line 172
    .line 173
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->H:Landroid/content/SharedPreferences;

    .line 174
    .line 175
    const/4 v3, 0x0

    .line 176
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    const-string v2, "yes"

    .line 181
    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_1

    .line 187
    .line 188
    invoke-virtual {p1, v1, v1}, Lorg/videolan/libvlc/Media;->setHWDecoderEnabled(ZZ)V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_1
    const/4 v0, 0x0

    .line 193
    invoke-virtual {p1, v0, v1}, Lorg/videolan/libvlc/Media;->setHWDecoderEnabled(ZZ)V

    .line 194
    .line 195
    .line 196
    :cond_2
    :goto_1
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->U:Lorg/videolan/libvlc/MediaPlayer;

    .line 197
    .line 198
    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/interfaces/IMedia;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->U:Lorg/videolan/libvlc/MediaPlayer;

    .line 202
    .line 203
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->N:Landroid/view/SurfaceView;

    .line 208
    .line 209
    invoke-interface {p1, v0}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setVideoView(Landroid/view/SurfaceView;)V

    .line 210
    .line 211
    .line 212
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IVLCVout;->attachViews()V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->U:Lorg/videolan/libvlc/MediaPlayer;

    .line 216
    .line 217
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->U:Lorg/videolan/libvlc/MediaPlayer;

    .line 221
    .line 222
    iget v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->T0:I

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->U:Lorg/videolan/libvlc/MediaPlayer;

    .line 228
    .line 229
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->Y:Landroid/widget/FrameLayout;

    .line 234
    .line 235
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    iget-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->Y:Landroid/widget/FrameLayout;

    .line 240
    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    invoke-interface {p1, v0, v1}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setWindowSize(II)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->U:Lorg/videolan/libvlc/MediaPlayer;

    .line 249
    .line 250
    const-string v0, "16:9"

    .line 251
    .line 252
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->U:Lorg/videolan/libvlc/MediaPlayer;

    .line 256
    .line 257
    const/4 v0, 0x0

    .line 258
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setScale(F)V

    .line 259
    .line 260
    .line 261
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->K:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->s()V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->Q:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->R:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    const-string v0, "--input-fast-seek"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    const-string v0, "--http-reconnect"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    const-string v0, "--repeat"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    const-string v0, "--avcodec-hw=any"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lorg/videolan/libvlc/util/HWDecoderUtil;->getAudioOutputFromDevice()Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget-object v1, Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;->OPENSLES:Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    .line 54
    .line 55
    if-ne v0, v1, :cond_0

    .line 56
    .line 57
    const-string v0, "--aout=opensles"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const-string v0, "--aout=android_audiotrack"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :goto_0
    const-string v0, "--audio-time-stretch"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    const-string v1, "--avcodec-skip-frame"

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    const-string v1, "--avcodec-skip-idct"

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    const-string v0, "--no-ts-trust-pcr"

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    new-instance v0, Lorg/videolan/libvlc/LibVLC;

    .line 92
    .line 93
    iget-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->G:Lpe/hf/black20/MultiScreenActivityEXO;

    .line 94
    .line 95
    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/LibVLC;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->O:Landroid/view/SurfaceView;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const/4 v1, 0x1

    .line 105
    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 106
    .line 107
    .line 108
    new-instance p1, Lorg/videolan/libvlc/MediaPlayer;

    .line 109
    .line 110
    invoke-direct {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;)V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->V:Lorg/videolan/libvlc/MediaPlayer;

    .line 114
    .line 115
    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->setAudioDigitalOutputEnabled(Z)Z

    .line 116
    .line 117
    .line 118
    new-instance p1, Lorg/videolan/libvlc/Media;

    .line 119
    .line 120
    iget-object v2, p0, Lpe/hf/black20/MultiScreenActivityEXO;->K:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-direct {p1, v0, v2}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/net/Uri;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->S:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v0, ":no-sout-all"

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v0, ":sout-keep"

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v2, ":http-user-agent="

    .line 147
    .line 148
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, Lpe/hf/black20/MultiScreenActivityEXO;->F1:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->H:Landroid/content/SharedPreferences;

    .line 164
    .line 165
    const-string v2, "vlc_hw"

    .line 166
    .line 167
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_2

    .line 172
    .line 173
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->H:Landroid/content/SharedPreferences;

    .line 174
    .line 175
    const/4 v3, 0x0

    .line 176
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    const-string v2, "yes"

    .line 181
    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_1

    .line 187
    .line 188
    invoke-virtual {p1, v1, v1}, Lorg/videolan/libvlc/Media;->setHWDecoderEnabled(ZZ)V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_1
    const/4 v0, 0x0

    .line 193
    invoke-virtual {p1, v0, v1}, Lorg/videolan/libvlc/Media;->setHWDecoderEnabled(ZZ)V

    .line 194
    .line 195
    .line 196
    :cond_2
    :goto_1
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->V:Lorg/videolan/libvlc/MediaPlayer;

    .line 197
    .line 198
    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/interfaces/IMedia;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->V:Lorg/videolan/libvlc/MediaPlayer;

    .line 202
    .line 203
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->O:Landroid/view/SurfaceView;

    .line 208
    .line 209
    invoke-interface {p1, v0}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setVideoView(Landroid/view/SurfaceView;)V

    .line 210
    .line 211
    .line 212
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IVLCVout;->attachViews()V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->V:Lorg/videolan/libvlc/MediaPlayer;

    .line 216
    .line 217
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->V:Lorg/videolan/libvlc/MediaPlayer;

    .line 221
    .line 222
    iget v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->U0:I

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->V:Lorg/videolan/libvlc/MediaPlayer;

    .line 228
    .line 229
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->Z:Landroid/widget/FrameLayout;

    .line 234
    .line 235
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    iget-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->Z:Landroid/widget/FrameLayout;

    .line 240
    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    invoke-interface {p1, v0, v1}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setWindowSize(II)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->V:Lorg/videolan/libvlc/MediaPlayer;

    .line 249
    .line 250
    const-string v0, "16:9"

    .line 251
    .line 252
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->V:Lorg/videolan/libvlc/MediaPlayer;

    .line 256
    .line 257
    const/4 v0, 0x0

    .line 258
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setScale(F)V

    .line 259
    .line 260
    .line 261
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->L:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->t()V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->Q:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->R:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    const-string v0, "--input-fast-seek"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    const-string v0, "--http-reconnect"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    const-string v0, "--repeat"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    const-string v0, "--avcodec-hw=any"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lorg/videolan/libvlc/util/HWDecoderUtil;->getAudioOutputFromDevice()Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget-object v1, Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;->OPENSLES:Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    .line 54
    .line 55
    if-ne v0, v1, :cond_0

    .line 56
    .line 57
    const-string v0, "--aout=opensles"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const-string v0, "--aout=android_audiotrack"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :goto_0
    const-string v0, "--audio-time-stretch"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    const-string v1, "--avcodec-skip-frame"

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    const-string v1, "--avcodec-skip-idct"

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    const-string v0, "--no-ts-trust-pcr"

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    new-instance v0, Lorg/videolan/libvlc/LibVLC;

    .line 92
    .line 93
    iget-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->G:Lpe/hf/black20/MultiScreenActivityEXO;

    .line 94
    .line 95
    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/LibVLC;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->P:Landroid/view/SurfaceView;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const/4 v1, 0x1

    .line 105
    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 106
    .line 107
    .line 108
    new-instance p1, Lorg/videolan/libvlc/MediaPlayer;

    .line 109
    .line 110
    invoke-direct {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;)V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->W:Lorg/videolan/libvlc/MediaPlayer;

    .line 114
    .line 115
    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->setAudioDigitalOutputEnabled(Z)Z

    .line 116
    .line 117
    .line 118
    new-instance p1, Lorg/videolan/libvlc/Media;

    .line 119
    .line 120
    iget-object v2, p0, Lpe/hf/black20/MultiScreenActivityEXO;->L:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-direct {p1, v0, v2}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/net/Uri;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->S:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v0, ":no-sout-all"

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v0, ":sout-keep"

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v2, ":http-user-agent="

    .line 147
    .line 148
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, Lpe/hf/black20/MultiScreenActivityEXO;->F1:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->H:Landroid/content/SharedPreferences;

    .line 164
    .line 165
    const-string v2, "vlc_hw"

    .line 166
    .line 167
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_2

    .line 172
    .line 173
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->H:Landroid/content/SharedPreferences;

    .line 174
    .line 175
    const/4 v3, 0x0

    .line 176
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    const-string v2, "yes"

    .line 181
    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_1

    .line 187
    .line 188
    invoke-virtual {p1, v1, v1}, Lorg/videolan/libvlc/Media;->setHWDecoderEnabled(ZZ)V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_1
    const/4 v0, 0x0

    .line 193
    invoke-virtual {p1, v0, v1}, Lorg/videolan/libvlc/Media;->setHWDecoderEnabled(ZZ)V

    .line 194
    .line 195
    .line 196
    :cond_2
    :goto_1
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->W:Lorg/videolan/libvlc/MediaPlayer;

    .line 197
    .line 198
    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/interfaces/IMedia;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->W:Lorg/videolan/libvlc/MediaPlayer;

    .line 202
    .line 203
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->P:Landroid/view/SurfaceView;

    .line 208
    .line 209
    invoke-interface {p1, v0}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setVideoView(Landroid/view/SurfaceView;)V

    .line 210
    .line 211
    .line 212
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IVLCVout;->attachViews()V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->W:Lorg/videolan/libvlc/MediaPlayer;

    .line 216
    .line 217
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->W:Lorg/videolan/libvlc/MediaPlayer;

    .line 221
    .line 222
    iget v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->V0:I

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->W:Lorg/videolan/libvlc/MediaPlayer;

    .line 228
    .line 229
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->a0:Landroid/widget/FrameLayout;

    .line 234
    .line 235
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    iget-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->a0:Landroid/widget/FrameLayout;

    .line 240
    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    invoke-interface {p1, v0, v1}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setWindowSize(II)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->W:Lorg/videolan/libvlc/MediaPlayer;

    .line 249
    .line 250
    const-string v0, "16:9"

    .line 251
    .line 252
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->W:Lorg/videolan/libvlc/MediaPlayer;

    .line 256
    .line 257
    const/4 v0, 0x0

    .line 258
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setScale(F)V

    .line 259
    .line 260
    .line 261
    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->F0:Landroid/widget/Button;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->G0:Landroid/widget/Button;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->H0:Landroid/widget/Button;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->I0:Landroid/widget/Button;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final m()V
    .locals 5

    .line 1
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->G:Lpe/hf/black20/MultiScreenActivityEXO;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f0e011d

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
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 29
    .line 30
    const-string v4, "#4f000000"

    .line 31
    .line 32
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const v4, 0x7f0b0586

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v3, v0, v1, v4}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/widget/TextView;

    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v4, "Your Maximum connections limit is "

    .line 51
    .line 52
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget v4, p0, Lpe/hf/black20/MultiScreenActivityEXO;->B1:I

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    const v2, 0x7f0b014f

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Landroid/widget/Button;

    .line 75
    .line 76
    const-string v2, "OK"

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    new-instance v2, Lb7/X;

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-direct {v2, p0, v0, v3}, Lb7/X;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;Landroid/app/AlertDialog;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->l()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->f0:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->x0:Landroid/widget/ImageButton;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->c0:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->d0:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->e0:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/16 v2, 0x80

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0e003a

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 19
    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0xe

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->G:Lpe/hf/black20/MultiScreenActivityEXO;

    .line 31
    .line 32
    const-string v3, "pe.hf.black20"

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iput-object v3, v0, Lpe/hf/black20/MultiScreenActivityEXO;->H:Landroid/content/SharedPreferences;

    .line 40
    .line 41
    new-instance v3, Lc7/d;

    .line 42
    .line 43
    invoke-direct {v3, v2}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    iput-object v3, v0, Lpe/hf/black20/MultiScreenActivityEXO;->f1:Lc7/d;

    .line 47
    .line 48
    new-instance v3, Lc7/a;

    .line 49
    .line 50
    invoke-direct {v3, v0, v4}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 51
    .line 52
    .line 53
    const-string v5, "Default (XC)"

    .line 54
    .line 55
    const-string v6, "ORT_PROFILE"

    .line 56
    .line 57
    invoke-static {v6, v5, v3}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iput-object v3, v0, Lpe/hf/black20/MultiScreenActivityEXO;->j1:Lh7/i;

    .line 62
    .line 63
    new-instance v3, Lc7/b;

    .line 64
    .line 65
    const/4 v5, 0x1

    .line 66
    invoke-direct {v3, v2, v5}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 67
    .line 68
    .line 69
    iput-object v3, v0, Lpe/hf/black20/MultiScreenActivityEXO;->g1:Lc7/b;

    .line 70
    .line 71
    new-instance v3, Lc7/b;

    .line 72
    .line 73
    invoke-direct {v3, v2, v4}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 74
    .line 75
    .line 76
    iput-object v3, v0, Lpe/hf/black20/MultiScreenActivityEXO;->h1:Lc7/b;

    .line 77
    .line 78
    new-instance v3, Lc7/c;

    .line 79
    .line 80
    invoke-direct {v3, v2, v4}, Lc7/c;-><init>(Landroid/content/Context;I)V

    .line 81
    .line 82
    .line 83
    iput-object v3, v0, Lpe/hf/black20/MultiScreenActivityEXO;->i1:Lc7/c;

    .line 84
    .line 85
    iget-object v6, v0, Lpe/hf/black20/MultiScreenActivityEXO;->j1:Lh7/i;

    .line 86
    .line 87
    iget-object v6, v6, Lh7/i;->b:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    const/4 v3, 0x3

    .line 94
    const/16 v15, 0x9

    .line 95
    .line 96
    const/4 v14, 0x7

    .line 97
    const/4 v13, 0x5

    .line 98
    const/4 v12, 0x4

    .line 99
    const/4 v11, 0x2

    .line 100
    const/4 v10, 0x6

    .line 101
    const/4 v9, 0x0

    .line 102
    const/16 v8, 0x8

    .line 103
    .line 104
    :try_start_0
    const-string v16, "multiscreen"

    .line 105
    .line 106
    const-string v17, "profile=?"

    .line 107
    .line 108
    filled-new-array {v6}, [Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    const/16 v18, 0x0

    .line 113
    .line 114
    const/16 v19, 0x0

    .line 115
    .line 116
    const/16 v20, 0x0

    .line 117
    .line 118
    const/16 v21, 0x0

    .line 119
    .line 120
    const/16 v22, 0x0

    .line 121
    .line 122
    const/16 v1, 0x8

    .line 123
    .line 124
    move-object/from16 v8, v16

    .line 125
    .line 126
    move-object/from16 v9, v19

    .line 127
    .line 128
    const/4 v1, 0x6

    .line 129
    move-object/from16 v10, v17

    .line 130
    .line 131
    const/4 v1, 0x2

    .line 132
    move-object v11, v6

    .line 133
    const/4 v6, 0x4

    .line 134
    move-object/from16 v12, v20

    .line 135
    .line 136
    move-object/from16 v13, v21

    .line 137
    .line 138
    move-object/from16 v14, v22

    .line 139
    .line 140
    move-object/from16 v15, v18

    .line 141
    .line 142
    invoke-virtual/range {v7 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 143
    .line 144
    .line 145
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 146
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-lez v7, :cond_0

    .line 151
    .line 152
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 153
    .line 154
    .line 155
    new-instance v7, Le2/z;

    .line 156
    .line 157
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v11

    .line 169
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v13

    .line 177
    const/4 v14, 0x5

    .line 178
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v15

    .line 182
    const/4 v14, 0x6

    .line 183
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    const/4 v14, 0x7

    .line 188
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    const/16 v14, 0x8

    .line 193
    .line 194
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 198
    const/16 v14, 0x9

    .line 199
    .line 200
    :try_start_2
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 205
    .line 206
    .line 207
    iput-object v8, v7, Le2/z;->a:Ljava/lang/Object;

    .line 208
    .line 209
    iput-object v10, v7, Le2/z;->b:Ljava/lang/Object;

    .line 210
    .line 211
    iput-object v11, v7, Le2/z;->c:Ljava/lang/Object;

    .line 212
    .line 213
    iput-object v12, v7, Le2/z;->d:Ljava/lang/Object;

    .line 214
    .line 215
    iput-object v13, v7, Le2/z;->e:Ljava/lang/Object;

    .line 216
    .line 217
    iput-object v15, v7, Le2/z;->f:Ljava/lang/Object;

    .line 218
    .line 219
    iput-object v6, v7, Le2/z;->g:Ljava/lang/Object;

    .line 220
    .line 221
    iput-object v1, v7, Le2/z;->h:Ljava/lang/Object;

    .line 222
    .line 223
    iput-object v3, v7, Le2/z;->i:Ljava/lang/Object;

    .line 224
    .line 225
    iput-object v4, v7, Le2/z;->j:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    .line 227
    goto :goto_1

    .line 228
    :catchall_0
    :goto_0
    nop

    .line 229
    goto :goto_2

    .line 230
    :catchall_1
    const/16 v14, 0x9

    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_0
    const/16 v14, 0x9

    .line 234
    .line 235
    const/4 v7, 0x0

    .line 236
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-nez v1, :cond_1

    .line 241
    .line 242
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 243
    .line 244
    .line 245
    :cond_1
    move-object v9, v7

    .line 246
    goto :goto_3

    .line 247
    :catchall_2
    const/16 v14, 0x9

    .line 248
    .line 249
    nop

    .line 250
    const/4 v9, 0x0

    .line 251
    :goto_2
    if-eqz v9, :cond_2

    .line 252
    .line 253
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-nez v1, :cond_2

    .line 258
    .line 259
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 260
    .line 261
    .line 262
    :cond_2
    const/4 v9, 0x0

    .line 263
    :goto_3
    iput-object v9, v0, Lpe/hf/black20/MultiScreenActivityEXO;->k1:Le2/z;

    .line 264
    .line 265
    iget-boolean v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->C1:Z

    .line 266
    .line 267
    if-eqz v1, :cond_3

    .line 268
    .line 269
    const-string v1, "ORT_WHICH_PANEL"

    .line 270
    .line 271
    const-string v3, "xtreamcodes"

    .line 272
    .line 273
    invoke-static {v1, v3, v3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-eqz v1, :cond_3

    .line 278
    .line 279
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->H:Landroid/content/SharedPreferences;

    .line 280
    .line 281
    const-string v3, "max_connections"

    .line 282
    .line 283
    const/4 v4, 0x0

    .line 284
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    iput v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->B1:I

    .line 293
    .line 294
    goto :goto_4

    .line 295
    :cond_3
    const/4 v4, 0x0

    .line 296
    :goto_4
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->H:Landroid/content/SharedPreferences;

    .line 297
    .line 298
    const-string v3, "agent"

    .line 299
    .line 300
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-eqz v1, :cond_4

    .line 305
    .line 306
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->H:Landroid/content/SharedPreferences;

    .line 307
    .line 308
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->F1:Ljava/lang/String;

    .line 313
    .line 314
    :cond_4
    sget-object v1, Lpe/hf/black20/MultiScreenActivityEXO;->S1:Ls0/h;

    .line 315
    .line 316
    iget-object v3, v0, Lpe/hf/black20/MultiScreenActivityEXO;->F1:Ljava/lang/String;

    .line 317
    .line 318
    invoke-static {v2, v1, v3}, Le7/a;->f(Landroid/app/Activity;Ls0/h;Ljava/lang/String;)Ls0/h;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    sput-object v1, Lpe/hf/black20/MultiScreenActivityEXO;->S1:Ls0/h;

    .line 323
    .line 324
    new-instance v1, Lm0/j0;

    .line 325
    .line 326
    invoke-direct {v1}, Lm0/j0;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Lm0/j0;->b()Lm0/k0;

    .line 330
    .line 331
    .line 332
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->H:Landroid/content/SharedPreferences;

    .line 333
    .line 334
    const-string v2, "whichplayer_ms"

    .line 335
    .line 336
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-eqz v1, :cond_6

    .line 341
    .line 342
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->H:Landroid/content/SharedPreferences;

    .line 343
    .line 344
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    const-string v2, "EXO"

    .line 349
    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-eqz v1, :cond_5

    .line 355
    .line 356
    iput-boolean v5, v0, Lpe/hf/black20/MultiScreenActivityEXO;->E1:Z

    .line 357
    .line 358
    goto :goto_5

    .line 359
    :cond_5
    const/4 v1, 0x0

    .line 360
    iput-boolean v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->E1:Z

    .line 361
    .line 362
    :cond_6
    :goto_5
    const v1, 0x7f0b03c8

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    check-cast v1, Landroidx/media3/ui/PlayerView;

    .line 370
    .line 371
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->G1:Landroidx/media3/ui/PlayerView;

    .line 372
    .line 373
    const v1, 0x7f0b03c9

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    check-cast v1, Landroidx/media3/ui/PlayerView;

    .line 381
    .line 382
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->H1:Landroidx/media3/ui/PlayerView;

    .line 383
    .line 384
    const v1, 0x7f0b03ca

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    check-cast v1, Landroidx/media3/ui/PlayerView;

    .line 392
    .line 393
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->I1:Landroidx/media3/ui/PlayerView;

    .line 394
    .line 395
    const v1, 0x7f0b03cb

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    check-cast v1, Landroidx/media3/ui/PlayerView;

    .line 403
    .line 404
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->J1:Landroidx/media3/ui/PlayerView;

    .line 405
    .line 406
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->G1:Landroidx/media3/ui/PlayerView;

    .line 407
    .line 408
    const/4 v2, 0x0

    .line 409
    invoke-virtual {v1, v2}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 410
    .line 411
    .line 412
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->H1:Landroidx/media3/ui/PlayerView;

    .line 413
    .line 414
    invoke-virtual {v1, v2}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 415
    .line 416
    .line 417
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->I1:Landroidx/media3/ui/PlayerView;

    .line 418
    .line 419
    invoke-virtual {v1, v2}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 420
    .line 421
    .line 422
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->J1:Landroidx/media3/ui/PlayerView;

    .line 423
    .line 424
    invoke-virtual {v1, v2}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 425
    .line 426
    .line 427
    const v1, 0x7f0b03cd

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    check-cast v1, Landroid/view/SurfaceView;

    .line 435
    .line 436
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->M:Landroid/view/SurfaceView;

    .line 437
    .line 438
    const v1, 0x7f0b03ce

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    check-cast v1, Landroid/view/SurfaceView;

    .line 446
    .line 447
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->N:Landroid/view/SurfaceView;

    .line 448
    .line 449
    const v1, 0x7f0b03cf

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    check-cast v1, Landroid/view/SurfaceView;

    .line 457
    .line 458
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->O:Landroid/view/SurfaceView;

    .line 459
    .line 460
    const v1, 0x7f0b03d0

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    check-cast v1, Landroid/view/SurfaceView;

    .line 468
    .line 469
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->P:Landroid/view/SurfaceView;

    .line 470
    .line 471
    iget-boolean v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->E1:Z

    .line 472
    .line 473
    if-eqz v1, :cond_7

    .line 474
    .line 475
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->G1:Landroidx/media3/ui/PlayerView;

    .line 476
    .line 477
    const/4 v2, 0x0

    .line 478
    invoke-virtual {v1, v2}, Landroidx/media3/ui/PlayerView;->setVisibility(I)V

    .line 479
    .line 480
    .line 481
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->H1:Landroidx/media3/ui/PlayerView;

    .line 482
    .line 483
    invoke-virtual {v1, v2}, Landroidx/media3/ui/PlayerView;->setVisibility(I)V

    .line 484
    .line 485
    .line 486
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->I1:Landroidx/media3/ui/PlayerView;

    .line 487
    .line 488
    invoke-virtual {v1, v2}, Landroidx/media3/ui/PlayerView;->setVisibility(I)V

    .line 489
    .line 490
    .line 491
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->J1:Landroidx/media3/ui/PlayerView;

    .line 492
    .line 493
    invoke-virtual {v1, v2}, Landroidx/media3/ui/PlayerView;->setVisibility(I)V

    .line 494
    .line 495
    .line 496
    goto :goto_6

    .line 497
    :cond_7
    const/4 v2, 0x0

    .line 498
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->M:Landroid/view/SurfaceView;

    .line 499
    .line 500
    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 501
    .line 502
    .line 503
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->N:Landroid/view/SurfaceView;

    .line 504
    .line 505
    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 506
    .line 507
    .line 508
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->O:Landroid/view/SurfaceView;

    .line 509
    .line 510
    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 511
    .line 512
    .line 513
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->P:Landroid/view/SurfaceView;

    .line 514
    .line 515
    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 516
    .line 517
    .line 518
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->H:Landroid/content/SharedPreferences;

    .line 519
    .line 520
    const-string v2, "plyer_vlc_buffer"

    .line 521
    .line 522
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    if-eqz v1, :cond_8

    .line 527
    .line 528
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->H:Landroid/content/SharedPreferences;

    .line 529
    .line 530
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    if-eqz v1, :cond_8

    .line 535
    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    const-string v3, "--live-caching="

    .line 539
    .line 540
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    iget-object v3, v0, Lpe/hf/black20/MultiScreenActivityEXO;->H:Landroid/content/SharedPreferences;

    .line 544
    .line 545
    invoke-static {v3, v2, v4, v1}, Lcom/google/protobuf/U2;->h(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->Q:Ljava/lang/String;

    .line 550
    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    const-string v3, "--file-caching="

    .line 554
    .line 555
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    iget-object v3, v0, Lpe/hf/black20/MultiScreenActivityEXO;->H:Landroid/content/SharedPreferences;

    .line 559
    .line 560
    invoke-static {v3, v2, v4, v1}, Lcom/google/protobuf/U2;->h(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->R:Ljava/lang/String;

    .line 565
    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    .line 567
    .line 568
    const-string v3, ":network-caching="

    .line 569
    .line 570
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    iget-object v3, v0, Lpe/hf/black20/MultiScreenActivityEXO;->H:Landroid/content/SharedPreferences;

    .line 574
    .line 575
    invoke-static {v3, v2, v4, v1}, Lcom/google/protobuf/U2;->h(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->S:Ljava/lang/String;

    .line 580
    .line 581
    :cond_8
    :goto_6
    const v1, 0x7f0b0517

    .line 582
    .line 583
    .line 584
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    check-cast v1, Landroid/widget/TextView;

    .line 589
    .line 590
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->t1:Landroid/widget/TextView;

    .line 591
    .line 592
    const v1, 0x7f0b0518

    .line 593
    .line 594
    .line 595
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    check-cast v1, Landroid/widget/TextView;

    .line 600
    .line 601
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->u1:Landroid/widget/TextView;

    .line 602
    .line 603
    const v1, 0x7f0b0519

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    check-cast v1, Landroid/widget/TextView;

    .line 611
    .line 612
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->v1:Landroid/widget/TextView;

    .line 613
    .line 614
    const v1, 0x7f0b051a

    .line 615
    .line 616
    .line 617
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    check-cast v1, Landroid/widget/TextView;

    .line 622
    .line 623
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->w1:Landroid/widget/TextView;

    .line 624
    .line 625
    const v1, 0x7f0b02e5

    .line 626
    .line 627
    .line 628
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    check-cast v1, Landroid/widget/FrameLayout;

    .line 633
    .line 634
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->X:Landroid/widget/FrameLayout;

    .line 635
    .line 636
    const v1, 0x7f0b02e6

    .line 637
    .line 638
    .line 639
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    check-cast v1, Landroid/widget/FrameLayout;

    .line 644
    .line 645
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->Y:Landroid/widget/FrameLayout;

    .line 646
    .line 647
    const v1, 0x7f0b02e7

    .line 648
    .line 649
    .line 650
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    check-cast v1, Landroid/widget/FrameLayout;

    .line 655
    .line 656
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->Z:Landroid/widget/FrameLayout;

    .line 657
    .line 658
    const v1, 0x7f0b02e8

    .line 659
    .line 660
    .line 661
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    check-cast v1, Landroid/widget/FrameLayout;

    .line 666
    .line 667
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->a0:Landroid/widget/FrameLayout;

    .line 668
    .line 669
    const v1, 0x7f0b02c1

    .line 670
    .line 671
    .line 672
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    check-cast v1, Landroid/widget/FrameLayout;

    .line 677
    .line 678
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 679
    .line 680
    const v1, 0x7f0b02c2

    .line 681
    .line 682
    .line 683
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 684
    .line 685
    .line 686
    move-result-object v1

    .line 687
    check-cast v1, Landroid/widget/FrameLayout;

    .line 688
    .line 689
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->c0:Landroid/widget/FrameLayout;

    .line 690
    .line 691
    const v1, 0x7f0b02c3

    .line 692
    .line 693
    .line 694
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    check-cast v1, Landroid/widget/FrameLayout;

    .line 699
    .line 700
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->d0:Landroid/widget/FrameLayout;

    .line 701
    .line 702
    const v1, 0x7f0b02c4

    .line 703
    .line 704
    .line 705
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 706
    .line 707
    .line 708
    move-result-object v1

    .line 709
    check-cast v1, Landroid/widget/FrameLayout;

    .line 710
    .line 711
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->e0:Landroid/widget/FrameLayout;

    .line 712
    .line 713
    const v1, 0x7f0b02f7

    .line 714
    .line 715
    .line 716
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    check-cast v1, Landroid/widget/FrameLayout;

    .line 721
    .line 722
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->f0:Landroid/widget/FrameLayout;

    .line 723
    .line 724
    const v1, 0x7f0b02cd

    .line 725
    .line 726
    .line 727
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    check-cast v1, Landroid/widget/FrameLayout;

    .line 732
    .line 733
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->g0:Landroid/widget/FrameLayout;

    .line 734
    .line 735
    const/16 v2, 0x8

    .line 736
    .line 737
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 738
    .line 739
    .line 740
    const v1, 0x7f0b00a5

    .line 741
    .line 742
    .line 743
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    check-cast v1, Landroid/widget/ImageButton;

    .line 748
    .line 749
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->h0:Landroid/widget/ImageButton;

    .line 750
    .line 751
    const v1, 0x7f0b00a6

    .line 752
    .line 753
    .line 754
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    check-cast v1, Landroid/widget/ImageButton;

    .line 759
    .line 760
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->i0:Landroid/widget/ImageButton;

    .line 761
    .line 762
    const v1, 0x7f0b00a7

    .line 763
    .line 764
    .line 765
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 766
    .line 767
    .line 768
    move-result-object v1

    .line 769
    check-cast v1, Landroid/widget/ImageButton;

    .line 770
    .line 771
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->j0:Landroid/widget/ImageButton;

    .line 772
    .line 773
    const v1, 0x7f0b00a8

    .line 774
    .line 775
    .line 776
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 777
    .line 778
    .line 779
    move-result-object v1

    .line 780
    check-cast v1, Landroid/widget/ImageButton;

    .line 781
    .line 782
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->k0:Landroid/widget/ImageButton;

    .line 783
    .line 784
    const v1, 0x7f0b013e

    .line 785
    .line 786
    .line 787
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 788
    .line 789
    .line 790
    move-result-object v1

    .line 791
    check-cast v1, Landroid/widget/ImageButton;

    .line 792
    .line 793
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->t0:Landroid/widget/ImageButton;

    .line 794
    .line 795
    const v1, 0x7f0b013f

    .line 796
    .line 797
    .line 798
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 799
    .line 800
    .line 801
    move-result-object v1

    .line 802
    check-cast v1, Landroid/widget/ImageButton;

    .line 803
    .line 804
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->u0:Landroid/widget/ImageButton;

    .line 805
    .line 806
    const v1, 0x7f0b0140

    .line 807
    .line 808
    .line 809
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    check-cast v1, Landroid/widget/ImageButton;

    .line 814
    .line 815
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->v0:Landroid/widget/ImageButton;

    .line 816
    .line 817
    const v1, 0x7f0b0141

    .line 818
    .line 819
    .line 820
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 821
    .line 822
    .line 823
    move-result-object v1

    .line 824
    check-cast v1, Landroid/widget/ImageButton;

    .line 825
    .line 826
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->w0:Landroid/widget/ImageButton;

    .line 827
    .line 828
    const v1, 0x7f0b010b

    .line 829
    .line 830
    .line 831
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 832
    .line 833
    .line 834
    move-result-object v1

    .line 835
    check-cast v1, Landroid/widget/ImageButton;

    .line 836
    .line 837
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->l0:Landroid/widget/ImageButton;

    .line 838
    .line 839
    const v1, 0x7f0b010c

    .line 840
    .line 841
    .line 842
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 843
    .line 844
    .line 845
    move-result-object v1

    .line 846
    check-cast v1, Landroid/widget/ImageButton;

    .line 847
    .line 848
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->m0:Landroid/widget/ImageButton;

    .line 849
    .line 850
    const v1, 0x7f0b010d

    .line 851
    .line 852
    .line 853
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 854
    .line 855
    .line 856
    move-result-object v1

    .line 857
    check-cast v1, Landroid/widget/ImageButton;

    .line 858
    .line 859
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->n0:Landroid/widget/ImageButton;

    .line 860
    .line 861
    const v1, 0x7f0b010e

    .line 862
    .line 863
    .line 864
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 865
    .line 866
    .line 867
    move-result-object v1

    .line 868
    check-cast v1, Landroid/widget/ImageButton;

    .line 869
    .line 870
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->o0:Landroid/widget/ImageButton;

    .line 871
    .line 872
    const v1, 0x7f0b012a

    .line 873
    .line 874
    .line 875
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 876
    .line 877
    .line 878
    move-result-object v1

    .line 879
    check-cast v1, Landroid/widget/ImageButton;

    .line 880
    .line 881
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->p0:Landroid/widget/ImageButton;

    .line 882
    .line 883
    const v1, 0x7f0b012b

    .line 884
    .line 885
    .line 886
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 887
    .line 888
    .line 889
    move-result-object v1

    .line 890
    check-cast v1, Landroid/widget/ImageButton;

    .line 891
    .line 892
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->q0:Landroid/widget/ImageButton;

    .line 893
    .line 894
    const v1, 0x7f0b012c

    .line 895
    .line 896
    .line 897
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    check-cast v1, Landroid/widget/ImageButton;

    .line 902
    .line 903
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->r0:Landroid/widget/ImageButton;

    .line 904
    .line 905
    const v1, 0x7f0b012d

    .line 906
    .line 907
    .line 908
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 909
    .line 910
    .line 911
    move-result-object v1

    .line 912
    check-cast v1, Landroid/widget/ImageButton;

    .line 913
    .line 914
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->s0:Landroid/widget/ImageButton;

    .line 915
    .line 916
    const v1, 0x7f0b009f

    .line 917
    .line 918
    .line 919
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 920
    .line 921
    .line 922
    move-result-object v1

    .line 923
    check-cast v1, Landroid/widget/Button;

    .line 924
    .line 925
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->F0:Landroid/widget/Button;

    .line 926
    .line 927
    const v1, 0x7f0b00a0

    .line 928
    .line 929
    .line 930
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 931
    .line 932
    .line 933
    move-result-object v1

    .line 934
    check-cast v1, Landroid/widget/Button;

    .line 935
    .line 936
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->G0:Landroid/widget/Button;

    .line 937
    .line 938
    const v1, 0x7f0b00a1

    .line 939
    .line 940
    .line 941
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 942
    .line 943
    .line 944
    move-result-object v1

    .line 945
    check-cast v1, Landroid/widget/Button;

    .line 946
    .line 947
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->H0:Landroid/widget/Button;

    .line 948
    .line 949
    const v1, 0x7f0b00a2

    .line 950
    .line 951
    .line 952
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 953
    .line 954
    .line 955
    move-result-object v1

    .line 956
    check-cast v1, Landroid/widget/Button;

    .line 957
    .line 958
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->I0:Landroid/widget/Button;

    .line 959
    .line 960
    const v1, 0x7f0b00c2

    .line 961
    .line 962
    .line 963
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 964
    .line 965
    .line 966
    move-result-object v1

    .line 967
    check-cast v1, Landroid/widget/ImageButton;

    .line 968
    .line 969
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->E0:Landroid/widget/ImageButton;

    .line 970
    .line 971
    const v1, 0x7f0b00bc

    .line 972
    .line 973
    .line 974
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 975
    .line 976
    .line 977
    move-result-object v1

    .line 978
    check-cast v1, Landroid/widget/ImageButton;

    .line 979
    .line 980
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A0:Landroid/widget/ImageButton;

    .line 981
    .line 982
    const v1, 0x7f0b00bd

    .line 983
    .line 984
    .line 985
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 986
    .line 987
    .line 988
    move-result-object v1

    .line 989
    check-cast v1, Landroid/widget/ImageButton;

    .line 990
    .line 991
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->B0:Landroid/widget/ImageButton;

    .line 992
    .line 993
    const v1, 0x7f0b00be

    .line 994
    .line 995
    .line 996
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 997
    .line 998
    .line 999
    move-result-object v1

    .line 1000
    check-cast v1, Landroid/widget/ImageButton;

    .line 1001
    .line 1002
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->C0:Landroid/widget/ImageButton;

    .line 1003
    .line 1004
    const v1, 0x7f0b00bf

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v1

    .line 1011
    check-cast v1, Landroid/widget/ImageButton;

    .line 1012
    .line 1013
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->D0:Landroid/widget/ImageButton;

    .line 1014
    .line 1015
    const v1, 0x7f0b032a

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v1

    .line 1022
    check-cast v1, Landroid/widget/ListView;

    .line 1023
    .line 1024
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->d1:Landroid/widget/ListView;

    .line 1025
    .line 1026
    const v1, 0x7f0b032b

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v1

    .line 1033
    check-cast v1, Landroid/widget/ListView;

    .line 1034
    .line 1035
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->e1:Landroid/widget/ListView;

    .line 1036
    .line 1037
    const v1, 0x7f0b03da

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v1

    .line 1044
    check-cast v1, Landroid/widget/ProgressBar;

    .line 1045
    .line 1046
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->c1:Landroid/widget/ProgressBar;

    .line 1047
    .line 1048
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->f0:Landroid/widget/FrameLayout;

    .line 1049
    .line 1050
    const/16 v2, 0x8

    .line 1051
    .line 1052
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1053
    .line 1054
    .line 1055
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 1056
    .line 1057
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1058
    .line 1059
    .line 1060
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->c0:Landroid/widget/FrameLayout;

    .line 1061
    .line 1062
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1063
    .line 1064
    .line 1065
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->d0:Landroid/widget/FrameLayout;

    .line 1066
    .line 1067
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    .line 1069
    .line 1070
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->e0:Landroid/widget/FrameLayout;

    .line 1071
    .line 1072
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1073
    .line 1074
    .line 1075
    const v1, 0x7f0b00df

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v1

    .line 1082
    check-cast v1, Landroid/widget/ImageButton;

    .line 1083
    .line 1084
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->x0:Landroid/widget/ImageButton;

    .line 1085
    .line 1086
    const v1, 0x7f0b00e0

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v1

    .line 1093
    check-cast v1, Landroid/widget/ImageButton;

    .line 1094
    .line 1095
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->y0:Landroid/widget/ImageButton;

    .line 1096
    .line 1097
    const v1, 0x7f0b00e1

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v1

    .line 1104
    check-cast v1, Landroid/widget/ImageButton;

    .line 1105
    .line 1106
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->z0:Landroid/widget/ImageButton;

    .line 1107
    .line 1108
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->i1:Lc7/c;

    .line 1109
    .line 1110
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->j1:Lh7/i;

    .line 1111
    .line 1112
    iget-object v2, v2, Lh7/i;->b:Ljava/lang/String;

    .line 1113
    .line 1114
    invoke-virtual {v1, v2}, Lc7/c;->O(Ljava/lang/String;)Ljava/lang/String;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v1

    .line 1118
    const-string v2, "yes"

    .line 1119
    .line 1120
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1121
    .line 1122
    .line 1123
    move-result v1

    .line 1124
    if-eqz v1, :cond_d

    .line 1125
    .line 1126
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->k1:Le2/z;

    .line 1127
    .line 1128
    iget-object v2, v1, Le2/z;->c:Ljava/lang/Object;

    .line 1129
    .line 1130
    check-cast v2, Ljava/lang/String;

    .line 1131
    .line 1132
    iput-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->I:Ljava/lang/String;

    .line 1133
    .line 1134
    iget-object v2, v1, Le2/z;->d:Ljava/lang/Object;

    .line 1135
    .line 1136
    check-cast v2, Ljava/lang/String;

    .line 1137
    .line 1138
    iput-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->J:Ljava/lang/String;

    .line 1139
    .line 1140
    iget-object v2, v1, Le2/z;->e:Ljava/lang/Object;

    .line 1141
    .line 1142
    check-cast v2, Ljava/lang/String;

    .line 1143
    .line 1144
    iput-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->K:Ljava/lang/String;

    .line 1145
    .line 1146
    iget-object v2, v1, Le2/z;->f:Ljava/lang/Object;

    .line 1147
    .line 1148
    check-cast v2, Ljava/lang/String;

    .line 1149
    .line 1150
    iput-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->L:Ljava/lang/String;

    .line 1151
    .line 1152
    iget-object v2, v1, Le2/z;->g:Ljava/lang/Object;

    .line 1153
    .line 1154
    check-cast v2, Ljava/lang/String;

    .line 1155
    .line 1156
    iget-object v3, v1, Le2/z;->h:Ljava/lang/Object;

    .line 1157
    .line 1158
    check-cast v3, Ljava/lang/String;

    .line 1159
    .line 1160
    iget-object v4, v1, Le2/z;->i:Ljava/lang/Object;

    .line 1161
    .line 1162
    check-cast v4, Ljava/lang/String;

    .line 1163
    .line 1164
    iget-object v1, v1, Le2/z;->j:Ljava/lang/Object;

    .line 1165
    .line 1166
    check-cast v1, Ljava/lang/String;

    .line 1167
    .line 1168
    const-string v6, "Select Stream"

    .line 1169
    .line 1170
    const-string v7, "null"

    .line 1171
    .line 1172
    if-eqz v2, :cond_9

    .line 1173
    .line 1174
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1175
    .line 1176
    .line 1177
    move-result v8

    .line 1178
    if-nez v8, :cond_9

    .line 1179
    .line 1180
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1181
    .line 1182
    .line 1183
    move-result v8

    .line 1184
    if-nez v8, :cond_9

    .line 1185
    .line 1186
    iget-object v8, v0, Lpe/hf/black20/MultiScreenActivityEXO;->t1:Landroid/widget/TextView;

    .line 1187
    .line 1188
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1189
    .line 1190
    .line 1191
    goto :goto_7

    .line 1192
    :cond_9
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->t1:Landroid/widget/TextView;

    .line 1193
    .line 1194
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    .line 1196
    .line 1197
    :goto_7
    if-eqz v3, :cond_a

    .line 1198
    .line 1199
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1200
    .line 1201
    .line 1202
    move-result v2

    .line 1203
    if-nez v2, :cond_a

    .line 1204
    .line 1205
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1206
    .line 1207
    .line 1208
    move-result v2

    .line 1209
    if-nez v2, :cond_a

    .line 1210
    .line 1211
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->u1:Landroid/widget/TextView;

    .line 1212
    .line 1213
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1214
    .line 1215
    .line 1216
    goto :goto_8

    .line 1217
    :cond_a
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->u1:Landroid/widget/TextView;

    .line 1218
    .line 1219
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    .line 1221
    .line 1222
    :goto_8
    if-eqz v4, :cond_b

    .line 1223
    .line 1224
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 1225
    .line 1226
    .line 1227
    move-result v2

    .line 1228
    if-nez v2, :cond_b

    .line 1229
    .line 1230
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1231
    .line 1232
    .line 1233
    move-result v2

    .line 1234
    if-nez v2, :cond_b

    .line 1235
    .line 1236
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->v1:Landroid/widget/TextView;

    .line 1237
    .line 1238
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    .line 1240
    .line 1241
    goto :goto_9

    .line 1242
    :cond_b
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->v1:Landroid/widget/TextView;

    .line 1243
    .line 1244
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1245
    .line 1246
    .line 1247
    :goto_9
    if-eqz v1, :cond_c

    .line 1248
    .line 1249
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 1250
    .line 1251
    .line 1252
    move-result v2

    .line 1253
    if-nez v2, :cond_c

    .line 1254
    .line 1255
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1256
    .line 1257
    .line 1258
    move-result v2

    .line 1259
    if-nez v2, :cond_c

    .line 1260
    .line 1261
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->w1:Landroid/widget/TextView;

    .line 1262
    .line 1263
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    .line 1265
    .line 1266
    goto :goto_a

    .line 1267
    :cond_c
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->w1:Landroid/widget/TextView;

    .line 1268
    .line 1269
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1270
    .line 1271
    .line 1272
    goto :goto_a

    .line 1273
    :cond_d
    const-string v1, ""

    .line 1274
    .line 1275
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->I:Ljava/lang/String;

    .line 1276
    .line 1277
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->J:Ljava/lang/String;

    .line 1278
    .line 1279
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->K:Ljava/lang/String;

    .line 1280
    .line 1281
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->L:Ljava/lang/String;

    .line 1282
    .line 1283
    :goto_a
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 1284
    .line 1285
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1286
    .line 1287
    .line 1288
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1289
    .line 1290
    const/16 v3, 0x1e

    .line 1291
    .line 1292
    if-lt v2, v3, :cond_e

    .line 1293
    .line 1294
    invoke-static/range {p0 .. p0}, LE1/a;->i(Lpe/hf/black20/MultiScreenActivityEXO;)Landroid/view/Display;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v2

    .line 1298
    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1299
    .line 1300
    .line 1301
    goto :goto_b

    .line 1302
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v2

    .line 1306
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v2

    .line 1310
    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v2

    .line 1317
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v2

    .line 1321
    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1322
    .line 1323
    .line 1324
    :goto_b
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1325
    .line 1326
    iput v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->J0:I

    .line 1327
    .line 1328
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1329
    .line 1330
    iput v3, v0, Lpe/hf/black20/MultiScreenActivityEXO;->K0:I

    .line 1331
    .line 1332
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1333
    .line 1334
    div-int/lit16 v1, v1, 0xa0

    .line 1335
    .line 1336
    iput v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->L0:I

    .line 1337
    .line 1338
    iput v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->x1:I

    .line 1339
    .line 1340
    iput v3, v0, Lpe/hf/black20/MultiScreenActivityEXO;->y1:I

    .line 1341
    .line 1342
    div-int/lit8 v1, v3, 0xc

    .line 1343
    .line 1344
    iput v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 1345
    .line 1346
    const/16 v1, 0xe

    .line 1347
    .line 1348
    div-int/2addr v3, v1

    .line 1349
    iput v3, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 1350
    .line 1351
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->h0:Landroid/widget/ImageButton;

    .line 1352
    .line 1353
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v1

    .line 1357
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1358
    .line 1359
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 1360
    .line 1361
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1362
    .line 1363
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1364
    .line 1365
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->h0:Landroid/widget/ImageButton;

    .line 1366
    .line 1367
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1368
    .line 1369
    .line 1370
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->i0:Landroid/widget/ImageButton;

    .line 1371
    .line 1372
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v1

    .line 1376
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1377
    .line 1378
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 1379
    .line 1380
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1381
    .line 1382
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1383
    .line 1384
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->i0:Landroid/widget/ImageButton;

    .line 1385
    .line 1386
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1387
    .line 1388
    .line 1389
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->j0:Landroid/widget/ImageButton;

    .line 1390
    .line 1391
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v1

    .line 1395
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1396
    .line 1397
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 1398
    .line 1399
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1400
    .line 1401
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1402
    .line 1403
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->j0:Landroid/widget/ImageButton;

    .line 1404
    .line 1405
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1406
    .line 1407
    .line 1408
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->k0:Landroid/widget/ImageButton;

    .line 1409
    .line 1410
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v1

    .line 1414
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1415
    .line 1416
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 1417
    .line 1418
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1419
    .line 1420
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1421
    .line 1422
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->k0:Landroid/widget/ImageButton;

    .line 1423
    .line 1424
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1425
    .line 1426
    .line 1427
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->t0:Landroid/widget/ImageButton;

    .line 1428
    .line 1429
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v1

    .line 1433
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1434
    .line 1435
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 1436
    .line 1437
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1438
    .line 1439
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1440
    .line 1441
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->t0:Landroid/widget/ImageButton;

    .line 1442
    .line 1443
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1444
    .line 1445
    .line 1446
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->u0:Landroid/widget/ImageButton;

    .line 1447
    .line 1448
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v1

    .line 1452
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1453
    .line 1454
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 1455
    .line 1456
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1457
    .line 1458
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1459
    .line 1460
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->v0:Landroid/widget/ImageButton;

    .line 1461
    .line 1462
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1463
    .line 1464
    .line 1465
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->v0:Landroid/widget/ImageButton;

    .line 1466
    .line 1467
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v1

    .line 1471
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1472
    .line 1473
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 1474
    .line 1475
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1476
    .line 1477
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1478
    .line 1479
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->v0:Landroid/widget/ImageButton;

    .line 1480
    .line 1481
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1482
    .line 1483
    .line 1484
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->w0:Landroid/widget/ImageButton;

    .line 1485
    .line 1486
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v1

    .line 1490
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1491
    .line 1492
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 1493
    .line 1494
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1495
    .line 1496
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1497
    .line 1498
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->w0:Landroid/widget/ImageButton;

    .line 1499
    .line 1500
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1501
    .line 1502
    .line 1503
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->l0:Landroid/widget/ImageButton;

    .line 1504
    .line 1505
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v1

    .line 1509
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1510
    .line 1511
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 1512
    .line 1513
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1514
    .line 1515
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1516
    .line 1517
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->l0:Landroid/widget/ImageButton;

    .line 1518
    .line 1519
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1520
    .line 1521
    .line 1522
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->m0:Landroid/widget/ImageButton;

    .line 1523
    .line 1524
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v1

    .line 1528
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1529
    .line 1530
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 1531
    .line 1532
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1533
    .line 1534
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1535
    .line 1536
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->m0:Landroid/widget/ImageButton;

    .line 1537
    .line 1538
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1539
    .line 1540
    .line 1541
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->n0:Landroid/widget/ImageButton;

    .line 1542
    .line 1543
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v1

    .line 1547
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1548
    .line 1549
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 1550
    .line 1551
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1552
    .line 1553
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1554
    .line 1555
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->n0:Landroid/widget/ImageButton;

    .line 1556
    .line 1557
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1558
    .line 1559
    .line 1560
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->o0:Landroid/widget/ImageButton;

    .line 1561
    .line 1562
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v1

    .line 1566
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1567
    .line 1568
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 1569
    .line 1570
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1571
    .line 1572
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1573
    .line 1574
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->o0:Landroid/widget/ImageButton;

    .line 1575
    .line 1576
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1577
    .line 1578
    .line 1579
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->p0:Landroid/widget/ImageButton;

    .line 1580
    .line 1581
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v1

    .line 1585
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1586
    .line 1587
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 1588
    .line 1589
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1590
    .line 1591
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1592
    .line 1593
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->p0:Landroid/widget/ImageButton;

    .line 1594
    .line 1595
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1596
    .line 1597
    .line 1598
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->q0:Landroid/widget/ImageButton;

    .line 1599
    .line 1600
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v1

    .line 1604
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1605
    .line 1606
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 1607
    .line 1608
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1609
    .line 1610
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1611
    .line 1612
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->q0:Landroid/widget/ImageButton;

    .line 1613
    .line 1614
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1615
    .line 1616
    .line 1617
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->r0:Landroid/widget/ImageButton;

    .line 1618
    .line 1619
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v1

    .line 1623
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1624
    .line 1625
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 1626
    .line 1627
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1628
    .line 1629
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1630
    .line 1631
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->r0:Landroid/widget/ImageButton;

    .line 1632
    .line 1633
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1634
    .line 1635
    .line 1636
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->s0:Landroid/widget/ImageButton;

    .line 1637
    .line 1638
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v1

    .line 1642
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1643
    .line 1644
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 1645
    .line 1646
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1647
    .line 1648
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1649
    .line 1650
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->s0:Landroid/widget/ImageButton;

    .line 1651
    .line 1652
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1653
    .line 1654
    .line 1655
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->x0:Landroid/widget/ImageButton;

    .line 1656
    .line 1657
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v1

    .line 1661
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1662
    .line 1663
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->x1:I

    .line 1664
    .line 1665
    const/4 v3, 0x3

    .line 1666
    div-int/2addr v2, v3

    .line 1667
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1668
    .line 1669
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1670
    .line 1671
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->x0:Landroid/widget/ImageButton;

    .line 1672
    .line 1673
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1674
    .line 1675
    .line 1676
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->y0:Landroid/widget/ImageButton;

    .line 1677
    .line 1678
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1679
    .line 1680
    .line 1681
    move-result-object v1

    .line 1682
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1683
    .line 1684
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->x1:I

    .line 1685
    .line 1686
    div-int/2addr v2, v3

    .line 1687
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1688
    .line 1689
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1690
    .line 1691
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->y0:Landroid/widget/ImageButton;

    .line 1692
    .line 1693
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1694
    .line 1695
    .line 1696
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->z0:Landroid/widget/ImageButton;

    .line 1697
    .line 1698
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v1

    .line 1702
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1703
    .line 1704
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->x1:I

    .line 1705
    .line 1706
    div-int/2addr v2, v3

    .line 1707
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1708
    .line 1709
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1710
    .line 1711
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->z0:Landroid/widget/ImageButton;

    .line 1712
    .line 1713
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1714
    .line 1715
    .line 1716
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->h0:Landroid/widget/ImageButton;

    .line 1717
    .line 1718
    new-instance v2, Lb7/P;

    .line 1719
    .line 1720
    const/4 v3, 0x2

    .line 1721
    invoke-direct {v2, v0, v3}, Lb7/P;-><init>(Landroid/app/Activity;I)V

    .line 1722
    .line 1723
    .line 1724
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1725
    .line 1726
    .line 1727
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->i0:Landroid/widget/ImageButton;

    .line 1728
    .line 1729
    const/4 v2, 0x6

    .line 1730
    invoke-static {v0, v2, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1731
    .line 1732
    .line 1733
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->j0:Landroid/widget/ImageButton;

    .line 1734
    .line 1735
    const/16 v2, 0xd

    .line 1736
    .line 1737
    invoke-static {v0, v2, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1738
    .line 1739
    .line 1740
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->k0:Landroid/widget/ImageButton;

    .line 1741
    .line 1742
    const/16 v3, 0x13

    .line 1743
    .line 1744
    invoke-static {v0, v3, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1745
    .line 1746
    .line 1747
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->h0:Landroid/widget/ImageButton;

    .line 1748
    .line 1749
    new-instance v4, Lb7/V;

    .line 1750
    .line 1751
    const/16 v6, 0x12

    .line 1752
    .line 1753
    invoke-direct {v4, v0, v6}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 1754
    .line 1755
    .line 1756
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1757
    .line 1758
    .line 1759
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->i0:Landroid/widget/ImageButton;

    .line 1760
    .line 1761
    new-instance v4, Lb7/V;

    .line 1762
    .line 1763
    const/16 v7, 0x15

    .line 1764
    .line 1765
    invoke-direct {v4, v0, v7}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 1766
    .line 1767
    .line 1768
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1769
    .line 1770
    .line 1771
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->j0:Landroid/widget/ImageButton;

    .line 1772
    .line 1773
    new-instance v4, Lb7/V;

    .line 1774
    .line 1775
    const/16 v8, 0x16

    .line 1776
    .line 1777
    invoke-direct {v4, v0, v8}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 1778
    .line 1779
    .line 1780
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1781
    .line 1782
    .line 1783
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->k0:Landroid/widget/ImageButton;

    .line 1784
    .line 1785
    new-instance v4, Lb7/V;

    .line 1786
    .line 1787
    const/16 v9, 0x17

    .line 1788
    .line 1789
    invoke-direct {v4, v0, v9}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 1790
    .line 1791
    .line 1792
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1793
    .line 1794
    .line 1795
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->t0:Landroid/widget/ImageButton;

    .line 1796
    .line 1797
    const/16 v4, 0x19

    .line 1798
    .line 1799
    invoke-static {v0, v4, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1800
    .line 1801
    .line 1802
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->u0:Landroid/widget/ImageButton;

    .line 1803
    .line 1804
    const/16 v4, 0x1a

    .line 1805
    .line 1806
    invoke-static {v0, v4, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1807
    .line 1808
    .line 1809
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->v0:Landroid/widget/ImageButton;

    .line 1810
    .line 1811
    const/4 v4, 0x0

    .line 1812
    invoke-static {v0, v4, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1813
    .line 1814
    .line 1815
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->w0:Landroid/widget/ImageButton;

    .line 1816
    .line 1817
    invoke-static {v0, v5, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1818
    .line 1819
    .line 1820
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->t0:Landroid/widget/ImageButton;

    .line 1821
    .line 1822
    new-instance v10, Lb7/V;

    .line 1823
    .line 1824
    invoke-direct {v10, v0, v4}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 1825
    .line 1826
    .line 1827
    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1828
    .line 1829
    .line 1830
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->u0:Landroid/widget/ImageButton;

    .line 1831
    .line 1832
    new-instance v4, Lb7/V;

    .line 1833
    .line 1834
    invoke-direct {v4, v0, v5}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 1835
    .line 1836
    .line 1837
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1838
    .line 1839
    .line 1840
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->v0:Landroid/widget/ImageButton;

    .line 1841
    .line 1842
    new-instance v4, Lb7/V;

    .line 1843
    .line 1844
    const/4 v10, 0x2

    .line 1845
    invoke-direct {v4, v0, v10}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 1846
    .line 1847
    .line 1848
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1849
    .line 1850
    .line 1851
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->w0:Landroid/widget/ImageButton;

    .line 1852
    .line 1853
    new-instance v4, Lb7/V;

    .line 1854
    .line 1855
    const/4 v11, 0x3

    .line 1856
    invoke-direct {v4, v0, v11}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 1857
    .line 1858
    .line 1859
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1860
    .line 1861
    .line 1862
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->l0:Landroid/widget/ImageButton;

    .line 1863
    .line 1864
    invoke-static {v0, v10, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1865
    .line 1866
    .line 1867
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->m0:Landroid/widget/ImageButton;

    .line 1868
    .line 1869
    invoke-static {v0, v11, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1870
    .line 1871
    .line 1872
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->n0:Landroid/widget/ImageButton;

    .line 1873
    .line 1874
    const/4 v4, 0x4

    .line 1875
    invoke-static {v0, v4, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1876
    .line 1877
    .line 1878
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->o0:Landroid/widget/ImageButton;

    .line 1879
    .line 1880
    const/4 v4, 0x5

    .line 1881
    invoke-static {v0, v4, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1882
    .line 1883
    .line 1884
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->l0:Landroid/widget/ImageButton;

    .line 1885
    .line 1886
    new-instance v4, Lb7/T;

    .line 1887
    .line 1888
    const/4 v10, 0x0

    .line 1889
    invoke-direct {v4, v0, v10}, Lb7/T;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 1890
    .line 1891
    .line 1892
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1893
    .line 1894
    .line 1895
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->m0:Landroid/widget/ImageButton;

    .line 1896
    .line 1897
    new-instance v4, Lb7/T;

    .line 1898
    .line 1899
    invoke-direct {v4, v0, v5}, Lb7/T;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 1900
    .line 1901
    .line 1902
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1903
    .line 1904
    .line 1905
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->n0:Landroid/widget/ImageButton;

    .line 1906
    .line 1907
    new-instance v4, Lb7/T;

    .line 1908
    .line 1909
    const/4 v10, 0x2

    .line 1910
    invoke-direct {v4, v0, v10}, Lb7/T;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 1911
    .line 1912
    .line 1913
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1914
    .line 1915
    .line 1916
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->o0:Landroid/widget/ImageButton;

    .line 1917
    .line 1918
    new-instance v4, Lb7/T;

    .line 1919
    .line 1920
    const/4 v10, 0x3

    .line 1921
    invoke-direct {v4, v0, v10}, Lb7/T;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 1922
    .line 1923
    .line 1924
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1925
    .line 1926
    .line 1927
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->p0:Landroid/widget/ImageButton;

    .line 1928
    .line 1929
    const/4 v4, 0x7

    .line 1930
    invoke-static {v0, v4, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1931
    .line 1932
    .line 1933
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->q0:Landroid/widget/ImageButton;

    .line 1934
    .line 1935
    const/16 v4, 0x8

    .line 1936
    .line 1937
    invoke-static {v0, v4, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1938
    .line 1939
    .line 1940
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->r0:Landroid/widget/ImageButton;

    .line 1941
    .line 1942
    invoke-static {v0, v14, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1943
    .line 1944
    .line 1945
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->s0:Landroid/widget/ImageButton;

    .line 1946
    .line 1947
    const/16 v4, 0xa

    .line 1948
    .line 1949
    invoke-static {v0, v4, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 1950
    .line 1951
    .line 1952
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->p0:Landroid/widget/ImageButton;

    .line 1953
    .line 1954
    new-instance v10, Lb7/V;

    .line 1955
    .line 1956
    const/4 v11, 0x4

    .line 1957
    invoke-direct {v10, v0, v11}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 1958
    .line 1959
    .line 1960
    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1961
    .line 1962
    .line 1963
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->q0:Landroid/widget/ImageButton;

    .line 1964
    .line 1965
    new-instance v10, Lb7/V;

    .line 1966
    .line 1967
    const/4 v11, 0x5

    .line 1968
    invoke-direct {v10, v0, v11}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 1969
    .line 1970
    .line 1971
    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1972
    .line 1973
    .line 1974
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->r0:Landroid/widget/ImageButton;

    .line 1975
    .line 1976
    new-instance v10, Lb7/V;

    .line 1977
    .line 1978
    const/4 v11, 0x6

    .line 1979
    invoke-direct {v10, v0, v11}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 1980
    .line 1981
    .line 1982
    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1983
    .line 1984
    .line 1985
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->s0:Landroid/widget/ImageButton;

    .line 1986
    .line 1987
    new-instance v10, Lb7/V;

    .line 1988
    .line 1989
    const/4 v11, 0x7

    .line 1990
    invoke-direct {v10, v0, v11}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 1991
    .line 1992
    .line 1993
    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1994
    .line 1995
    .line 1996
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->x0:Landroid/widget/ImageButton;

    .line 1997
    .line 1998
    const/16 v10, 0xb

    .line 1999
    .line 2000
    invoke-static {v0, v10, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 2001
    .line 2002
    .line 2003
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->y0:Landroid/widget/ImageButton;

    .line 2004
    .line 2005
    const/16 v11, 0xc

    .line 2006
    .line 2007
    invoke-static {v0, v11, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 2008
    .line 2009
    .line 2010
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->z0:Landroid/widget/ImageButton;

    .line 2011
    .line 2012
    const/16 v12, 0xe

    .line 2013
    .line 2014
    invoke-static {v0, v12, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 2015
    .line 2016
    .line 2017
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->x0:Landroid/widget/ImageButton;

    .line 2018
    .line 2019
    new-instance v12, Lb7/V;

    .line 2020
    .line 2021
    const/16 v13, 0x8

    .line 2022
    .line 2023
    invoke-direct {v12, v0, v13}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 2024
    .line 2025
    .line 2026
    invoke-virtual {v1, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2027
    .line 2028
    .line 2029
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->y0:Landroid/widget/ImageButton;

    .line 2030
    .line 2031
    new-instance v12, Lb7/V;

    .line 2032
    .line 2033
    invoke-direct {v12, v0, v14}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 2034
    .line 2035
    .line 2036
    invoke-virtual {v1, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2037
    .line 2038
    .line 2039
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->z0:Landroid/widget/ImageButton;

    .line 2040
    .line 2041
    new-instance v12, Lb7/V;

    .line 2042
    .line 2043
    invoke-direct {v12, v0, v4}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 2044
    .line 2045
    .line 2046
    invoke-virtual {v1, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2047
    .line 2048
    .line 2049
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->F0:Landroid/widget/Button;

    .line 2050
    .line 2051
    new-instance v4, Lb7/U;

    .line 2052
    .line 2053
    const/16 v12, 0xf

    .line 2054
    .line 2055
    invoke-direct {v4, v0, v12}, Lb7/U;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 2056
    .line 2057
    .line 2058
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2059
    .line 2060
    .line 2061
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->G0:Landroid/widget/Button;

    .line 2062
    .line 2063
    new-instance v4, Lb7/U;

    .line 2064
    .line 2065
    const/16 v13, 0x10

    .line 2066
    .line 2067
    invoke-direct {v4, v0, v13}, Lb7/U;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 2068
    .line 2069
    .line 2070
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2071
    .line 2072
    .line 2073
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->H0:Landroid/widget/Button;

    .line 2074
    .line 2075
    new-instance v4, Lb7/U;

    .line 2076
    .line 2077
    const/16 v14, 0x11

    .line 2078
    .line 2079
    invoke-direct {v4, v0, v14}, Lb7/U;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 2080
    .line 2081
    .line 2082
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2083
    .line 2084
    .line 2085
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->I0:Landroid/widget/Button;

    .line 2086
    .line 2087
    new-instance v4, Lb7/U;

    .line 2088
    .line 2089
    invoke-direct {v4, v0, v6}, Lb7/U;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 2090
    .line 2091
    .line 2092
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2093
    .line 2094
    .line 2095
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->F0:Landroid/widget/Button;

    .line 2096
    .line 2097
    new-instance v4, Lb7/V;

    .line 2098
    .line 2099
    invoke-direct {v4, v0, v10}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 2100
    .line 2101
    .line 2102
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2103
    .line 2104
    .line 2105
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->G0:Landroid/widget/Button;

    .line 2106
    .line 2107
    new-instance v4, Lb7/V;

    .line 2108
    .line 2109
    invoke-direct {v4, v0, v11}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 2110
    .line 2111
    .line 2112
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2113
    .line 2114
    .line 2115
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->H0:Landroid/widget/Button;

    .line 2116
    .line 2117
    new-instance v4, Lb7/V;

    .line 2118
    .line 2119
    invoke-direct {v4, v0, v2}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 2120
    .line 2121
    .line 2122
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2123
    .line 2124
    .line 2125
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->I0:Landroid/widget/Button;

    .line 2126
    .line 2127
    new-instance v2, Lb7/V;

    .line 2128
    .line 2129
    const/16 v4, 0xe

    .line 2130
    .line 2131
    invoke-direct {v2, v0, v4}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 2132
    .line 2133
    .line 2134
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2135
    .line 2136
    .line 2137
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->E0:Landroid/widget/ImageButton;

    .line 2138
    .line 2139
    const/16 v2, 0x14

    .line 2140
    .line 2141
    invoke-static {v0, v2, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 2142
    .line 2143
    .line 2144
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->E0:Landroid/widget/ImageButton;

    .line 2145
    .line 2146
    new-instance v4, Lb7/V;

    .line 2147
    .line 2148
    invoke-direct {v4, v0, v12}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 2149
    .line 2150
    .line 2151
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2152
    .line 2153
    .line 2154
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A0:Landroid/widget/ImageButton;

    .line 2155
    .line 2156
    invoke-static {v0, v7, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 2157
    .line 2158
    .line 2159
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->B0:Landroid/widget/ImageButton;

    .line 2160
    .line 2161
    invoke-static {v0, v8, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 2162
    .line 2163
    .line 2164
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->C0:Landroid/widget/ImageButton;

    .line 2165
    .line 2166
    invoke-static {v0, v9, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 2167
    .line 2168
    .line 2169
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->D0:Landroid/widget/ImageButton;

    .line 2170
    .line 2171
    const/16 v4, 0x18

    .line 2172
    .line 2173
    invoke-static {v0, v4, v1}, La/r;->v(Lpe/hf/black20/MultiScreenActivityEXO;ILandroid/widget/ImageButton;)V

    .line 2174
    .line 2175
    .line 2176
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->A0:Landroid/widget/ImageButton;

    .line 2177
    .line 2178
    new-instance v4, Lb7/V;

    .line 2179
    .line 2180
    invoke-direct {v4, v0, v13}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 2181
    .line 2182
    .line 2183
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2184
    .line 2185
    .line 2186
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->B0:Landroid/widget/ImageButton;

    .line 2187
    .line 2188
    new-instance v4, Lb7/V;

    .line 2189
    .line 2190
    invoke-direct {v4, v0, v14}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 2191
    .line 2192
    .line 2193
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2194
    .line 2195
    .line 2196
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->C0:Landroid/widget/ImageButton;

    .line 2197
    .line 2198
    new-instance v4, Lb7/V;

    .line 2199
    .line 2200
    invoke-direct {v4, v0, v3}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 2201
    .line 2202
    .line 2203
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2204
    .line 2205
    .line 2206
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->D0:Landroid/widget/ImageButton;

    .line 2207
    .line 2208
    new-instance v3, Lb7/V;

    .line 2209
    .line 2210
    invoke-direct {v3, v0, v2}, Lb7/V;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V

    .line 2211
    .line 2212
    .line 2213
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2214
    .line 2215
    .line 2216
    new-instance v1, Landroid/view/GestureDetector;

    .line 2217
    .line 2218
    new-instance v2, Lb7/l;

    .line 2219
    .line 2220
    invoke-direct {v2, v0, v5}, Lb7/l;-><init>(Landroid/app/Activity;I)V

    .line 2221
    .line 2222
    .line 2223
    invoke-direct {v1, v0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 2224
    .line 2225
    .line 2226
    iput-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->b1:Landroid/view/GestureDetector;

    .line 2227
    .line 2228
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->X:Landroid/widget/FrameLayout;

    .line 2229
    .line 2230
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->O1:Lb7/W;

    .line 2231
    .line 2232
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2233
    .line 2234
    .line 2235
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->Y:Landroid/widget/FrameLayout;

    .line 2236
    .line 2237
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->P1:Lb7/W;

    .line 2238
    .line 2239
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2240
    .line 2241
    .line 2242
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->Z:Landroid/widget/FrameLayout;

    .line 2243
    .line 2244
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->Q1:Lb7/W;

    .line 2245
    .line 2246
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2247
    .line 2248
    .line 2249
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->a0:Landroid/widget/FrameLayout;

    .line 2250
    .line 2251
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->R1:Lb7/W;

    .line 2252
    .line 2253
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2254
    .line 2255
    .line 2256
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->x0:Landroid/widget/ImageButton;

    .line 2257
    .line 2258
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2259
    .line 2260
    .line 2261
    move-result-object v1

    .line 2262
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2263
    .line 2264
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->K0:I

    .line 2265
    .line 2266
    const/4 v3, 0x6

    .line 2267
    div-int/2addr v2, v3

    .line 2268
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2269
    .line 2270
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2271
    .line 2272
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->x0:Landroid/widget/ImageButton;

    .line 2273
    .line 2274
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2275
    .line 2276
    .line 2277
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->y0:Landroid/widget/ImageButton;

    .line 2278
    .line 2279
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2280
    .line 2281
    .line 2282
    move-result-object v1

    .line 2283
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2284
    .line 2285
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->K0:I

    .line 2286
    .line 2287
    div-int/2addr v2, v3

    .line 2288
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2289
    .line 2290
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2291
    .line 2292
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->y0:Landroid/widget/ImageButton;

    .line 2293
    .line 2294
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2295
    .line 2296
    .line 2297
    iget-object v1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->z0:Landroid/widget/ImageButton;

    .line 2298
    .line 2299
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2300
    .line 2301
    .line 2302
    move-result-object v1

    .line 2303
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2304
    .line 2305
    iget v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->K0:I

    .line 2306
    .line 2307
    div-int/2addr v2, v3

    .line 2308
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2309
    .line 2310
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2311
    .line 2312
    iget-object v2, v0, Lpe/hf/black20/MultiScreenActivityEXO;->z0:Landroid/widget/ImageButton;

    .line 2313
    .line 2314
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2315
    .line 2316
    .line 2317
    invoke-virtual/range {p0 .. p0}, Lpe/hf/black20/MultiScreenActivityEXO;->p()V

    .line 2318
    .line 2319
    .line 2320
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const-string v0, "XCIPTV_TAG"

    .line 5
    .line 6
    const-string v1, "onDestroy()..."

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->q()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->r()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->s()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->t()V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Keycode: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "XCIPTV_TAG"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    const/4 v2, 0x0

    .line 22
    const/16 v3, 0x8

    .line 23
    .line 24
    if-eq p1, v0, :cond_4

    .line 25
    .line 26
    packed-switch p1, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :pswitch_0
    const-string p1, "KEYCODE_DPAD_CENTER Pressed ---  "

    .line 35
    .line 36
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->v()V

    .line 40
    .line 41
    .line 42
    return v2

    .line 43
    :pswitch_1
    const-string p1, "RIGHT button pressed"

    .line 44
    .line 45
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->l()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->g0:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-ne p1, v3, :cond_0

    .line 58
    .line 59
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->f0:Landroid/widget/FrameLayout;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-ne p1, v3, :cond_0

    .line 66
    .line 67
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->v()V

    .line 68
    .line 69
    .line 70
    :cond_0
    return v2

    .line 71
    :pswitch_2
    const-string p1, "LEFT button pressed"

    .line 72
    .line 73
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->l()V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->g0:Landroid/widget/FrameLayout;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-ne p1, v3, :cond_1

    .line 86
    .line 87
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->f0:Landroid/widget/FrameLayout;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-ne p1, v3, :cond_1

    .line 94
    .line 95
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->v()V

    .line 96
    .line 97
    .line 98
    :cond_1
    return v2

    .line 99
    :pswitch_3
    const-string p1, "DOWN button pressed"

    .line 100
    .line 101
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->l()V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->g0:Landroid/widget/FrameLayout;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-ne p1, v3, :cond_2

    .line 114
    .line 115
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->f0:Landroid/widget/FrameLayout;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-ne p1, v3, :cond_2

    .line 122
    .line 123
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->v()V

    .line 124
    .line 125
    .line 126
    :cond_2
    return v2

    .line 127
    :pswitch_4
    const-string p1, "UP button pressed"

    .line 128
    .line 129
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->l()V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->g0:Landroid/widget/FrameLayout;

    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-ne p1, v3, :cond_3

    .line 142
    .line 143
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->f0:Landroid/widget/FrameLayout;

    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-ne p1, v3, :cond_3

    .line 150
    .line 151
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->v()V

    .line 152
    .line 153
    .line 154
    :cond_3
    return v2

    .line 155
    :cond_4
    const-string p1, "BACK button pressed"

    .line 156
    .line 157
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->g0:Landroid/widget/FrameLayout;

    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    const/4 p2, 0x1

    .line 167
    if-nez p1, :cond_5

    .line 168
    .line 169
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->g0:Landroid/widget/FrameLayout;

    .line 170
    .line 171
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->o()V

    .line 175
    .line 176
    .line 177
    new-instance p1, Lb7/Y;

    .line 178
    .line 179
    invoke-direct {p1, p0}, Lb7/Y;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;)V

    .line 180
    .line 181
    .line 182
    new-array v0, v2, [Ljava/lang/Void;

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->o()V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :cond_5
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->f0:Landroid/widget/FrameLayout;

    .line 193
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-ne p1, v3, :cond_8

    .line 199
    .line 200
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-eqz p1, :cond_7

    .line 207
    .line 208
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->c0:Landroid/widget/FrameLayout;

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_7

    .line 215
    .line 216
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->d0:Landroid/widget/FrameLayout;

    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_7

    .line 223
    .line 224
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->e0:Landroid/widget/FrameLayout;

    .line 225
    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-nez p1, :cond_6

    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_6
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->o()V

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->G:Lpe/hf/black20/MultiScreenActivityEXO;

    .line 237
    .line 238
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    const v1, 0x7f0e011e

    .line 243
    .line 244
    .line 245
    const/4 v2, 0x0

    .line 246
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 251
    .line 252
    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 264
    .line 265
    const-string v3, "#4f000000"

    .line 266
    .line 267
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 272
    .line 273
    .line 274
    const v3, 0x7f0b0586

    .line 275
    .line 276
    .line 277
    invoke-static {v1, v2, p1, v0, v3}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    check-cast v1, Landroid/widget/TextView;

    .line 282
    .line 283
    const-string v2, "Are you sure you want to exit?"

    .line 284
    .line 285
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    .line 287
    .line 288
    const v1, 0x7f0b014f

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    check-cast v1, Landroid/widget/Button;

    .line 296
    .line 297
    const-string v2, "YES"

    .line 298
    .line 299
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    .line 301
    .line 302
    new-instance v2, Lb7/X;

    .line 303
    .line 304
    invoke-direct {v2, p0, p1, p2}, Lb7/X;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;Landroid/app/AlertDialog;I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    .line 309
    .line 310
    const v1, 0x7f0b014b

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    check-cast v0, Landroid/widget/Button;

    .line 318
    .line 319
    const-string v1, "NO"

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    .line 323
    .line 324
    new-instance v1, Lb7/X;

    .line 325
    .line 326
    const/4 v2, 0x2

    .line 327
    invoke-direct {v1, p0, p1, v2}, Lb7/X;-><init>(Lpe/hf/black20/MultiScreenActivityEXO;Landroid/app/AlertDialog;I)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 334
    .line 335
    .line 336
    goto :goto_1

    .line 337
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->o()V

    .line 338
    .line 339
    .line 340
    goto :goto_1

    .line 341
    :cond_8
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->o()V

    .line 342
    .line 343
    .line 344
    :goto_1
    return p2

    .line 345
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->G:Lpe/hf/black20/MultiScreenActivityEXO;

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

.method public final p()V
    .locals 12

    .line 1
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->H0:Landroid/widget/Button;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->I0:Landroid/widget/Button;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->y1:I

    .line 13
    .line 14
    div-int/lit8 v0, v0, 0x2

    .line 15
    .line 16
    iget v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->L0:I

    .line 17
    .line 18
    mul-int/lit8 v2, v1, 0x2

    .line 19
    .line 20
    sub-int v10, v0, v2

    .line 21
    .line 22
    iget v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->x1:I

    .line 23
    .line 24
    div-int/lit8 v0, v0, 0x2

    .line 25
    .line 26
    mul-int/lit8 v1, v1, 0x2

    .line 27
    .line 28
    sub-int v11, v0, v1

    .line 29
    .line 30
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->X:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 37
    .line 38
    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 39
    .line 40
    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 41
    .line 42
    iget v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->L0:I

    .line 43
    .line 44
    mul-int/lit8 v2, v1, 0x2

    .line 45
    .line 46
    mul-int/lit8 v3, v1, 0x2

    .line 47
    .line 48
    mul-int/lit8 v4, v1, 0x2

    .line 49
    .line 50
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 51
    .line 52
    .line 53
    const/16 v1, 0x33

    .line 54
    .line 55
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 56
    .line 57
    iget-object v2, p0, Lpe/hf/black20/MultiScreenActivityEXO;->X:Landroid/widget/FrameLayout;

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->Y:Landroid/widget/FrameLayout;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 69
    .line 70
    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 71
    .line 72
    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 73
    .line 74
    iget v2, p0, Lpe/hf/black20/MultiScreenActivityEXO;->L0:I

    .line 75
    .line 76
    mul-int/lit8 v3, v2, 0x4

    .line 77
    .line 78
    add-int/2addr v3, v10

    .line 79
    mul-int/lit8 v4, v2, 0x2

    .line 80
    .line 81
    mul-int/lit8 v5, v2, 0x2

    .line 82
    .line 83
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 84
    .line 85
    .line 86
    const/16 v2, 0x35

    .line 87
    .line 88
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 89
    .line 90
    iget-object v3, p0, Lpe/hf/black20/MultiScreenActivityEXO;->Y:Landroid/widget/FrameLayout;

    .line 91
    .line 92
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->Z:Landroid/widget/FrameLayout;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 102
    .line 103
    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 104
    .line 105
    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 106
    .line 107
    iget v3, p0, Lpe/hf/black20/MultiScreenActivityEXO;->L0:I

    .line 108
    .line 109
    mul-int/lit8 v4, v3, 0x2

    .line 110
    .line 111
    mul-int/lit8 v5, v3, 0x4

    .line 112
    .line 113
    add-int/2addr v5, v11

    .line 114
    mul-int/lit8 v6, v3, 0x2

    .line 115
    .line 116
    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 117
    .line 118
    .line 119
    const/16 v3, 0x53

    .line 120
    .line 121
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 122
    .line 123
    iget-object v4, p0, Lpe/hf/black20/MultiScreenActivityEXO;->Z:Landroid/widget/FrameLayout;

    .line 124
    .line 125
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->a0:Landroid/widget/FrameLayout;

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 135
    .line 136
    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 137
    .line 138
    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 139
    .line 140
    iget v4, p0, Lpe/hf/black20/MultiScreenActivityEXO;->L0:I

    .line 141
    .line 142
    mul-int/lit8 v5, v4, 0x4

    .line 143
    .line 144
    add-int/2addr v5, v10

    .line 145
    mul-int/lit8 v6, v4, 0x4

    .line 146
    .line 147
    add-int/2addr v6, v11

    .line 148
    mul-int/lit8 v7, v4, 0x2

    .line 149
    .line 150
    mul-int/lit8 v4, v4, 0x2

    .line 151
    .line 152
    invoke-virtual {v0, v5, v6, v7, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 153
    .line 154
    .line 155
    const/16 v4, 0x55

    .line 156
    .line 157
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 158
    .line 159
    iget-object v5, p0, Lpe/hf/black20/MultiScreenActivityEXO;->a0:Landroid/widget/FrameLayout;

    .line 160
    .line 161
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->F0:Landroid/widget/Button;

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 171
    .line 172
    iget v5, p0, Lpe/hf/black20/MultiScreenActivityEXO;->J0:I

    .line 173
    .line 174
    div-int/lit8 v5, v5, 0x2

    .line 175
    .line 176
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 177
    .line 178
    iget v5, p0, Lpe/hf/black20/MultiScreenActivityEXO;->K0:I

    .line 179
    .line 180
    div-int/lit8 v5, v5, 0x2

    .line 181
    .line 182
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 183
    .line 184
    const/4 v5, 0x0

    .line 185
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 186
    .line 187
    .line 188
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 189
    .line 190
    iget-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->F0:Landroid/widget/Button;

    .line 191
    .line 192
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->G0:Landroid/widget/Button;

    .line 196
    .line 197
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 202
    .line 203
    iget v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->J0:I

    .line 204
    .line 205
    div-int/lit8 v1, v1, 0x2

    .line 206
    .line 207
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 208
    .line 209
    iget v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->K0:I

    .line 210
    .line 211
    div-int/lit8 v6, v1, 0x2

    .line 212
    .line 213
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 214
    .line 215
    div-int/lit8 v1, v1, 0x2

    .line 216
    .line 217
    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 218
    .line 219
    .line 220
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 221
    .line 222
    iget-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->G0:Landroid/widget/Button;

    .line 223
    .line 224
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->H0:Landroid/widget/Button;

    .line 228
    .line 229
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 234
    .line 235
    iget v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->J0:I

    .line 236
    .line 237
    div-int/lit8 v2, v1, 0x2

    .line 238
    .line 239
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 240
    .line 241
    iget v2, p0, Lpe/hf/black20/MultiScreenActivityEXO;->K0:I

    .line 242
    .line 243
    div-int/lit8 v2, v2, 0x2

    .line 244
    .line 245
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 246
    .line 247
    div-int/lit8 v1, v1, 0x2

    .line 248
    .line 249
    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 250
    .line 251
    .line 252
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 253
    .line 254
    iget-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->H0:Landroid/widget/Button;

    .line 255
    .line 256
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    .line 258
    .line 259
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->I0:Landroid/widget/Button;

    .line 260
    .line 261
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 266
    .line 267
    iget v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->J0:I

    .line 268
    .line 269
    div-int/lit8 v2, v1, 0x2

    .line 270
    .line 271
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 272
    .line 273
    iget v2, p0, Lpe/hf/black20/MultiScreenActivityEXO;->K0:I

    .line 274
    .line 275
    div-int/lit8 v3, v2, 0x2

    .line 276
    .line 277
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 278
    .line 279
    div-int/lit8 v2, v2, 0x2

    .line 280
    .line 281
    div-int/lit8 v1, v1, 0x2

    .line 282
    .line 283
    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 284
    .line 285
    .line 286
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 287
    .line 288
    iget-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->I0:Landroid/widget/Button;

    .line 289
    .line 290
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    .line 292
    .line 293
    move-object v3, p0

    .line 294
    move v4, v10

    .line 295
    move v5, v11

    .line 296
    move v6, v10

    .line 297
    move v7, v11

    .line 298
    move v8, v10

    .line 299
    move v9, v11

    .line 300
    invoke-virtual/range {v3 .. v11}, Lpe/hf/black20/MultiScreenActivityEXO;->u(IIIIIIII)V

    .line 301
    .line 302
    .line 303
    return-void
.end method

.method public final q()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->E1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->K1:LB0/O;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-string v0, "XCIPTV_TAG"

    .line 10
    .line 11
    const-string v1, "Release Player"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->K1:LB0/O;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, LB0/O;->S(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->K1:LB0/O;

    .line 23
    .line 24
    invoke-virtual {v0}, LB0/O;->L()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->K1:LB0/O;

    .line 29
    .line 30
    iget-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->G1:Landroidx/media3/ui/PlayerView;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerView;->setPlayer(Lm0/Y;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->T:Lorg/videolan/libvlc/MediaPlayer;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->release()V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->E1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->L1:LB0/O;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-string v0, "XCIPTV_TAG"

    .line 10
    .line 11
    const-string v1, "Release Player"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->L1:LB0/O;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, LB0/O;->S(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->L1:LB0/O;

    .line 23
    .line 24
    invoke-virtual {v0}, LB0/O;->L()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->L1:LB0/O;

    .line 29
    .line 30
    iget-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->H1:Landroidx/media3/ui/PlayerView;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerView;->setPlayer(Lm0/Y;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->U:Lorg/videolan/libvlc/MediaPlayer;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->release()V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->E1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->M1:LB0/O;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-string v0, "XCIPTV_TAG"

    .line 10
    .line 11
    const-string v1, "Release Player"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->M1:LB0/O;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, LB0/O;->S(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->M1:LB0/O;

    .line 23
    .line 24
    invoke-virtual {v0}, LB0/O;->L()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->M1:LB0/O;

    .line 29
    .line 30
    iget-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->I1:Landroidx/media3/ui/PlayerView;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerView;->setPlayer(Lm0/Y;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->V:Lorg/videolan/libvlc/MediaPlayer;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->release()V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->E1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->N1:LB0/O;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-string v0, "XCIPTV_TAG"

    .line 10
    .line 11
    const-string v1, "Release Player"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->N1:LB0/O;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, LB0/O;->S(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->N1:LB0/O;

    .line 23
    .line 24
    invoke-virtual {v0}, LB0/O;->L()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->N1:LB0/O;

    .line 29
    .line 30
    iget-object v1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->J1:Landroidx/media3/ui/PlayerView;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerView;->setPlayer(Lm0/Y;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->W:Lorg/videolan/libvlc/MediaPlayer;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->release()V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method public final u(IIIIIIII)V
    .locals 3

    .line 1
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->T:Lorg/videolan/libvlc/MediaPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "3"

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setWindowSize(II)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->T:Lorg/videolan/libvlc/MediaPlayer;

    .line 16
    .line 17
    invoke-virtual {p1, v2}, Lorg/videolan/libvlc/MediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->T:Lorg/videolan/libvlc/MediaPlayer;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->setScale(F)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->U:Lorg/videolan/libvlc/MediaPlayer;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1, p3, p4}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setWindowSize(II)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->U:Lorg/videolan/libvlc/MediaPlayer;

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Lorg/videolan/libvlc/MediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->U:Lorg/videolan/libvlc/MediaPlayer;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->setScale(F)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->V:Lorg/videolan/libvlc/MediaPlayer;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1, p5, p6}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setWindowSize(II)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->V:Lorg/videolan/libvlc/MediaPlayer;

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Lorg/videolan/libvlc/MediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->V:Lorg/videolan/libvlc/MediaPlayer;

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->setScale(F)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->W:Lorg/videolan/libvlc/MediaPlayer;

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1, p7, p8}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setWindowSize(II)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->W:Lorg/videolan/libvlc/MediaPlayer;

    .line 79
    .line 80
    invoke-virtual {p1, v2}, Lorg/videolan/libvlc/MediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lpe/hf/black20/MultiScreenActivityEXO;->W:Lorg/videolan/libvlc/MediaPlayer;

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->setScale(F)V

    .line 86
    .line 87
    .line 88
    :cond_3
    return-void
.end method

.method public final v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->c0:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->d0:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->e0:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->h0:Landroid/widget/ImageButton;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->c0:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->d0:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->e0:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->g0:Landroid/widget/FrameLayout;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->f0:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lpe/hf/black20/MultiScreenActivityEXO;->l()V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->F0:Landroid/widget/Button;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->G0:Landroid/widget/Button;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->H0:Landroid/widget/Button;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lpe/hf/black20/MultiScreenActivityEXO;->I0:Landroid/widget/Button;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 73
    .line 74
    .line 75
    :goto_1
    return-void
.end method
