.class public Lpe/hf/black20/BackupActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static s0:Landroid/widget/EditText;


# instance fields
.field public final G:Lpe/hf/black20/BackupActivity;

.field public H:Landroid/content/SharedPreferences;

.field public I:Lc7/a;

.field public J:Lc7/b;

.field public K:Lc7/c;

.field public L:Lc7/b;

.field public M:Lc7/d;

.field public N:Lc7/c;

.field public O:Ljava/util/ArrayList;

.field public P:Ljava/util/ArrayList;

.field public Q:Ljava/util/ArrayList;

.field public R:Ljava/util/ArrayList;

.field public S:Ljava/util/ArrayList;

.field public T:Ljava/util/ArrayList;

.field public U:Ljava/util/ArrayList;

.field public V:Ljava/util/ArrayList;

.field public W:Ljava/util/ArrayList;

.field public X:Ljava/util/ArrayList;

.field public Y:Landroid/widget/Button;

.field public Z:Landroid/widget/Button;

.field public a0:Landroid/widget/Button;

.field public b0:Landroid/widget/TextView;

.field public c0:Lb7/e;

.field public d0:Ljava/lang/String;

.field public e0:Ljava/lang/String;

.field public f0:Ljava/lang/String;

.field public g0:Ljava/lang/String;

.field public h0:Ljava/lang/String;

.field public i0:Ljava/lang/String;

.field public j0:Ljava/lang/String;

.field public k0:Ljava/lang/String;

.field public l0:Ljava/lang/String;

.field public m0:Ljava/lang/String;

.field public n0:Ljava/lang/String;

.field public o0:Lorg/json/JSONObject;

.field public p0:Landroid/widget/ProgressBar;

.field public q0:Z

.field public r0:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/BackupActivity;->G:Lpe/hf/black20/BackupActivity;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->O:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->P:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->Q:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->R:Ljava/util/ArrayList;

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->S:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->T:Ljava/util/ArrayList;

    .line 47
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->U:Ljava/util/ArrayList;

    .line 54
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->V:Ljava/util/ArrayList;

    .line 61
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->W:Ljava/util/ArrayList;

    .line 68
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->X:Ljava/util/ArrayList;

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->c0:Lb7/e;

    .line 78
    .line 79
    const-string v0, ""

    .line 80
    .line 81
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->d0:Ljava/lang/String;

    .line 82
    .line 83
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->e0:Ljava/lang/String;

    .line 84
    .line 85
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->f0:Ljava/lang/String;

    .line 86
    .line 87
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->g0:Ljava/lang/String;

    .line 88
    .line 89
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->h0:Ljava/lang/String;

    .line 90
    .line 91
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->i0:Ljava/lang/String;

    .line 92
    .line 93
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->j0:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->k0:Ljava/lang/String;

    .line 96
    .line 97
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->l0:Ljava/lang/String;

    .line 98
    .line 99
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->m0:Ljava/lang/String;

    .line 100
    .line 101
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->n0:Ljava/lang/String;

    .line 102
    .line 103
    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lpe/hf/black20/BackupActivity;->q0:Z

    .line 105
    .line 106
    return-void
.end method

.method public static a(Lpe/hf/black20/BackupActivity;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lpe/hf/black20/BackupActivity;->G:Lpe/hf/black20/BackupActivity;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0e011d

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 32
    .line 33
    const-string v3, "#4f000000"

    .line 34
    .line 35
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 40
    .line 41
    .line 42
    const v3, 0x7f0b0586

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2, p0, v0, v3}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    const p1, 0x7f0b014f

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/widget/Button;

    .line 62
    .line 63
    const v0, 0x7f1301ee

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Lb7/b;

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-direct {v0, p0, v1}, Lb7/b;-><init>(Landroid/app/AlertDialog;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 79
    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lpe/hf/black20/BackupActivity;->G:Lpe/hf/black20/BackupActivity;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f0e0120

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
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 32
    .line 33
    const-string v4, "#99000000"

    .line 34
    .line 35
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 40
    .line 41
    .line 42
    const v4, 0x7f0b01ca

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v3, v0, v1, v4}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/widget/EditText;

    .line 50
    .line 51
    sput-object v2, Lpe/hf/black20/BackupActivity;->s0:Landroid/widget/EditText;

    .line 52
    .line 53
    const v2, 0x7f0b0520

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Landroid/widget/TextView;

    .line 61
    .line 62
    const v3, 0x7f0b0521

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    const p1, 0x7f0b00f2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/widget/Button;

    .line 85
    .line 86
    iput-object p1, p0, Lpe/hf/black20/BackupActivity;->r0:Landroid/widget/Button;

    .line 87
    .line 88
    const p1, 0x7f0b00b0

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
    new-instance p2, Lb7/b;

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-direct {p2, v0, v1}, Lb7/b;-><init>(Landroid/app/AlertDialog;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    iget-object p2, p0, Lpe/hf/black20/BackupActivity;->r0:Landroid/widget/Button;

    .line 107
    .line 108
    new-instance v2, Lb7/c;

    .line 109
    .line 110
    invoke-direct {v2, p0, v0, p1, v1}, Lb7/c;-><init>(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/Object;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0e001c

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lpe/hf/black20/BackupActivity;->G:Lpe/hf/black20/BackupActivity;

    .line 11
    .line 12
    const-string v0, "pe.hf.black20"

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->H:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    const-string v2, "backupurl"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->l0:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v0, Lc7/a;

    .line 31
    .line 32
    invoke-direct {v0, p1, v1}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->I:Lc7/a;

    .line 36
    .line 37
    new-instance v0, Lc7/b;

    .line 38
    .line 39
    invoke-direct {v0, p1, v1}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->J:Lc7/b;

    .line 43
    .line 44
    new-instance v0, Lc7/c;

    .line 45
    .line 46
    invoke-direct {v0, p1, v1}, Lc7/c;-><init>(Landroid/content/Context;I)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->K:Lc7/c;

    .line 50
    .line 51
    new-instance v0, Lc7/b;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-direct {v0, p1, v2}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->L:Lc7/b;

    .line 58
    .line 59
    new-instance v0, Lc7/d;

    .line 60
    .line 61
    invoke-direct {v0, p1}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->M:Lc7/d;

    .line 65
    .line 66
    new-instance v0, Lc7/c;

    .line 67
    .line 68
    invoke-direct {v0, p1, v2}, Lc7/c;-><init>(Landroid/content/Context;I)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lpe/hf/black20/BackupActivity;->N:Lc7/c;

    .line 72
    .line 73
    iget-object v0, p0, Lpe/hf/black20/BackupActivity;->I:Lc7/a;

    .line 74
    .line 75
    const-string v4, "Default (XC)"

    .line 76
    .line 77
    const-string v5, "ORT_PROFILE"

    .line 78
    .line 79
    invoke-static {v5, v4, v0}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const v4, 0x7f0b03d8

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Landroid/widget/ProgressBar;

    .line 91
    .line 92
    iput-object v4, p0, Lpe/hf/black20/BackupActivity;->p0:Landroid/widget/ProgressBar;

    .line 93
    .line 94
    const v4, 0x7f0b0574

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Landroid/widget/TextView;

    .line 102
    .line 103
    iput-object v4, p0, Lpe/hf/black20/BackupActivity;->b0:Landroid/widget/TextView;

    .line 104
    .line 105
    const v4, 0x7f0b00b0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    check-cast v4, Landroid/widget/Button;

    .line 113
    .line 114
    iput-object v4, p0, Lpe/hf/black20/BackupActivity;->Y:Landroid/widget/Button;

    .line 115
    .line 116
    const v4, 0x7f0b00af

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Landroid/widget/Button;

    .line 124
    .line 125
    iput-object v4, p0, Lpe/hf/black20/BackupActivity;->Z:Landroid/widget/Button;

    .line 126
    .line 127
    const v4, 0x7f0b0116

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Landroid/widget/Button;

    .line 135
    .line 136
    iput-object v4, p0, Lpe/hf/black20/BackupActivity;->a0:Landroid/widget/Button;

    .line 137
    .line 138
    const v4, 0x7f0b028a

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    check-cast v4, Landroid/widget/ImageView;

    .line 146
    .line 147
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-eqz p1, :cond_0

    .line 152
    .line 153
    const p1, 0x7f0805f0

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_0
    const p1, 0x7f08053b

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 164
    .line 165
    .line 166
    :goto_0
    iget-object p1, p0, Lpe/hf/black20/BackupActivity;->H:Landroid/content/SharedPreferences;

    .line 167
    .line 168
    const-string v4, "customerid"

    .line 169
    .line 170
    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iget-object v3, v0, Lh7/i;->c:Ljava/lang/String;

    .line 175
    .line 176
    iget-object v0, v0, Lh7/i;->e:Ljava/lang/String;

    .line 177
    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string p1, "-"

    .line 187
    .line 188
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-static {p1}, Lpe/hf/black20/util/Methods;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    iput-object p1, p0, Lpe/hf/black20/BackupActivity;->e0:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    add-int/lit8 v0, v0, -0x6

    .line 215
    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    iput-object p1, p0, Lpe/hf/black20/BackupActivity;->j0:Ljava/lang/String;

    .line 225
    .line 226
    iget-object p1, p0, Lpe/hf/black20/BackupActivity;->Z:Landroid/widget/Button;

    .line 227
    .line 228
    new-instance v0, Lb7/a;

    .line 229
    .line 230
    invoke-direct {v0, p0, v1}, Lb7/a;-><init>(Lpe/hf/black20/BackupActivity;I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Lpe/hf/black20/BackupActivity;->a0:Landroid/widget/Button;

    .line 237
    .line 238
    new-instance v0, Lb7/a;

    .line 239
    .line 240
    invoke-direct {v0, p0, v2}, Lb7/a;-><init>(Lpe/hf/black20/BackupActivity;I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    .line 245
    .line 246
    iget-object p1, p0, Lpe/hf/black20/BackupActivity;->Y:Landroid/widget/Button;

    .line 247
    .line 248
    new-instance v0, Lb7/a;

    .line 249
    .line 250
    const/4 v1, 0x2

    .line 251
    invoke-direct {v0, p0, v1}, Lb7/a;-><init>(Lpe/hf/black20/BackupActivity;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    .line 256
    .line 257
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
    const-string v2, "ORT_isBackupActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lpe/hf/black20/BackupActivity;->I:Lc7/a;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lpe/hf/black20/BackupActivity;->J:Lc7/b;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lpe/hf/black20/BackupActivity;->K:Lc7/c;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lpe/hf/black20/BackupActivity;->L:Lc7/b;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lpe/hf/black20/BackupActivity;->M:Lc7/d;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lpe/hf/black20/BackupActivity;->N:Lc7/c;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 42
    .line 43
    .line 44
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
    const-string v2, "ORT_isBackupActivityVisible"

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
    const-string v2, "ORT_isBackupActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    return-void
.end method
