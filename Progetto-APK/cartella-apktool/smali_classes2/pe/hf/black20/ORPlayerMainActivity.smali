.class public Lpe/hf/black20/ORPlayerMainActivity;
.super Lf/o;
.source "SourceFile"

# interfaces
.implements Lpe/hf/black20/util/d;


# static fields
.field public static D0:I = 0x0

.field public static E0:I = 0x0

.field public static F0:Z = false

.field public static final FINISH_ALERT:Ljava/lang/String; = "finish_alert"

.field public static G0:Z = false

.field public static H0:Z = false

.field public static I0:Z = false

.field public static J0:Z = false

.field public static final LOAD_TV_FRAGMENT:Ljava/lang/String; = "load_tv_fragment"

.field public static final THEME:Ljava/lang/String; = "yes"


# instance fields
.field public A0:Ljava/util/ArrayList;

.field public B0:Ljava/lang/String;

.field public final C0:Lb7/z0;

.field public final e0:Lpe/hf/black20/ORPlayerMainActivity;

.field public f0:Landroid/content/SharedPreferences;

.field public g0:Landroid/content/SharedPreferences$Editor;

.field public h0:Landroid/widget/FrameLayout;

.field public i0:Landroid/widget/ListView;

.field public j0:Landroid/widget/FrameLayout;

.field public k0:[Ljava/lang/String;

.field public l0:[Ljava/lang/Integer;

.field public m0:J

.field public n0:Landroid/view/animation/LayoutAnimationController;

.field public o0:LY/a;

.field public p0:Lc7/a;

.field public q0:Lc7/d;

.field public r0:Lh7/i;

.field public s0:Lb7/z0;

.field public t0:Ljava/text/SimpleDateFormat;

.field public u0:Ljava/lang/String;

.field public v0:Z

.field public w0:Ljava/util/ArrayList;

.field public x0:Ljava/util/ArrayList;

.field public y0:Lorg/json/JSONArray;

.field public z0:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "native-lib"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    sput-boolean v0, Lpe/hf/black20/ORPlayerMainActivity;->F0:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sput-boolean v1, Lpe/hf/black20/ORPlayerMainActivity;->G0:Z

    .line 11
    .line 12
    sput-boolean v1, Lpe/hf/black20/ORPlayerMainActivity;->H0:Z

    .line 13
    .line 14
    sput-boolean v0, Lpe/hf/black20/ORPlayerMainActivity;->I0:Z

    .line 15
    .line 16
    sput-boolean v0, Lpe/hf/black20/ORPlayerMainActivity;->J0:Z

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lf/o;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/ORPlayerMainActivity;->e0:Lpe/hf/black20/ORPlayerMainActivity;

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lpe/hf/black20/ORPlayerMainActivity;->m0:J

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lpe/hf/black20/ORPlayerMainActivity;->v0:Z

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->w0:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->x0:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance v1, Lb7/z0;

    .line 28
    .line 29
    invoke-direct {v1, p0, v0}, Lb7/z0;-><init>(Lpe/hf/black20/ORPlayerMainActivity;I)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->C0:Lb7/z0;

    .line 33
    .line 34
    return-void
.end method

.method public static A(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "pe.hf.black20"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "whichPanel"

    .line 9
    .line 10
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "ORT_WHICH_PANEL"

    .line 26
    .line 27
    invoke-virtual {v1, v0, p0}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public static native gan()Ljava/lang/String;
.end method

.method public static v(Lc7/d;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0e011e

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 14
    .line 15
    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 27
    .line 28
    const-string v4, "#4f000000"

    .line 29
    .line 30
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 35
    .line 36
    .line 37
    const v4, 0x7f0b0586

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3, v1, v0, v4}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/widget/TextView;

    .line 45
    .line 46
    const-string v3, "VOD"

    .line 47
    .line 48
    if-ne p3, v3, :cond_0

    .line 49
    .line 50
    const v3, 0x7f130084

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string v3, "Do you want to remove from continue watching?"

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    const v2, 0x7f0b014f

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroid/widget/Button;

    .line 70
    .line 71
    const v3, 0x7f13023c

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    new-instance v3, Lf/N;

    .line 82
    .line 83
    invoke-direct {v3, v1, p3, p0, p1}, Lf/N;-><init>(Landroid/app/AlertDialog;Ljava/lang/String;Lc7/d;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    const p0, 0x7f0b014b

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    check-cast p0, Landroid/widget/Button;

    .line 97
    .line 98
    const p1, 0x7f1301e7

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    new-instance p1, Lb7/w0;

    .line 109
    .line 110
    const/4 p2, 0x0

    .line 111
    invoke-direct {p1, v1, p2}, Lb7/w0;-><init>(Landroid/app/AlertDialog;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public static w(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const-string v0, "jobscheduler"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/job/JobScheduler;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/app/job/JobInfo;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/16 v1, 0x7b

    .line 34
    .line 35
    if-ne v0, v1, :cond_0

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p0, 0x0

    .line 40
    :goto_0
    return p0
.end method


# virtual methods
.method public final b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "XCIPTV_TAG"

    .line 2
    .line 3
    const-string p2, "CategoriesActivity -- onFailureJson Error"

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string p2, "getIPAddress"

    .line 12
    .line 13
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_0
    const-string p2, "0.0.0.0"

    .line 21
    .line 22
    iget-object p3, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 23
    .line 24
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    iput-object p3, p0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    const-string v0, "external_ip"

    .line 31
    .line 32
    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 41
    .line 42
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    const-string p2, "SplashActivity -- loginCheckXC"

    .line 47
    .line 48
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "getIPAddress"

    .line 5
    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p1, "ip"

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p2, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iput-object p2, p0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    const-string v0, "external_ip"

    .line 33
    .line 34
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    const-string p1, "XCIPTV_TAG"

    .line 49
    .line 50
    const-string p2, "SplashActivity -- loginCheckXC"

    .line 51
    .line 52
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lpe/hf/black20/ORPlayerMainActivity;->s()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, LY/v;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0e00f4

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lf/o;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f0b02d8

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lf/o;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/widget/FrameLayout;

    .line 20
    .line 21
    iput-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->h0:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    new-instance v2, Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 26
    .line 27
    .line 28
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v4, 0x1e

    .line 31
    .line 32
    if-lt v3, v4, :cond_0

    .line 33
    .line 34
    invoke-static/range {p0 .. p0}, Lb7/Z;->i(Lpe/hf/black20/ORPlayerMainActivity;)Landroid/view/Display;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 65
    .line 66
    sput v4, Lpe/hf/black20/ORPlayerMainActivity;->D0:I

    .line 67
    .line 68
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 69
    .line 70
    div-int/lit16 v2, v2, 0xa0

    .line 71
    .line 72
    sput v2, Lpe/hf/black20/ORPlayerMainActivity;->E0:I

    .line 73
    .line 74
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->e0:Lpe/hf/black20/ORPlayerMainActivity;

    .line 75
    .line 76
    const-string v4, "pe.hf.black20"

    .line 77
    .line 78
    const/4 v5, 0x0

    .line 79
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iput-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 84
    .line 85
    const-string v6, "xciptv_profile"

    .line 86
    .line 87
    invoke-interface {v4, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    const-string v7, "ORT_PROFILE"

    .line 92
    .line 93
    const/4 v8, 0x0

    .line 94
    if-eqz v4, :cond_1

    .line 95
    .line 96
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    iget-object v9, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 101
    .line 102
    invoke-interface {v9, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v4, v7, v6}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 107
    .line 108
    .line 109
    :cond_1
    new-instance v4, Lc7/a;

    .line 110
    .line 111
    invoke-direct {v4, v2, v5}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 112
    .line 113
    .line 114
    iput-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->p0:Lc7/a;

    .line 115
    .line 116
    new-instance v4, Lc7/d;

    .line 117
    .line 118
    invoke-direct {v4, v2}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    iput-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->q0:Lc7/d;

    .line 122
    .line 123
    invoke-virtual {v4}, Lc7/d;->L0()V

    .line 124
    .line 125
    .line 126
    iget-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->p0:Lc7/a;

    .line 127
    .line 128
    const-string v6, "Default (XC)"

    .line 129
    .line 130
    invoke-static {v7, v6, v4}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    iput-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->r0:Lh7/i;

    .line 135
    .line 136
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 137
    .line 138
    const-string v9, "MM/dd/yyyy HH:mm:ss"

    .line 139
    .line 140
    invoke-direct {v4, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iput-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->t0:Ljava/text/SimpleDateFormat;

    .line 144
    .line 145
    new-instance v9, Ljava/util/Date;

    .line 146
    .line 147
    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    iput-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->u0:Ljava/lang/String;

    .line 155
    .line 156
    const v4, 0x7f0b02e2

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v4}, Lf/o;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Landroid/widget/FrameLayout;

    .line 164
    .line 165
    iput-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->j0:Landroid/widget/FrameLayout;

    .line 166
    .line 167
    const v4, 0x7f0b0354

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v4}, Lf/o;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    check-cast v4, Landroid/widget/ListView;

    .line 175
    .line 176
    iput-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->i0:Landroid/widget/ListView;

    .line 177
    .line 178
    new-instance v4, Landroid/view/animation/LayoutAnimationController;

    .line 179
    .line 180
    const v9, 0x10a0002

    .line 181
    .line 182
    .line 183
    invoke-static {v2, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    const v10, 0x3e4ccccd    # 0.2f

    .line 188
    .line 189
    .line 190
    invoke-direct {v4, v9, v10}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 191
    .line 192
    .line 193
    iput-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->n0:Landroid/view/animation/LayoutAnimationController;

    .line 194
    .line 195
    iget-object v9, v0, Lpe/hf/black20/ORPlayerMainActivity;->i0:Landroid/widget/ListView;

    .line 196
    .line 197
    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 198
    .line 199
    .line 200
    const v4, 0x7f0b00e8

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v4}, Lf/o;->findViewById(I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    check-cast v4, Landroid/widget/ImageButton;

    .line 208
    .line 209
    new-instance v9, Lf/c;

    .line 210
    .line 211
    const/16 v10, 0x12

    .line 212
    .line 213
    invoke-direct {v9, v0, v10}, Lf/c;-><init>(Ljava/lang/Object;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    .line 219
    invoke-static {}, Lpe/hf/black20/ORPlayerMainActivity;->gan()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-static {v2, v4}, Lpe/hf/black20/util/Methods;->E(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-nez v4, :cond_2

    .line 228
    .line 229
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finishAffinity()V

    .line 230
    .line 231
    .line 232
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .line 236
    .line 237
    iput-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 238
    .line 239
    new-instance v4, Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .line 243
    .line 244
    iput-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 245
    .line 246
    iget-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 247
    .line 248
    const-string v9, "Home"

    .line 249
    .line 250
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    iget-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 254
    .line 255
    const v9, 0x7f08090c

    .line 256
    .line 257
    .line 258
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    sget-object v4, Lpe/hf/black20/util/Config;->b:Ljava/lang/String;

    .line 266
    .line 267
    const-string v9, "yes"

    .line 268
    .line 269
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    const-string v10, "5"

    .line 274
    .line 275
    const-string v11, "4"

    .line 276
    .line 277
    const-string v12, "3"

    .line 278
    .line 279
    const-string v13, "2"

    .line 280
    .line 281
    const-string v14, "1"

    .line 282
    .line 283
    const v16, 0x7f08090f

    .line 284
    .line 285
    .line 286
    const v17, 0x7f080909

    .line 287
    .line 288
    .line 289
    const v18, 0x7f080913

    .line 290
    .line 291
    .line 292
    const v19, 0x7f080914

    .line 293
    .line 294
    .line 295
    const v20, 0x7f080912

    .line 296
    .line 297
    .line 298
    const-string v1, "Accounts"

    .line 299
    .line 300
    const-string v5, "Radio"

    .line 301
    .line 302
    const-string v8, "Catchup"

    .line 303
    .line 304
    const-string v15, "TV Shows"

    .line 305
    .line 306
    move-object/from16 v21, v2

    .line 307
    .line 308
    const-string v2, "Movies"

    .line 309
    .line 310
    move/from16 v22, v3

    .line 311
    .line 312
    const-string v3, "Live TV"

    .line 313
    .line 314
    move-object/from16 v23, v6

    .line 315
    .line 316
    const-string v6, "XCIPTV_WHICH_PORTAL_SELECTED"

    .line 317
    .line 318
    if-eqz v4, :cond_3

    .line 319
    .line 320
    iget-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    iget-object v3, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 326
    .line 327
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 331
    .line 332
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 336
    .line 337
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 341
    .line 342
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 346
    .line 347
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 351
    .line 352
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 360
    .line 361
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 369
    .line 370
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 378
    .line 379
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 387
    .line 388
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 396
    .line 397
    const v2, 0x7f08096b

    .line 398
    .line 399
    .line 400
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-object v3, v6

    .line 408
    move-object/from16 v24, v7

    .line 409
    .line 410
    move-object/from16 v32, v10

    .line 411
    .line 412
    move-object/from16 v33, v11

    .line 413
    .line 414
    move-object/from16 v34, v12

    .line 415
    .line 416
    move-object/from16 v35, v13

    .line 417
    .line 418
    move-object v2, v14

    .line 419
    goto/16 :goto_4

    .line 420
    .line 421
    :cond_3
    iget-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 422
    .line 423
    invoke-interface {v4, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    move-object/from16 v24, v7

    .line 428
    .line 429
    const-string v7, "btn_radio"

    .line 430
    .line 431
    move-object/from16 v25, v10

    .line 432
    .line 433
    const-string v10, "btn_catchup"

    .line 434
    .line 435
    move-object/from16 v26, v11

    .line 436
    .line 437
    const-string v11, "btn_series"

    .line 438
    .line 439
    move-object/from16 v27, v12

    .line 440
    .line 441
    const-string v12, "btn_vod"

    .line 442
    .line 443
    move-object/from16 v28, v13

    .line 444
    .line 445
    const-string v13, "btn_live"

    .line 446
    .line 447
    move-object/from16 v29, v1

    .line 448
    .line 449
    const-string v1, "btn_account"

    .line 450
    .line 451
    move-object/from16 v30, v9

    .line 452
    .line 453
    const-string v9, "Yes"

    .line 454
    .line 455
    if-eqz v4, :cond_25

    .line 456
    .line 457
    iget-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 458
    .line 459
    move-object/from16 v31, v1

    .line 460
    .line 461
    const/4 v1, 0x0

    .line 462
    invoke-interface {v4, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    if-eqz v4, :cond_a

    .line 471
    .line 472
    iget-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 473
    .line 474
    invoke-interface {v4, v13, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v4

    .line 482
    if-eqz v4, :cond_4

    .line 483
    .line 484
    iget-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 485
    .line 486
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    iget-object v3, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 490
    .line 491
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    :cond_4
    iget-object v3, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 499
    .line 500
    invoke-interface {v3, v12, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v3

    .line 508
    if-eqz v3, :cond_5

    .line 509
    .line 510
    iget-object v3, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 511
    .line 512
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 516
    .line 517
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 518
    .line 519
    .line 520
    move-result-object v3

    .line 521
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    :cond_5
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 525
    .line 526
    invoke-interface {v2, v11, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    if-eqz v2, :cond_6

    .line 535
    .line 536
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 537
    .line 538
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 542
    .line 543
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    :cond_6
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 551
    .line 552
    invoke-interface {v2, v10, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v2

    .line 560
    if-eqz v2, :cond_7

    .line 561
    .line 562
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 563
    .line 564
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 568
    .line 569
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    :cond_7
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 577
    .line 578
    invoke-interface {v2, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    move-result v2

    .line 586
    if-eqz v2, :cond_8

    .line 587
    .line 588
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 589
    .line 590
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 594
    .line 595
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 596
    .line 597
    .line 598
    move-result-object v3

    .line 599
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    :cond_8
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 603
    .line 604
    move-object/from16 v4, v31

    .line 605
    .line 606
    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v2

    .line 610
    move-object/from16 v7, v30

    .line 611
    .line 612
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result v2

    .line 616
    if-eqz v2, :cond_9

    .line 617
    .line 618
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 619
    .line 620
    move-object/from16 v10, v29

    .line 621
    .line 622
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 626
    .line 627
    const v3, 0x7f08096b

    .line 628
    .line 629
    .line 630
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 631
    .line 632
    .line 633
    move-result-object v3

    .line 634
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    :cond_9
    move-object v3, v6

    .line 638
    move-object v2, v14

    .line 639
    move-object/from16 v32, v25

    .line 640
    .line 641
    move-object/from16 v33, v26

    .line 642
    .line 643
    move-object/from16 v34, v27

    .line 644
    .line 645
    :goto_1
    move-object/from16 v35, v28

    .line 646
    .line 647
    goto/16 :goto_4

    .line 648
    .line 649
    :cond_a
    move-object/from16 v10, v29

    .line 650
    .line 651
    move-object/from16 v7, v30

    .line 652
    .line 653
    move-object/from16 v4, v31

    .line 654
    .line 655
    iget-object v11, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 656
    .line 657
    invoke-interface {v11, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v11

    .line 661
    move-object/from16 v12, v28

    .line 662
    .line 663
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    move-result v11

    .line 667
    if-eqz v11, :cond_11

    .line 668
    .line 669
    iget-object v11, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 670
    .line 671
    const-string v13, "btn_live2"

    .line 672
    .line 673
    invoke-interface {v11, v13, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v11

    .line 677
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result v1

    .line 681
    if-eqz v1, :cond_b

    .line 682
    .line 683
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 684
    .line 685
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 689
    .line 690
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 691
    .line 692
    .line 693
    move-result-object v3

    .line 694
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    :cond_b
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 698
    .line 699
    const-string v3, "btn_vod2"

    .line 700
    .line 701
    const/4 v11, 0x0

    .line 702
    invoke-interface {v1, v3, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    move-result v1

    .line 710
    if-eqz v1, :cond_c

    .line 711
    .line 712
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 713
    .line 714
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    .line 716
    .line 717
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 718
    .line 719
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 720
    .line 721
    .line 722
    move-result-object v2

    .line 723
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    .line 725
    .line 726
    :cond_c
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 727
    .line 728
    const-string v2, "btn_series2"

    .line 729
    .line 730
    const/4 v3, 0x0

    .line 731
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v1

    .line 735
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 736
    .line 737
    .line 738
    move-result v1

    .line 739
    if-eqz v1, :cond_d

    .line 740
    .line 741
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 742
    .line 743
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    .line 745
    .line 746
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 747
    .line 748
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 749
    .line 750
    .line 751
    move-result-object v2

    .line 752
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    .line 754
    .line 755
    :cond_d
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 756
    .line 757
    const-string v2, "btn_catchup2"

    .line 758
    .line 759
    const/4 v3, 0x0

    .line 760
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v1

    .line 764
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 765
    .line 766
    .line 767
    move-result v1

    .line 768
    if-eqz v1, :cond_e

    .line 769
    .line 770
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 771
    .line 772
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    .line 774
    .line 775
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 776
    .line 777
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 778
    .line 779
    .line 780
    move-result-object v2

    .line 781
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    .line 783
    .line 784
    :cond_e
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 785
    .line 786
    const-string v2, "btn_radio2"

    .line 787
    .line 788
    const/4 v11, 0x0

    .line 789
    invoke-interface {v1, v2, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v1

    .line 793
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 794
    .line 795
    .line 796
    move-result v1

    .line 797
    if-eqz v1, :cond_f

    .line 798
    .line 799
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 800
    .line 801
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    .line 803
    .line 804
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 805
    .line 806
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 807
    .line 808
    .line 809
    move-result-object v2

    .line 810
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    .line 812
    .line 813
    :cond_f
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 814
    .line 815
    invoke-interface {v1, v4, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v1

    .line 819
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 820
    .line 821
    .line 822
    move-result v1

    .line 823
    if-eqz v1, :cond_10

    .line 824
    .line 825
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 826
    .line 827
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    .line 829
    .line 830
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 831
    .line 832
    const v2, 0x7f08096b

    .line 833
    .line 834
    .line 835
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 836
    .line 837
    .line 838
    move-result-object v2

    .line 839
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    .line 841
    .line 842
    :cond_10
    move-object v3, v6

    .line 843
    move-object/from16 v35, v12

    .line 844
    .line 845
    move-object v2, v14

    .line 846
    move-object/from16 v32, v25

    .line 847
    .line 848
    move-object/from16 v33, v26

    .line 849
    .line 850
    move-object/from16 v34, v27

    .line 851
    .line 852
    goto/16 :goto_4

    .line 853
    .line 854
    :cond_11
    move-object v11, v1

    .line 855
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 856
    .line 857
    invoke-interface {v1, v6, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v1

    .line 861
    move-object/from16 v13, v27

    .line 862
    .line 863
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 864
    .line 865
    .line 866
    move-result v1

    .line 867
    if-eqz v1, :cond_18

    .line 868
    .line 869
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 870
    .line 871
    move-object/from16 v28, v12

    .line 872
    .line 873
    const-string v12, "btn_live3"

    .line 874
    .line 875
    invoke-interface {v1, v12, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v1

    .line 879
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 880
    .line 881
    .line 882
    move-result v1

    .line 883
    if-eqz v1, :cond_12

    .line 884
    .line 885
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 886
    .line 887
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    .line 889
    .line 890
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 891
    .line 892
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 893
    .line 894
    .line 895
    move-result-object v3

    .line 896
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    :cond_12
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 900
    .line 901
    const-string v3, "btn_vod3"

    .line 902
    .line 903
    const/4 v11, 0x0

    .line 904
    invoke-interface {v1, v3, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 905
    .line 906
    .line 907
    move-result-object v1

    .line 908
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 909
    .line 910
    .line 911
    move-result v1

    .line 912
    if-eqz v1, :cond_13

    .line 913
    .line 914
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 915
    .line 916
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    .line 918
    .line 919
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 920
    .line 921
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 922
    .line 923
    .line 924
    move-result-object v2

    .line 925
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    .line 927
    .line 928
    :cond_13
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 929
    .line 930
    const-string v2, "btn_series3"

    .line 931
    .line 932
    const/4 v3, 0x0

    .line 933
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v1

    .line 937
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 938
    .line 939
    .line 940
    move-result v1

    .line 941
    if-eqz v1, :cond_14

    .line 942
    .line 943
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 944
    .line 945
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    .line 947
    .line 948
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 949
    .line 950
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 951
    .line 952
    .line 953
    move-result-object v2

    .line 954
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    .line 956
    .line 957
    :cond_14
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 958
    .line 959
    const-string v2, "btn_catchup3"

    .line 960
    .line 961
    const/4 v3, 0x0

    .line 962
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v1

    .line 966
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 967
    .line 968
    .line 969
    move-result v1

    .line 970
    if-eqz v1, :cond_15

    .line 971
    .line 972
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 973
    .line 974
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    .line 976
    .line 977
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 978
    .line 979
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 980
    .line 981
    .line 982
    move-result-object v2

    .line 983
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    .line 985
    .line 986
    :cond_15
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 987
    .line 988
    const-string v2, "btn_radio3"

    .line 989
    .line 990
    const/4 v11, 0x0

    .line 991
    invoke-interface {v1, v2, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v1

    .line 995
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 996
    .line 997
    .line 998
    move-result v1

    .line 999
    if-eqz v1, :cond_16

    .line 1000
    .line 1001
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1002
    .line 1003
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    .line 1005
    .line 1006
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1007
    .line 1008
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v2

    .line 1012
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    .line 1014
    .line 1015
    :cond_16
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1016
    .line 1017
    invoke-interface {v1, v4, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v1

    .line 1021
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1022
    .line 1023
    .line 1024
    move-result v1

    .line 1025
    if-eqz v1, :cond_17

    .line 1026
    .line 1027
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1028
    .line 1029
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1030
    .line 1031
    .line 1032
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1033
    .line 1034
    const v2, 0x7f08096b

    .line 1035
    .line 1036
    .line 1037
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v2

    .line 1041
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    .line 1043
    .line 1044
    :cond_17
    :goto_2
    move-object v3, v6

    .line 1045
    move-object/from16 v34, v13

    .line 1046
    .line 1047
    move-object v2, v14

    .line 1048
    move-object/from16 v32, v25

    .line 1049
    .line 1050
    :goto_3
    move-object/from16 v33, v26

    .line 1051
    .line 1052
    goto/16 :goto_1

    .line 1053
    .line 1054
    :cond_18
    move-object/from16 v28, v12

    .line 1055
    .line 1056
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1057
    .line 1058
    invoke-interface {v1, v6, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v1

    .line 1062
    move-object/from16 v12, v26

    .line 1063
    .line 1064
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1065
    .line 1066
    .line 1067
    move-result v1

    .line 1068
    if-eqz v1, :cond_1e

    .line 1069
    .line 1070
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1071
    .line 1072
    move-object/from16 v26, v12

    .line 1073
    .line 1074
    const-string v12, "btn_live4"

    .line 1075
    .line 1076
    invoke-interface {v1, v12, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v1

    .line 1080
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1081
    .line 1082
    .line 1083
    move-result v1

    .line 1084
    if-eqz v1, :cond_19

    .line 1085
    .line 1086
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1087
    .line 1088
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1089
    .line 1090
    .line 1091
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1092
    .line 1093
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v3

    .line 1097
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    .line 1099
    .line 1100
    :cond_19
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1101
    .line 1102
    const-string v3, "btn_vod4"

    .line 1103
    .line 1104
    const/4 v11, 0x0

    .line 1105
    invoke-interface {v1, v3, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v1

    .line 1109
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1110
    .line 1111
    .line 1112
    move-result v1

    .line 1113
    if-eqz v1, :cond_1a

    .line 1114
    .line 1115
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1116
    .line 1117
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    .line 1119
    .line 1120
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1121
    .line 1122
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v2

    .line 1126
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    .line 1128
    .line 1129
    :cond_1a
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1130
    .line 1131
    const-string v2, "btn_series4"

    .line 1132
    .line 1133
    const/4 v3, 0x0

    .line 1134
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v1

    .line 1138
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1139
    .line 1140
    .line 1141
    move-result v1

    .line 1142
    if-eqz v1, :cond_1b

    .line 1143
    .line 1144
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1145
    .line 1146
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    .line 1148
    .line 1149
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1150
    .line 1151
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v2

    .line 1155
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1156
    .line 1157
    .line 1158
    :cond_1b
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1159
    .line 1160
    const-string v2, "btn_catchup4"

    .line 1161
    .line 1162
    const/4 v3, 0x0

    .line 1163
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v1

    .line 1167
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1168
    .line 1169
    .line 1170
    move-result v1

    .line 1171
    if-eqz v1, :cond_1c

    .line 1172
    .line 1173
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1174
    .line 1175
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1176
    .line 1177
    .line 1178
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1179
    .line 1180
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v2

    .line 1184
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    .line 1186
    .line 1187
    :cond_1c
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1188
    .line 1189
    const-string v2, "btn_radio4"

    .line 1190
    .line 1191
    const/4 v11, 0x0

    .line 1192
    invoke-interface {v1, v2, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v1

    .line 1196
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1197
    .line 1198
    .line 1199
    move-result v1

    .line 1200
    if-eqz v1, :cond_1d

    .line 1201
    .line 1202
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1203
    .line 1204
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    .line 1206
    .line 1207
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1208
    .line 1209
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v2

    .line 1213
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    .line 1215
    .line 1216
    :cond_1d
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1217
    .line 1218
    invoke-interface {v1, v4, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v1

    .line 1222
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1223
    .line 1224
    .line 1225
    move-result v1

    .line 1226
    if-eqz v1, :cond_17

    .line 1227
    .line 1228
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1229
    .line 1230
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    .line 1232
    .line 1233
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1234
    .line 1235
    const v2, 0x7f08096b

    .line 1236
    .line 1237
    .line 1238
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v2

    .line 1242
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    .line 1244
    .line 1245
    goto/16 :goto_2

    .line 1246
    .line 1247
    :cond_1e
    move-object/from16 v26, v12

    .line 1248
    .line 1249
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1250
    .line 1251
    invoke-interface {v1, v6, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v1

    .line 1255
    move-object/from16 v12, v25

    .line 1256
    .line 1257
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1258
    .line 1259
    .line 1260
    move-result v1

    .line 1261
    if-eqz v1, :cond_24

    .line 1262
    .line 1263
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1264
    .line 1265
    move-object/from16 v25, v12

    .line 1266
    .line 1267
    const-string v12, "btn_live5"

    .line 1268
    .line 1269
    invoke-interface {v1, v12, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v1

    .line 1273
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1274
    .line 1275
    .line 1276
    move-result v1

    .line 1277
    if-eqz v1, :cond_1f

    .line 1278
    .line 1279
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1280
    .line 1281
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    .line 1283
    .line 1284
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1285
    .line 1286
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v3

    .line 1290
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    .line 1292
    .line 1293
    :cond_1f
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1294
    .line 1295
    const-string v3, "btn_vod5"

    .line 1296
    .line 1297
    const/4 v11, 0x0

    .line 1298
    invoke-interface {v1, v3, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v1

    .line 1302
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1303
    .line 1304
    .line 1305
    move-result v1

    .line 1306
    if-eqz v1, :cond_20

    .line 1307
    .line 1308
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1309
    .line 1310
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    .line 1312
    .line 1313
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1314
    .line 1315
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v2

    .line 1319
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    .line 1321
    .line 1322
    :cond_20
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1323
    .line 1324
    const-string v2, "btn_series5"

    .line 1325
    .line 1326
    const/4 v3, 0x0

    .line 1327
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v1

    .line 1331
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1332
    .line 1333
    .line 1334
    move-result v1

    .line 1335
    if-eqz v1, :cond_21

    .line 1336
    .line 1337
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1338
    .line 1339
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    .line 1341
    .line 1342
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1343
    .line 1344
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v2

    .line 1348
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    .line 1350
    .line 1351
    :cond_21
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1352
    .line 1353
    const-string v2, "btn_catchup5"

    .line 1354
    .line 1355
    const/4 v3, 0x0

    .line 1356
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v1

    .line 1360
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1361
    .line 1362
    .line 1363
    move-result v1

    .line 1364
    if-eqz v1, :cond_22

    .line 1365
    .line 1366
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1367
    .line 1368
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1369
    .line 1370
    .line 1371
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1372
    .line 1373
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v2

    .line 1377
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1378
    .line 1379
    .line 1380
    :cond_22
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1381
    .line 1382
    const-string v2, "btn_radio5"

    .line 1383
    .line 1384
    const/4 v3, 0x0

    .line 1385
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v1

    .line 1389
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1390
    .line 1391
    .line 1392
    move-result v1

    .line 1393
    if-eqz v1, :cond_23

    .line 1394
    .line 1395
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1396
    .line 1397
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1398
    .line 1399
    .line 1400
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1401
    .line 1402
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v2

    .line 1406
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1407
    .line 1408
    .line 1409
    :cond_23
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1410
    .line 1411
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v1

    .line 1415
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1416
    .line 1417
    .line 1418
    move-result v1

    .line 1419
    if-eqz v1, :cond_17

    .line 1420
    .line 1421
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1422
    .line 1423
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    .line 1425
    .line 1426
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1427
    .line 1428
    const v2, 0x7f08096b

    .line 1429
    .line 1430
    .line 1431
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v2

    .line 1435
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1436
    .line 1437
    .line 1438
    goto/16 :goto_2

    .line 1439
    .line 1440
    :cond_24
    move-object v3, v6

    .line 1441
    move-object/from16 v32, v12

    .line 1442
    .line 1443
    move-object/from16 v34, v13

    .line 1444
    .line 1445
    move-object v2, v14

    .line 1446
    goto/16 :goto_3

    .line 1447
    .line 1448
    :cond_25
    move-object v4, v1

    .line 1449
    move-object/from16 v32, v25

    .line 1450
    .line 1451
    move-object/from16 v33, v26

    .line 1452
    .line 1453
    move-object/from16 v34, v27

    .line 1454
    .line 1455
    move-object/from16 v35, v28

    .line 1456
    .line 1457
    move-object/from16 v1, v30

    .line 1458
    .line 1459
    move-object/from16 v25, v6

    .line 1460
    .line 1461
    move-object/from16 v26, v14

    .line 1462
    .line 1463
    move-object/from16 v6, v29

    .line 1464
    .line 1465
    iget-object v14, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1466
    .line 1467
    const/4 v6, 0x0

    .line 1468
    invoke-interface {v14, v13, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v13

    .line 1472
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1473
    .line 1474
    .line 1475
    move-result v13

    .line 1476
    if-eqz v13, :cond_26

    .line 1477
    .line 1478
    iget-object v13, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1479
    .line 1480
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1481
    .line 1482
    .line 1483
    iget-object v3, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1484
    .line 1485
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v13

    .line 1489
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1490
    .line 1491
    .line 1492
    :cond_26
    iget-object v3, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1493
    .line 1494
    invoke-interface {v3, v12, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v3

    .line 1498
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1499
    .line 1500
    .line 1501
    move-result v3

    .line 1502
    if-eqz v3, :cond_27

    .line 1503
    .line 1504
    iget-object v3, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1505
    .line 1506
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1507
    .line 1508
    .line 1509
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1510
    .line 1511
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v3

    .line 1515
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1516
    .line 1517
    .line 1518
    :cond_27
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1519
    .line 1520
    invoke-interface {v2, v11, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v2

    .line 1524
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1525
    .line 1526
    .line 1527
    move-result v2

    .line 1528
    if-eqz v2, :cond_28

    .line 1529
    .line 1530
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1531
    .line 1532
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1533
    .line 1534
    .line 1535
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1536
    .line 1537
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v3

    .line 1541
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1542
    .line 1543
    .line 1544
    :cond_28
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1545
    .line 1546
    invoke-interface {v2, v10, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v2

    .line 1550
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1551
    .line 1552
    .line 1553
    move-result v2

    .line 1554
    if-eqz v2, :cond_29

    .line 1555
    .line 1556
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1557
    .line 1558
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1559
    .line 1560
    .line 1561
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1562
    .line 1563
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v3

    .line 1567
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1568
    .line 1569
    .line 1570
    :cond_29
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1571
    .line 1572
    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v2

    .line 1576
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1577
    .line 1578
    .line 1579
    move-result v2

    .line 1580
    if-eqz v2, :cond_2a

    .line 1581
    .line 1582
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1583
    .line 1584
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1585
    .line 1586
    .line 1587
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1588
    .line 1589
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v3

    .line 1593
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1594
    .line 1595
    .line 1596
    :cond_2a
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1597
    .line 1598
    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1599
    .line 1600
    .line 1601
    move-result-object v2

    .line 1602
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1603
    .line 1604
    .line 1605
    move-result v1

    .line 1606
    if-eqz v1, :cond_2b

    .line 1607
    .line 1608
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1609
    .line 1610
    move-object/from16 v2, v29

    .line 1611
    .line 1612
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1613
    .line 1614
    .line 1615
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1616
    .line 1617
    const v2, 0x7f08096b

    .line 1618
    .line 1619
    .line 1620
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v2

    .line 1624
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1625
    .line 1626
    .line 1627
    :cond_2b
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1628
    .line 1629
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v1

    .line 1633
    iput-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 1634
    .line 1635
    move-object/from16 v3, v25

    .line 1636
    .line 1637
    move-object/from16 v2, v26

    .line 1638
    .line 1639
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1640
    .line 1641
    .line 1642
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 1643
    .line 1644
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1645
    .line 1646
    .line 1647
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 1648
    .line 1649
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1650
    .line 1651
    .line 1652
    :goto_4
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1653
    .line 1654
    const-string v4, "Settings"

    .line 1655
    .line 1656
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1657
    .line 1658
    .line 1659
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 1660
    .line 1661
    const-string v4, "Exit"

    .line 1662
    .line 1663
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1664
    .line 1665
    .line 1666
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1667
    .line 1668
    const v4, 0x7f080910

    .line 1669
    .line 1670
    .line 1671
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1672
    .line 1673
    .line 1674
    move-result-object v4

    .line 1675
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1676
    .line 1677
    .line 1678
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 1679
    .line 1680
    const v4, 0x7f08090b

    .line 1681
    .line 1682
    .line 1683
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v4

    .line 1687
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1688
    .line 1689
    .line 1690
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1691
    .line 1692
    const-string v4, "epg_mode"

    .line 1693
    .line 1694
    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 1695
    .line 1696
    .line 1697
    move-result v1

    .line 1698
    if-eqz v1, :cond_2c

    .line 1699
    .line 1700
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v1

    .line 1704
    iget-object v5, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1705
    .line 1706
    const/4 v6, 0x0

    .line 1707
    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v4

    .line 1711
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v4

    .line 1715
    const-string v5, "ORT_LIVE_TV_EPG_MODE"

    .line 1716
    .line 1717
    invoke-virtual {v1, v5, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 1718
    .line 1719
    .line 1720
    :cond_2c
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1721
    .line 1722
    const-string v4, "whichPanel"

    .line 1723
    .line 1724
    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 1725
    .line 1726
    .line 1727
    move-result v1

    .line 1728
    const-string v5, "ORT_WHICH_PANEL"

    .line 1729
    .line 1730
    if-eqz v1, :cond_2d

    .line 1731
    .line 1732
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1733
    .line 1734
    .line 1735
    move-result-object v1

    .line 1736
    iget-object v6, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1737
    .line 1738
    const/4 v7, 0x0

    .line 1739
    invoke-interface {v6, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1740
    .line 1741
    .line 1742
    move-result-object v4

    .line 1743
    invoke-virtual {v1, v5, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 1744
    .line 1745
    .line 1746
    :cond_2d
    const-string v1, "xtreamcodes"

    .line 1747
    .line 1748
    const-string v4, "m3u"

    .line 1749
    .line 1750
    invoke-static {v5, v1, v4}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1751
    .line 1752
    .line 1753
    move-result v1

    .line 1754
    if-nez v1, :cond_34

    .line 1755
    .line 1756
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->p0:Lc7/a;

    .line 1757
    .line 1758
    move-object/from16 v5, v23

    .line 1759
    .line 1760
    move-object/from16 v4, v24

    .line 1761
    .line 1762
    invoke-static {v4, v5, v1}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v1

    .line 1766
    iput-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->r0:Lh7/i;

    .line 1767
    .line 1768
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1769
    .line 1770
    .line 1771
    move-result-object v1

    .line 1772
    iget-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->r0:Lh7/i;

    .line 1773
    .line 1774
    iget-object v4, v4, Lh7/i;->a:Ljava/lang/String;

    .line 1775
    .line 1776
    const-string v5, "ORT_PROFILE_ID"

    .line 1777
    .line 1778
    invoke-virtual {v1, v5, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 1779
    .line 1780
    .line 1781
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1782
    .line 1783
    .line 1784
    move-result-object v1

    .line 1785
    iget-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->r0:Lh7/i;

    .line 1786
    .line 1787
    iget-object v4, v4, Lh7/i;->e:Ljava/lang/String;

    .line 1788
    .line 1789
    const-string v5, "ORT_PROFILE_SERVER"

    .line 1790
    .line 1791
    invoke-virtual {v1, v5, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 1792
    .line 1793
    .line 1794
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1795
    .line 1796
    .line 1797
    move-result-object v1

    .line 1798
    iget-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->r0:Lh7/i;

    .line 1799
    .line 1800
    iget-object v4, v4, Lh7/i;->c:Ljava/lang/String;

    .line 1801
    .line 1802
    const-string v5, "ORT_PROFILE_USERNAME"

    .line 1803
    .line 1804
    invoke-virtual {v1, v5, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 1805
    .line 1806
    .line 1807
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1808
    .line 1809
    .line 1810
    move-result-object v1

    .line 1811
    iget-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->r0:Lh7/i;

    .line 1812
    .line 1813
    iget-object v4, v4, Lh7/i;->d:Ljava/lang/String;

    .line 1814
    .line 1815
    const-string v5, "ORT_PROFILE_PASSWORD"

    .line 1816
    .line 1817
    invoke-virtual {v1, v5, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 1818
    .line 1819
    .line 1820
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->r0:Lh7/i;

    .line 1821
    .line 1822
    iget-object v1, v1, Lh7/i;->e:Ljava/lang/String;

    .line 1823
    .line 1824
    invoke-static {v1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1825
    .line 1826
    .line 1827
    move-result-object v1

    .line 1828
    iget-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1829
    .line 1830
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1831
    .line 1832
    .line 1833
    move-result-object v4

    .line 1834
    iput-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 1835
    .line 1836
    iget-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1837
    .line 1838
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1839
    .line 1840
    .line 1841
    move-result-object v4

    .line 1842
    iput-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 1843
    .line 1844
    iget-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1845
    .line 1846
    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 1847
    .line 1848
    .line 1849
    move-result v4

    .line 1850
    if-eqz v4, :cond_32

    .line 1851
    .line 1852
    iget-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1853
    .line 1854
    const-string v5, "portal"

    .line 1855
    .line 1856
    const/4 v6, 0x0

    .line 1857
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v4

    .line 1861
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1862
    .line 1863
    .line 1864
    move-result v4

    .line 1865
    if-eqz v4, :cond_2e

    .line 1866
    .line 1867
    iget-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->r0:Lh7/i;

    .line 1868
    .line 1869
    iget-object v4, v4, Lh7/i;->b:Ljava/lang/String;

    .line 1870
    .line 1871
    const-string v5, "PANEL 1"

    .line 1872
    .line 1873
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1874
    .line 1875
    .line 1876
    move-result v4

    .line 1877
    if-eqz v4, :cond_2e

    .line 1878
    .line 1879
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 1880
    .line 1881
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1882
    .line 1883
    .line 1884
    goto/16 :goto_5

    .line 1885
    .line 1886
    :cond_2e
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1887
    .line 1888
    const-string v4, "portal2"

    .line 1889
    .line 1890
    const/4 v5, 0x0

    .line 1891
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1892
    .line 1893
    .line 1894
    move-result-object v2

    .line 1895
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1896
    .line 1897
    .line 1898
    move-result v2

    .line 1899
    if-eqz v2, :cond_2f

    .line 1900
    .line 1901
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->r0:Lh7/i;

    .line 1902
    .line 1903
    iget-object v2, v2, Lh7/i;->b:Ljava/lang/String;

    .line 1904
    .line 1905
    const-string v4, "PANEL 2"

    .line 1906
    .line 1907
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1908
    .line 1909
    .line 1910
    move-result v2

    .line 1911
    if-eqz v2, :cond_2f

    .line 1912
    .line 1913
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 1914
    .line 1915
    move-object/from16 v2, v35

    .line 1916
    .line 1917
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1918
    .line 1919
    .line 1920
    goto :goto_5

    .line 1921
    :cond_2f
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1922
    .line 1923
    const-string v4, "portal3"

    .line 1924
    .line 1925
    const/4 v5, 0x0

    .line 1926
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1927
    .line 1928
    .line 1929
    move-result-object v2

    .line 1930
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1931
    .line 1932
    .line 1933
    move-result v2

    .line 1934
    if-eqz v2, :cond_30

    .line 1935
    .line 1936
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->r0:Lh7/i;

    .line 1937
    .line 1938
    iget-object v2, v2, Lh7/i;->b:Ljava/lang/String;

    .line 1939
    .line 1940
    const-string v5, "PANEL 3"

    .line 1941
    .line 1942
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1943
    .line 1944
    .line 1945
    move-result v2

    .line 1946
    if-eqz v2, :cond_30

    .line 1947
    .line 1948
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 1949
    .line 1950
    move-object/from16 v2, v34

    .line 1951
    .line 1952
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1953
    .line 1954
    .line 1955
    goto :goto_5

    .line 1956
    :cond_30
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1957
    .line 1958
    const/4 v5, 0x0

    .line 1959
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1960
    .line 1961
    .line 1962
    move-result-object v2

    .line 1963
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1964
    .line 1965
    .line 1966
    move-result v2

    .line 1967
    if-eqz v2, :cond_31

    .line 1968
    .line 1969
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->r0:Lh7/i;

    .line 1970
    .line 1971
    iget-object v2, v2, Lh7/i;->b:Ljava/lang/String;

    .line 1972
    .line 1973
    const-string v5, "PANEL 4"

    .line 1974
    .line 1975
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1976
    .line 1977
    .line 1978
    move-result v2

    .line 1979
    if-eqz v2, :cond_31

    .line 1980
    .line 1981
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 1982
    .line 1983
    move-object/from16 v2, v33

    .line 1984
    .line 1985
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1986
    .line 1987
    .line 1988
    goto :goto_5

    .line 1989
    :cond_31
    iget-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 1990
    .line 1991
    const/4 v5, 0x0

    .line 1992
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1993
    .line 1994
    .line 1995
    move-result-object v2

    .line 1996
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1997
    .line 1998
    .line 1999
    move-result v1

    .line 2000
    if-eqz v1, :cond_33

    .line 2001
    .line 2002
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->r0:Lh7/i;

    .line 2003
    .line 2004
    iget-object v1, v1, Lh7/i;->b:Ljava/lang/String;

    .line 2005
    .line 2006
    const-string v2, "PANEL 5"

    .line 2007
    .line 2008
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2009
    .line 2010
    .line 2011
    move-result v1

    .line 2012
    if-eqz v1, :cond_33

    .line 2013
    .line 2014
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 2015
    .line 2016
    move-object/from16 v2, v32

    .line 2017
    .line 2018
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2019
    .line 2020
    .line 2021
    goto :goto_5

    .line 2022
    :cond_32
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 2023
    .line 2024
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2025
    .line 2026
    .line 2027
    :cond_33
    :goto_5
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 2028
    .line 2029
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2030
    .line 2031
    .line 2032
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 2033
    .line 2034
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2035
    .line 2036
    .line 2037
    :cond_34
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 2038
    .line 2039
    const-string v2, "pc_lock"

    .line 2040
    .line 2041
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 2042
    .line 2043
    .line 2044
    move-result v1

    .line 2045
    const-string v3, "unlocked"

    .line 2046
    .line 2047
    const-string v4, "no"

    .line 2048
    .line 2049
    const-string v5, "ORT_PARENTAL_CONTROL_STATUS"

    .line 2050
    .line 2051
    if-nez v1, :cond_35

    .line 2052
    .line 2053
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 2054
    .line 2055
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 2056
    .line 2057
    .line 2058
    move-result-object v1

    .line 2059
    iput-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 2060
    .line 2061
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2062
    .line 2063
    .line 2064
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 2065
    .line 2066
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2067
    .line 2068
    .line 2069
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->g0:Landroid/content/SharedPreferences$Editor;

    .line 2070
    .line 2071
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2072
    .line 2073
    .line 2074
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 2075
    .line 2076
    .line 2077
    move-result-object v1

    .line 2078
    invoke-virtual {v1, v5, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 2079
    .line 2080
    .line 2081
    goto :goto_6

    .line 2082
    :cond_35
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 2083
    .line 2084
    const/4 v6, 0x0

    .line 2085
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2086
    .line 2087
    .line 2088
    move-result-object v1

    .line 2089
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2090
    .line 2091
    .line 2092
    move-result v1

    .line 2093
    if-eqz v1, :cond_36

    .line 2094
    .line 2095
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 2096
    .line 2097
    .line 2098
    move-result-object v1

    .line 2099
    invoke-virtual {v1, v5, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 2100
    .line 2101
    .line 2102
    goto :goto_6

    .line 2103
    :cond_36
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 2104
    .line 2105
    .line 2106
    move-result-object v1

    .line 2107
    const-string v2, "locked"

    .line 2108
    .line 2109
    invoke-virtual {v1, v5, v2}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 2110
    .line 2111
    .line 2112
    :goto_6
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 2113
    .line 2114
    const-string v2, "parental_contorl"

    .line 2115
    .line 2116
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 2117
    .line 2118
    .line 2119
    move-result v1

    .line 2120
    if-eqz v1, :cond_37

    .line 2121
    .line 2122
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 2123
    .line 2124
    .line 2125
    move-result-object v1

    .line 2126
    iget-object v3, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 2127
    .line 2128
    const/4 v4, 0x0

    .line 2129
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2130
    .line 2131
    .line 2132
    move-result-object v2

    .line 2133
    const-string v3, "ORT_PARENTAL_CONTROL"

    .line 2134
    .line 2135
    invoke-virtual {v1, v3, v2}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 2136
    .line 2137
    .line 2138
    :cond_37
    new-instance v1, Lb7/z0;

    .line 2139
    .line 2140
    const/4 v2, 0x1

    .line 2141
    invoke-direct {v1, v0, v2}, Lb7/z0;-><init>(Lpe/hf/black20/ORPlayerMainActivity;I)V

    .line 2142
    .line 2143
    .line 2144
    iput-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->s0:Lb7/z0;

    .line 2145
    .line 2146
    new-instance v1, Landroid/content/IntentFilter;

    .line 2147
    .line 2148
    const-string v3, "load_tv_fragment"

    .line 2149
    .line 2150
    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2151
    .line 2152
    .line 2153
    new-instance v3, Landroid/content/IntentFilter;

    .line 2154
    .line 2155
    const-string v4, "finish_alert"

    .line 2156
    .line 2157
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2158
    .line 2159
    .line 2160
    const/16 v4, 0x21

    .line 2161
    .line 2162
    move/from16 v5, v22

    .line 2163
    .line 2164
    if-lt v5, v4, :cond_38

    .line 2165
    .line 2166
    iget-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->s0:Lb7/z0;

    .line 2167
    .line 2168
    const/4 v5, 0x4

    .line 2169
    move-object/from16 v6, v21

    .line 2170
    .line 2171
    invoke-static {v6, v4, v1, v5}, LU4/a;->f(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V

    .line 2172
    .line 2173
    .line 2174
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->s0:Lb7/z0;

    .line 2175
    .line 2176
    invoke-static {v6, v1, v3, v5}, LU4/a;->f(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V

    .line 2177
    .line 2178
    .line 2179
    goto :goto_7

    .line 2180
    :cond_38
    move-object/from16 v6, v21

    .line 2181
    .line 2182
    iget-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->s0:Lb7/z0;

    .line 2183
    .line 2184
    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2185
    .line 2186
    .line 2187
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->s0:Lb7/z0;

    .line 2188
    .line 2189
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2190
    .line 2191
    .line 2192
    :goto_7
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 2193
    .line 2194
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2195
    .line 2196
    .line 2197
    move-result v1

    .line 2198
    new-array v1, v1, [Ljava/lang/String;

    .line 2199
    .line 2200
    iput-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->k0:[Ljava/lang/String;

    .line 2201
    .line 2202
    iget-object v3, v0, Lpe/hf/black20/ORPlayerMainActivity;->z0:Ljava/util/ArrayList;

    .line 2203
    .line 2204
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2205
    .line 2206
    .line 2207
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 2208
    .line 2209
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2210
    .line 2211
    .line 2212
    move-result v1

    .line 2213
    new-array v1, v1, [Ljava/lang/Integer;

    .line 2214
    .line 2215
    iput-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->l0:[Ljava/lang/Integer;

    .line 2216
    .line 2217
    iget-object v3, v0, Lpe/hf/black20/ORPlayerMainActivity;->A0:Ljava/util/ArrayList;

    .line 2218
    .line 2219
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2220
    .line 2221
    .line 2222
    new-instance v1, Lb7/u0;

    .line 2223
    .line 2224
    iget-object v3, v0, Lpe/hf/black20/ORPlayerMainActivity;->k0:[Ljava/lang/String;

    .line 2225
    .line 2226
    iget-object v4, v0, Lpe/hf/black20/ORPlayerMainActivity;->l0:[Ljava/lang/Integer;

    .line 2227
    .line 2228
    invoke-direct {v1, v6, v3, v4}, Lb7/u0;-><init>(Lpe/hf/black20/ORPlayerMainActivity;[Ljava/lang/String;[Ljava/lang/Integer;)V

    .line 2229
    .line 2230
    .line 2231
    iget-object v3, v0, Lpe/hf/black20/ORPlayerMainActivity;->i0:Landroid/widget/ListView;

    .line 2232
    .line 2233
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2234
    .line 2235
    .line 2236
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->i0:Landroid/widget/ListView;

    .line 2237
    .line 2238
    new-instance v3, Lb7/x0;

    .line 2239
    .line 2240
    const/4 v4, 0x0

    .line 2241
    invoke-direct {v3, v0, v4}, Lb7/x0;-><init>(Ljava/lang/Object;I)V

    .line 2242
    .line 2243
    .line 2244
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2245
    .line 2246
    .line 2247
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->i0:Landroid/widget/ListView;

    .line 2248
    .line 2249
    new-instance v3, Lb7/v0;

    .line 2250
    .line 2251
    invoke-direct {v3, v0, v4}, Lb7/v0;-><init>(Ljava/lang/Object;I)V

    .line 2252
    .line 2253
    .line 2254
    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2255
    .line 2256
    .line 2257
    sput-boolean v2, Lpe/hf/black20/ORPlayerMainActivity;->I0:Z

    .line 2258
    .line 2259
    iget-object v1, v0, LY/v;->X:Lf/S;

    .line 2260
    .line 2261
    invoke-virtual {v1}, Lf/S;->R()LY/K;

    .line 2262
    .line 2263
    .line 2264
    move-result-object v1

    .line 2265
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2266
    .line 2267
    .line 2268
    new-instance v2, LY/a;

    .line 2269
    .line 2270
    invoke-direct {v2, v1}, LY/a;-><init>(LY/K;)V

    .line 2271
    .line 2272
    .line 2273
    iput-object v2, v0, Lpe/hf/black20/ORPlayerMainActivity;->o0:LY/a;

    .line 2274
    .line 2275
    new-instance v1, Lb7/t0;

    .line 2276
    .line 2277
    invoke-direct {v1}, Lb7/t0;-><init>()V

    .line 2278
    .line 2279
    .line 2280
    const v3, 0x7f0b02d8

    .line 2281
    .line 2282
    .line 2283
    invoke-virtual {v2, v3, v1}, LY/a;->g(ILY/s;)V

    .line 2284
    .line 2285
    .line 2286
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->o0:LY/a;

    .line 2287
    .line 2288
    const/4 v2, 0x0

    .line 2289
    invoke-virtual {v1, v2}, LY/a;->d(Z)I

    .line 2290
    .line 2291
    .line 2292
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 2293
    .line 2294
    const-string v2, "mqtt_url"

    .line 2295
    .line 2296
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 2297
    .line 2298
    .line 2299
    move-result v1

    .line 2300
    if-eqz v1, :cond_39

    .line 2301
    .line 2302
    iget-object v1, v0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 2303
    .line 2304
    const/4 v3, 0x0

    .line 2305
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2306
    .line 2307
    .line 2308
    move-result-object v1

    .line 2309
    const-string v2, "0"

    .line 2310
    .line 2311
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2312
    .line 2313
    .line 2314
    move-result v1

    .line 2315
    if-nez v1, :cond_39

    .line 2316
    .line 2317
    new-instance v1, Li7/b;

    .line 2318
    .line 2319
    const/4 v2, 0x0

    .line 2320
    invoke-direct {v1, v6, v2}, Li7/b;-><init>(Landroid/app/Activity;Z)V

    .line 2321
    .line 2322
    .line 2323
    :cond_39
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Lf/o;->onDestroy()V

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
    const-string v2, "ORT_isCategoriesActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lpe/hf/black20/ORPlayerMainActivity;->s0:Lb7/z0;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lpe/hf/black20/ORPlayerMainActivity;->C0:Lb7/z0;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-static {p0}, Li0/c;->a(Landroid/content/Context;)Li0/c;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Li0/c;->d(Landroid/content/BroadcastReceiver;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lpe/hf/black20/ORPlayerMainActivity;->e0:Lpe/hf/black20/ORPlayerMainActivity;

    .line 35
    .line 36
    const-class v1, Lpe/hf/black20/services/OTRServices;

    .line 37
    .line 38
    invoke-static {v0, v1}, Lpe/hf/black20/util/Methods;->W(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 42
    .line 43
    const-string v2, "mqtt_url"

    .line 44
    .line 45
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "0"

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    sget-object v1, Li7/b;->a:Ljava/lang/String;

    .line 67
    .line 68
    const-string v1, "XCIPTV_TAG"

    .line 69
    .line 70
    const-string v2, "MQTT Client Reconnect called"

    .line 71
    .line 72
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Li7/b;->f(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-boolean v2, Lpe/hf/black20/ORPlayerMainActivity;->H0:Z

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const/16 v2, 0x190

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v2, 0x64

    .line 13
    .line 14
    :goto_0
    iget-wide v3, p0, Lpe/hf/black20/ORPlayerMainActivity;->m0:J

    .line 15
    .line 16
    sub-long v3, v0, v3

    .line 17
    .line 18
    int-to-long v5, v2

    .line 19
    cmp-long v2, v3, v5

    .line 20
    .line 21
    if-gez v2, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-super {p0, p1, p2}, Lf/o;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput-wide v0, p0, Lpe/hf/black20/ORPlayerMainActivity;->m0:J

    .line 30
    .line 31
    :goto_1
    return p1
.end method

.method public final onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, LY/v;->onPause()V

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
    const-string v2, "ORT_isCategoriesActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    const-string v0, "XCIPTV_TAG"

    .line 15
    .line 16
    const-string v1, "ChannelListActivity-onPause()..."

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, LY/v;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    const-string v1, "was "

    .line 6
    .line 7
    const-string v2, "XCIPTV_TAG"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p1, "CategoriesActivity - External storage1"

    .line 17
    .line 18
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    aget p1, p3, v3

    .line 22
    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "CategoriesActivity Permission: "

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    aget-object p2, p2, v3

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    aget p2, p3, v3

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string p1, "CategoriesActivity - External storage2"

    .line 54
    .line 55
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    aget p1, p3, v3

    .line 59
    .line 60
    if-nez p1, :cond_2

    .line 61
    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v0, "Permission: "

    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    aget-object p2, p2, v3

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    aget p2, p3, v3

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 8

    .line 1
    invoke-super {p0}, LY/v;->onResume()V

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
    const-string v2, "ORT_isCategoriesActivityVisible"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 12
    .line 13
    .line 14
    const-string v0, "XCIPTV_TAG"

    .line 15
    .line 16
    const-string v1, "ORPlayerHomeActivity-onResume()..."

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v2, 0x21

    .line 24
    .line 25
    if-lt v1, v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lpe/hf/black20/ORPlayerMainActivity;->t()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/16 v2, 0x17

    .line 32
    .line 33
    const-string v3, "Permission is granted2"

    .line 34
    .line 35
    const-string v4, "ContentValues"

    .line 36
    .line 37
    if-lt v1, v2, :cond_2

    .line 38
    .line 39
    invoke-static {p0}, Lb7/u;->e(Lpe/hf/black20/ORPlayerMainActivity;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lpe/hf/black20/ORPlayerMainActivity;->t()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string v1, "Permission is revoked2"

    .line 53
    .line 54
    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 58
    .line 59
    filled-new-array {v1}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const/4 v2, 0x2

    .line 64
    invoke-static {p0, v1, v2}, LD/c;->D(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lpe/hf/black20/ORPlayerMainActivity;->t()V

    .line 72
    .line 73
    .line 74
    :goto_0
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->e0:Lpe/hf/black20/ORPlayerMainActivity;

    .line 75
    .line 76
    const-class v2, Lpe/hf/black20/services/OTRServices;

    .line 77
    .line 78
    invoke-static {v1, v2}, Lpe/hf/black20/util/Methods;->W(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    new-instance v2, Ljava/util/Locale;

    .line 94
    .line 95
    iget-object v3, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 96
    .line 97
    const-string v4, "language"

    .line 98
    .line 99
    const/4 v5, 0x0

    .line 100
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 108
    .line 109
    .line 110
    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->C0:Lb7/z0;

    .line 136
    .line 137
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-nez v2, :cond_3

    .line 142
    .line 143
    invoke-static {p0}, Li0/c;->a(Landroid/content/Context;)Li0/c;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    new-instance v3, Landroid/content/IntentFilter;

    .line 148
    .line 149
    const-string v4, "ORPlayerHomeActivityProgramAndMessageReceiver"

    .line 150
    .line 151
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v1, v3}, Li0/c;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 155
    .line 156
    .line 157
    :cond_3
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 158
    .line 159
    const-string v2, "epg_mode"

    .line 160
    .line 161
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_4

    .line 166
    .line 167
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iget-object v3, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 172
    .line 173
    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    const-string v3, "ORT_LIVE_TV_EPG_MODE"

    .line 182
    .line 183
    invoke-virtual {v1, v3, v2}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 184
    .line 185
    .line 186
    :cond_4
    const-string v1, "ORT_WHICH_PANEL"

    .line 187
    .line 188
    const-string v2, "xtreamcodes"

    .line 189
    .line 190
    invoke-static {v1, v2, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_a

    .line 195
    .line 196
    const-string v3, "last_expire_message"

    .line 197
    .line 198
    invoke-static {v1, v2, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_a

    .line 203
    .line 204
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 205
    .line 206
    const-string v2, "exp_date"

    .line 207
    .line 208
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    iput-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->B0:Ljava/lang/String;

    .line 213
    .line 214
    const-string v4, "null"

    .line 215
    .line 216
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-nez v1, :cond_9

    .line 221
    .line 222
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->B0:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-nez v1, :cond_9

    .line 229
    .line 230
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->B0:Ljava/lang/String;

    .line 231
    .line 232
    const-string v4, ""

    .line 233
    .line 234
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_5

    .line 239
    .line 240
    goto/16 :goto_3

    .line 241
    .line 242
    :cond_5
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 243
    .line 244
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-static {v1}, Lpe/hf/black20/util/Methods;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    iput-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->B0:Ljava/lang/String;

    .line 253
    .line 254
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 255
    .line 256
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-static {v1}, Lpe/hf/black20/util/Methods;->k(Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    if-ltz v1, :cond_8

    .line 265
    .line 266
    const/4 v2, 0x4

    .line 267
    if-gt v1, v2, :cond_8

    .line 268
    .line 269
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 270
    .line 271
    const-string v4, "show_expire"

    .line 272
    .line 273
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    const-string v4, "yes"

    .line 278
    .line 279
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-eqz v1, :cond_a

    .line 284
    .line 285
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 286
    .line 287
    const-string v4, "MM/dd/yyyy HH:mm:ss"

    .line 288
    .line 289
    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iput-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->t0:Ljava/text/SimpleDateFormat;

    .line 293
    .line 294
    new-instance v4, Ljava/util/Date;

    .line 295
    .line 296
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    iput-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->u0:Ljava/lang/String;

    .line 304
    .line 305
    iget-object v4, p0, Lpe/hf/black20/ORPlayerMainActivity;->t0:Ljava/text/SimpleDateFormat;

    .line 306
    .line 307
    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    iget-object v4, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 312
    .line 313
    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    const v6, 0x7f130246

    .line 318
    .line 319
    .line 320
    if-nez v4, :cond_6

    .line 321
    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    iget-object v2, p0, Lpe/hf/black20/ORPlayerMainActivity;->B0:Ljava/lang/String;

    .line 335
    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-virtual {p0, v1}, Lpe/hf/black20/ORPlayerMainActivity;->u(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    goto :goto_1

    .line 347
    :catch_0
    move-exception v1

    .line 348
    goto :goto_2

    .line 349
    :cond_6
    iget-object v4, p0, Lpe/hf/black20/ORPlayerMainActivity;->t0:Ljava/text/SimpleDateFormat;

    .line 350
    .line 351
    iget-object v7, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 352
    .line 353
    invoke-interface {v7, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v5

    .line 357
    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    invoke-static {v4, v1}, Lpe/hf/black20/util/Methods;->j(Ljava/util/Date;Ljava/util/Date;)I

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    if-le v1, v2, :cond_7

    .line 366
    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    iget-object v2, p0, Lpe/hf/black20/ORPlayerMainActivity;->B0:Ljava/lang/String;

    .line 380
    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-virtual {p0, v1}, Lpe/hf/black20/ORPlayerMainActivity;->u(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    :cond_7
    :goto_1
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 392
    .line 393
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    iget-object v2, p0, Lpe/hf/black20/ORPlayerMainActivity;->u0:Ljava/lang/String;

    .line 398
    .line 399
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 400
    .line 401
    .line 402
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 403
    .line 404
    .line 405
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .line 407
    .line 408
    goto :goto_4

    .line 409
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    const-string v3, "CategoriesActivity - ParseException ----"

    .line 412
    .line 413
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    goto :goto_4

    .line 431
    :cond_8
    if-gez v1, :cond_a

    .line 432
    .line 433
    new-instance v0, Landroid/content/Intent;

    .line 434
    .line 435
    const-class v1, Lpe/hf/black20/LoginActivity;

    .line 436
    .line 437
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 444
    .line 445
    .line 446
    goto :goto_4

    .line 447
    :cond_9
    :goto_3
    const v0, 0x7f130150

    .line 448
    .line 449
    .line 450
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    iput-object v0, p0, Lpe/hf/black20/ORPlayerMainActivity;->B0:Ljava/lang/String;

    .line 455
    .line 456
    :cond_a
    :goto_4
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Lf/o;->onStop()V

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
    const-string v2, "ORT_isCategoriesActivityVisible"

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
    iget-object p1, p0, Lpe/hf/black20/ORPlayerMainActivity;->e0:Lpe/hf/black20/ORPlayerMainActivity;

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

.method public final s()V
    .locals 6

    .line 1
    iget-object v0, p0, Lpe/hf/black20/ORPlayerMainActivity;->e0:Lpe/hf/black20/ORPlayerMainActivity;

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
    const v4, 0x7f130025

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
    check-cast v3, Landroid/widget/Button;

    .line 62
    .line 63
    const v4, 0x7f13023c

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    new-instance v4, Lb7/y0;

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    invoke-direct {v4, p0, v2, v5}, Lb7/y0;-><init>(Lpe/hf/black20/ORPlayerMainActivity;Landroid/app/AlertDialog;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    const v3, 0x7f0b014b

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroid/widget/Button;

    .line 90
    .line 91
    const v3, 0x7f1301e7

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lb7/y0;

    .line 102
    .line 103
    const/4 v3, 0x1

    .line 104
    invoke-direct {v0, p0, v2, v3}, Lb7/y0;-><init>(Lpe/hf/black20/ORPlayerMainActivity;Landroid/app/AlertDialog;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final t()V
    .locals 8

    .line 1
    iget-object v0, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "tvvodseries_dl_time"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    const-string v0, "ORT_PORTAL_CHANGE"

    .line 12
    .line 13
    const-string v2, "no"

    .line 14
    .line 15
    const-string v3, "yes"

    .line 16
    .line 17
    invoke-static {v0, v2, v3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lpe/hf/black20/ORPlayerMainActivity;->z()V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    :try_start_0
    iget-object v4, p0, Lpe/hf/black20/ORPlayerMainActivity;->t0:Ljava/text/SimpleDateFormat;

    .line 31
    .line 32
    iget-object v5, p0, Lpe/hf/black20/ORPlayerMainActivity;->u0:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    iget-object v5, p0, Lpe/hf/black20/ORPlayerMainActivity;->t0:Ljava/text/SimpleDateFormat;

    .line 39
    .line 40
    iget-object v6, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 41
    .line 42
    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v5, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1, v4}, Lpe/hf/black20/util/Methods;->j(Ljava/util/Date;Ljava/util/Date;)I

    .line 51
    .line 52
    .line 53
    move-result v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    nop

    .line 56
    const/4 v1, 0x0

    .line 57
    :goto_0
    const/16 v4, 0xc

    .line 58
    .line 59
    if-le v1, v4, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0}, Lpe/hf/black20/ORPlayerMainActivity;->z()V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :cond_1
    const-string v4, "ORPlayerHomeActivity - Caching EPG Data"

    .line 67
    .line 68
    const-string v5, "XCIPTV_TAG"

    .line 69
    .line 70
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v6, "ORPlayerHomeActivity - TV VOD Sereis - Content updated less than 6 hrs ago."

    .line 76
    .line 77
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 95
    .line 96
    const-string v4, "load_last_channel"

    .line 97
    .line 98
    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 105
    .line 106
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_4

    .line 115
    .line 116
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 117
    .line 118
    const-string v3, "last_profile"

    .line 119
    .line 120
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    const-string v4, "ORT_isLoadLastLiveTVChannel"

    .line 125
    .line 126
    const-string v5, "last_channel_name"

    .line 127
    .line 128
    const/4 v6, 0x1

    .line 129
    if-eqz v1, :cond_2

    .line 130
    .line 131
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 132
    .line 133
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    const-string v3, "ORT_PROFILE"

    .line 142
    .line 143
    const-string v7, "Default (XC)"

    .line 144
    .line 145
    invoke-virtual {v2, v3, v7}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_4

    .line 154
    .line 155
    sget-boolean v1, Lpe/hf/black20/ORPlayerMainActivity;->J0:Z

    .line 156
    .line 157
    if-nez v1, :cond_4

    .line 158
    .line 159
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 160
    .line 161
    invoke-interface {v1, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_4

    .line 166
    .line 167
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1, v4, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 172
    .line 173
    .line 174
    sput-boolean v6, Lpe/hf/black20/ORPlayerMainActivity;->J0:Z

    .line 175
    .line 176
    iput-boolean v6, p0, Lpe/hf/black20/ORPlayerMainActivity;->v0:Z

    .line 177
    .line 178
    new-instance v1, Lk3/j;

    .line 179
    .line 180
    invoke-direct {v1, p0}, Lk3/j;-><init>(Lpe/hf/black20/ORPlayerMainActivity;)V

    .line 181
    .line 182
    .line 183
    new-array v0, v0, [Ljava/lang/Void;

    .line 184
    .line 185
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_2
    sget-boolean v1, Lpe/hf/black20/ORPlayerMainActivity;->J0:Z

    .line 190
    .line 191
    if-nez v1, :cond_4

    .line 192
    .line 193
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 194
    .line 195
    invoke-interface {v1, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_4

    .line 200
    .line 201
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v1, v4, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 206
    .line 207
    .line 208
    sput-boolean v6, Lpe/hf/black20/ORPlayerMainActivity;->J0:Z

    .line 209
    .line 210
    iput-boolean v6, p0, Lpe/hf/black20/ORPlayerMainActivity;->v0:Z

    .line 211
    .line 212
    new-instance v1, Lk3/j;

    .line 213
    .line 214
    invoke-direct {v1, p0}, Lk3/j;-><init>(Lpe/hf/black20/ORPlayerMainActivity;)V

    .line 215
    .line 216
    .line 217
    new-array v0, v0, [Ljava/lang/Void;

    .line 218
    .line 219
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_3
    invoke-virtual {p0}, Lpe/hf/black20/ORPlayerMainActivity;->z()V

    .line 224
    .line 225
    .line 226
    :cond_4
    :goto_1
    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lpe/hf/black20/ORPlayerMainActivity;->e0:Lpe/hf/black20/ORPlayerMainActivity;

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
    const-string v5, "#99000000"

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
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    const p1, 0x7f0b014f

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/widget/Button;

    .line 59
    .line 60
    const v1, 0x7f1301ee

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Lb7/y0;

    .line 71
    .line 72
    const/4 v1, 0x4

    .line 73
    invoke-direct {v0, p0, v2, v1}, Lb7/y0;-><init>(Lpe/hf/black20/ORPlayerMainActivity;Landroid/app/AlertDialog;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final x()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lpe/hf/black20/ORPlayerMainActivity;->F0:Z

    .line 3
    .line 4
    iget-object v0, p0, Lpe/hf/black20/ORPlayerMainActivity;->i0:Landroid/widget/ListView;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 11
    .line 12
    sget v1, Lpe/hf/black20/ORPlayerMainActivity;->E0:I

    .line 13
    .line 14
    mul-int/lit8 v1, v1, 0x37

    .line 15
    .line 16
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 17
    .line 18
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->i0:Landroid/widget/ListView;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lpe/hf/black20/ORPlayerMainActivity;->i0:Landroid/widget/ListView;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lpe/hf/black20/ORPlayerMainActivity;->i0:Landroid/widget/ListView;

    .line 29
    .line 30
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->n0:Landroid/view/animation/LayoutAnimationController;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lb7/A0;

    .line 36
    .line 37
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->j0:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    sget v2, Lpe/hf/black20/ORPlayerMainActivity;->E0:I

    .line 40
    .line 41
    mul-int/lit8 v2, v2, 0x3c

    .line 42
    .line 43
    invoke-direct {v0, v1, v2}, Lb7/A0;-><init>(Landroid/widget/FrameLayout;I)V

    .line 44
    .line 45
    .line 46
    const-wide/16 v1, 0x12c

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->j0:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final y()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lpe/hf/black20/ORPlayerMainActivity;->F0:Z

    .line 3
    .line 4
    iget-object v0, p0, Lpe/hf/black20/ORPlayerMainActivity;->i0:Landroid/widget/ListView;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 11
    .line 12
    sget v1, Lpe/hf/black20/ORPlayerMainActivity;->D0:I

    .line 13
    .line 14
    div-int/lit8 v1, v1, 0x6

    .line 15
    .line 16
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 17
    .line 18
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->i0:Landroid/widget/ListView;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lpe/hf/black20/ORPlayerMainActivity;->i0:Landroid/widget/ListView;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lpe/hf/black20/ORPlayerMainActivity;->i0:Landroid/widget/ListView;

    .line 29
    .line 30
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->n0:Landroid/view/animation/LayoutAnimationController;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lb7/A0;

    .line 36
    .line 37
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->j0:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    sget v2, Lpe/hf/black20/ORPlayerMainActivity;->D0:I

    .line 40
    .line 41
    div-int/lit8 v2, v2, 0x6

    .line 42
    .line 43
    invoke-direct {v0, v1, v2}, Lb7/A0;-><init>(Landroid/widget/FrameLayout;I)V

    .line 44
    .line 45
    .line 46
    const-wide/16 v1, 0x12c

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lpe/hf/black20/ORPlayerMainActivity;->j0:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lpe/hf/black20/ORPlayerMainActivity;->i0:Landroid/widget/ListView;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lpe/hf/black20/ORPlayerMainActivity;->i0:Landroid/widget/ListView;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final z()V
    .locals 5

    .line 1
    iget-object v0, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "whichPanel"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v2, "ORT_WHICH_PANEL"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v3, p0, Lpe/hf/black20/ORPlayerMainActivity;->f0:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v2, v1}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    const-string v3, "ORT_PROCESS_STATUS"

    .line 33
    .line 34
    invoke-virtual {v0, v1, v3}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "xtreamcodes"

    .line 42
    .line 43
    invoke-virtual {v0, v2, v1}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lpe/hf/black20/ORPlayerMainActivity;->e0:Lpe/hf/black20/ORPlayerMainActivity;

    .line 54
    .line 55
    const-string v1, "no"

    .line 56
    .line 57
    invoke-static {v0, v1}, Lpe/hf/black20/util/Methods;->m(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Landroid/content/Intent;

    .line 61
    .line 62
    const-class v1, Lpe/hf/black20/updatecontents/XCUpdateContents;

    .line 63
    .line 64
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const-string v0, "ezserver"

    .line 72
    .line 73
    invoke-static {v2, v1, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    new-instance v0, Landroid/content/Intent;

    .line 80
    .line 81
    const-class v1, Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 82
    .line 83
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const-string v0, "m3u"

    .line 91
    .line 92
    invoke-static {v2, v1, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    new-instance v0, Landroid/content/Intent;

    .line 99
    .line 100
    const-class v1, Lpe/hf/black20/updatecontents/M3UUpdateContents;

    .line 101
    .line 102
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    :goto_0
    return-void
.end method
