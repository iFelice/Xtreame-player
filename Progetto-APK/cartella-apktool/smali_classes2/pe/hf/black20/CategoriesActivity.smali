.class public Lpe/hf/black20/CategoriesActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lpe/hf/black20/util/d;
.implements Lg7/c;


# static fields
.field public static H0:Ljava/lang/String; = null

.field public static I0:Z = false

.field public static J0:I = 0x0

.field public static K0:I = 0x0

.field public static L0:I = 0x0

.field public static M0:I = 0x0

.field public static N0:I = 0x0

.field public static final THEME:Ljava/lang/String; = "yes"

.field public static final cat_tv:Ljava/lang/String;

.field public static final cat_vod:Ljava/lang/String;


# instance fields
.field public A0:Lb7/q;

.field public B0:Landroid/widget/ImageView;

.field public C0:Lcom/google/android/gms/ads/AdView;

.field public D0:LZ3/b0;

.field public final E0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final F0:Ljava/util/concurrent/ExecutorService;

.field public final G:Lpe/hf/black20/CategoriesActivity;

.field public final G0:Lb7/q;

.field public H:Landroid/content/SharedPreferences;

.field public I:Landroid/content/SharedPreferences$Editor;

.field public J:Lc7/a;

.field public K:Lh7/i;

.field public L:Lc7/d;

.field public M:Ljava/text/SimpleDateFormat;

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:Ljava/lang/String;

.field public a0:Landroid/widget/ImageButton;

.field public b0:Landroid/widget/ImageButton;

.field public c0:Landroid/widget/ImageButton;

.field public d0:Landroid/widget/ImageButton;

.field public e0:Landroid/widget/ImageButton;

.field public f0:Landroid/widget/ImageButton;

.field public g0:Landroid/widget/ImageButton;

.field public h0:Landroid/widget/ImageButton;

.field public i0:Landroid/widget/ImageButton;

.field public j0:Landroid/widget/ImageButton;

.field public k0:Landroid/widget/ImageButton;

.field public l0:Landroid/widget/ImageButton;

.field public m0:Landroid/widget/ImageButton;

.field public n0:Landroid/widget/ImageButton;

.field public o0:Landroid/widget/ImageButton;

.field public p0:Landroid/widget/ImageButton;

.field public q0:Landroid/widget/FrameLayout;

.field public r0:Landroid/widget/ImageView;

.field public s0:Landroid/widget/TextView;

.field public t0:Landroid/widget/TextView;

.field public u0:Landroid/widget/TextView;

.field public v0:Z

.field public w0:Ljava/util/ArrayList;

.field public x0:Ljava/util/ArrayList;

.field public y0:Lorg/json/JSONArray;

.field public z0:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

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
    sput-boolean v0, Lpe/hf/black20/CategoriesActivity;->I0:Z

    .line 8
    .line 9
    sget-object v0, Lpe/hf/black20/util/Methods;->a:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    sget-object v0, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f0805d3

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 27
    .line 28
    .line 29
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 30
    .line 31
    const/16 v3, 0x64

    .line 32
    .line 33
    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    array-length v0, v0

    .line 41
    div-int/lit16 v0, v0, 0x400

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lpe/hf/black20/CategoriesActivity;->cat_tv:Ljava/lang/String;

    .line 48
    .line 49
    sget-object v0, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const v1, 0x7f0805d5

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    array-length v0, v0

    .line 75
    div-int/lit16 v0, v0, 0x400

    .line 76
    .line 77
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lpe/hf/black20/CategoriesActivity;->cat_vod:Ljava/lang/String;

    .line 82
    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lpe/hf/black20/CategoriesActivity;->N:I

    .line 13
    .line 14
    iput v0, p0, Lpe/hf/black20/CategoriesActivity;->O:I

    .line 15
    .line 16
    iput v0, p0, Lpe/hf/black20/CategoriesActivity;->P:I

    .line 17
    .line 18
    iput v0, p0, Lpe/hf/black20/CategoriesActivity;->Q:I

    .line 19
    .line 20
    iput v0, p0, Lpe/hf/black20/CategoriesActivity;->R:I

    .line 21
    .line 22
    iput v0, p0, Lpe/hf/black20/CategoriesActivity;->S:I

    .line 23
    .line 24
    iput v0, p0, Lpe/hf/black20/CategoriesActivity;->T:I

    .line 25
    .line 26
    iput v0, p0, Lpe/hf/black20/CategoriesActivity;->U:I

    .line 27
    .line 28
    iput v0, p0, Lpe/hf/black20/CategoriesActivity;->V:I

    .line 29
    .line 30
    iput v0, p0, Lpe/hf/black20/CategoriesActivity;->W:I

    .line 31
    .line 32
    const-string v1, ""

    .line 33
    .line 34
    iput-object v1, p0, Lpe/hf/black20/CategoriesActivity;->Y:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v1, p0, Lpe/hf/black20/CategoriesActivity;->Z:Ljava/lang/String;

    .line 37
    .line 38
    iput-boolean v0, p0, Lpe/hf/black20/CategoriesActivity;->v0:Z

    .line 39
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lpe/hf/black20/CategoriesActivity;->w0:Ljava/util/ArrayList;

    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lpe/hf/black20/CategoriesActivity;->x0:Ljava/util/ArrayList;

    .line 53
    .line 54
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    .line 56
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lpe/hf/black20/CategoriesActivity;->E0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p0, Lpe/hf/black20/CategoriesActivity;->F0:Ljava/util/concurrent/ExecutorService;

    .line 66
    .line 67
    new-instance v1, Landroid/os/Handler;

    .line 68
    .line 69
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lb7/q;

    .line 77
    .line 78
    invoke-direct {v1, p0, v0}, Lb7/q;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 79
    .line 80
    .line 81
    iput-object v1, p0, Lpe/hf/black20/CategoriesActivity;->G0:Lb7/q;

    .line 82
    .line 83
    return-void
.end method

.method private static native AN()Ljava/lang/String;
.end method

.method public static native gan()Ljava/lang/String;
.end method

.method public static i(Landroid/content/Context;)Z
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

.method public static l(Landroid/content/Context;)V
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

.method public static m(Landroid/app/Activity;)V
    .locals 1

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
    const/16 v0, 0x7b

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    const-string v0, "------------hr--"

    .line 2
    .line 3
    const-string v1, "XCIPTV_TAG"

    .line 4
    .line 5
    const-string v2, "XCCheckIfEPGNeedToDownload-----------------started."

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "ORT_PROCESS_STATUS"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, LQ5/a;->b(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 23
    .line 24
    const-string v3, "epg_dl_time"

    .line 25
    .line 26
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object v4, p0, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 31
    .line 32
    const-string v5, "CategoriesActivity - EPG Need to download"

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 37
    .line 38
    const-string v6, "MM/dd/yyyy HH:mm:ss"

    .line 39
    .line 40
    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v6, Ljava/util/Date;

    .line 44
    .line 45
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {v2, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    iget-object v8, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    invoke-interface {v8, v3, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-virtual {v2, v8}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2, v7}, Lpe/hf/black20/util/Methods;->j(Ljava/util/Date;Ljava/util/Date;)I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    new-instance v9, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    invoke-static {v2, v7}, Lpe/hf/black20/util/Methods;->j(Ljava/util/Date;Ljava/util/Date;)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const/16 v2, 0xc

    .line 95
    .line 96
    if-le v0, v2, :cond_0

    .line 97
    .line 98
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 102
    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    .line 109
    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    .line 112
    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    .line 115
    .line 116
    invoke-static {v4}, Ll7/g;->b(Landroid/content/Context;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_0
    const-string v0, "CategoriesActivity - Skipping EPG Download. EPG Downloaded Less than 12 hrs ago."

    .line 121
    .line 122
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_1
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    invoke-static {v4}, Ll7/g;->b(Landroid/content/Context;)V

    .line 130
    .line 131
    .line 132
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

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
    iget-object p3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 23
    .line 24
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    iput-object p3, p0, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    const-string v0, "external_ip"

    .line 31
    .line 32
    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

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

.method public final c(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

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
    new-instance v0, Lb7/r;

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-direct {v0, p0, v2, v1}, Lb7/r;-><init>(Lpe/hf/black20/CategoriesActivity;Landroid/app/AlertDialog;I)V

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

.method public final d()V
    .locals 14

    .line 1
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 2
    .line 3
    invoke-static {}, Lpe/hf/black20/CategoriesActivity;->gan()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lpe/hf/black20/util/Methods;->E(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const-string v0, "ORT_WHICH_PANEL"

    .line 17
    .line 18
    const-string v1, "xtreamcodes"

    .line 19
    .line 20
    const-string v2, "ezserver"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/16 v4, 0x8

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 32
    .line 33
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 42
    .line 43
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 47
    .line 48
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 62
    .line 63
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 67
    .line 68
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 72
    .line 73
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->n0:Landroid/widget/ImageButton;

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->r0:Landroid/widget/ImageView;

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    const-string v3, "m3u"

    .line 88
    .line 89
    invoke-static {v0, v1, v3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_2

    .line 94
    .line 95
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 106
    .line 107
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 121
    .line 122
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 126
    .line 127
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 131
    .line 132
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 136
    .line 137
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->n0:Landroid/widget/ImageButton;

    .line 141
    .line 142
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->r0:Landroid/widget/ImageView;

    .line 146
    .line 147
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    :cond_2
    :goto_0
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 151
    .line 152
    const-string v6, "whichplayer"

    .line 153
    .line 154
    invoke-interface {v3, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    const/4 v7, 0x0

    .line 159
    const-string v8, "ORT_WHICH_PLAYER"

    .line 160
    .line 161
    if-eqz v3, :cond_4

    .line 162
    .line 163
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 164
    .line 165
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    const-string v6, "EXO"

    .line 170
    .line 171
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_3

    .line 176
    .line 177
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v3, v8, v6}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_3
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    const-string v6, "VLC"

    .line 190
    .line 191
    invoke-virtual {v3, v8, v6}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    iget-object v6, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 200
    .line 201
    const-string v9, "player"

    .line 202
    .line 203
    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-virtual {v3, v8, v6}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 208
    .line 209
    .line 210
    :goto_1
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 211
    .line 212
    const-string v6, "video_resize"

    .line 213
    .line 214
    invoke-interface {v3, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-eqz v3, :cond_5

    .line 219
    .line 220
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 221
    .line 222
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    :cond_5
    sget-object v3, Lpe/hf/black20/util/Config;->b:Ljava/lang/String;

    .line 226
    .line 227
    const-string v6, "yes"

    .line 228
    .line 229
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_6

    .line 234
    .line 235
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 236
    .line 237
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 238
    .line 239
    .line 240
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 241
    .line 242
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 243
    .line 244
    .line 245
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 246
    .line 247
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 248
    .line 249
    .line 250
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 251
    .line 252
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 253
    .line 254
    .line 255
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 256
    .line 257
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 258
    .line 259
    .line 260
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 261
    .line 262
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 263
    .line 264
    .line 265
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 266
    .line 267
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 268
    .line 269
    .line 270
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 271
    .line 272
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 273
    .line 274
    .line 275
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 276
    .line 277
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 278
    .line 279
    .line 280
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->n0:Landroid/widget/ImageButton;

    .line 281
    .line 282
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 283
    .line 284
    .line 285
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 286
    .line 287
    const-string v4, "exp_date"

    .line 288
    .line 289
    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    iput-object v3, p0, Lpe/hf/black20/CategoriesActivity;->Y:Ljava/lang/String;

    .line 294
    .line 295
    goto/16 :goto_2a

    .line 296
    .line 297
    :cond_6
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 298
    .line 299
    const-string v6, "XCIPTV_WHICH_PORTAL_SELECTED"

    .line 300
    .line 301
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    const-string v8, "1"

    .line 306
    .line 307
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    const-string v8, "btn_fav"

    .line 312
    .line 313
    const-string v9, "ms"

    .line 314
    .line 315
    const-string v10, "btn_account"

    .line 316
    .line 317
    const-string v11, "no"

    .line 318
    .line 319
    const-string v12, "No"

    .line 320
    .line 321
    if-eqz v3, :cond_10

    .line 322
    .line 323
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 324
    .line 325
    const-string v6, "btn_live"

    .line 326
    .line 327
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    if-eqz v3, :cond_7

    .line 336
    .line 337
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 338
    .line 339
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 340
    .line 341
    .line 342
    goto :goto_2

    .line 343
    :cond_7
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 344
    .line 345
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 346
    .line 347
    .line 348
    :goto_2
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 349
    .line 350
    const-string v6, "btn_epg"

    .line 351
    .line 352
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    if-eqz v3, :cond_8

    .line 361
    .line 362
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 363
    .line 364
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 365
    .line 366
    .line 367
    goto :goto_3

    .line 368
    :cond_8
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 369
    .line 370
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 371
    .line 372
    .line 373
    :goto_3
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 374
    .line 375
    const-string v6, "btn_vod"

    .line 376
    .line 377
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    if-eqz v3, :cond_9

    .line 386
    .line 387
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 388
    .line 389
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 390
    .line 391
    .line 392
    goto :goto_4

    .line 393
    :cond_9
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 394
    .line 395
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 396
    .line 397
    .line 398
    :goto_4
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 399
    .line 400
    const-string v6, "btn_series"

    .line 401
    .line 402
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    if-eqz v3, :cond_a

    .line 411
    .line 412
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 413
    .line 414
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 415
    .line 416
    .line 417
    goto :goto_5

    .line 418
    :cond_a
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 419
    .line 420
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 421
    .line 422
    .line 423
    :goto_5
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 424
    .line 425
    const-string v6, "btn_radio"

    .line 426
    .line 427
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    if-eqz v3, :cond_b

    .line 436
    .line 437
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 438
    .line 439
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 440
    .line 441
    .line 442
    goto :goto_6

    .line 443
    :cond_b
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 444
    .line 445
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 446
    .line 447
    .line 448
    :goto_6
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 449
    .line 450
    const-string v6, "btn_catchup"

    .line 451
    .line 452
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v3

    .line 460
    if-eqz v3, :cond_c

    .line 461
    .line 462
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 463
    .line 464
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 465
    .line 466
    .line 467
    goto :goto_7

    .line 468
    :cond_c
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 469
    .line 470
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 471
    .line 472
    .line 473
    :goto_7
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 474
    .line 475
    invoke-interface {v3, v10, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v3

    .line 483
    if-eqz v3, :cond_d

    .line 484
    .line 485
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 486
    .line 487
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 488
    .line 489
    .line 490
    goto :goto_8

    .line 491
    :cond_d
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 492
    .line 493
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 494
    .line 495
    .line 496
    :goto_8
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 497
    .line 498
    invoke-interface {v3, v9, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    move-result v3

    .line 506
    if-eqz v3, :cond_e

    .line 507
    .line 508
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 509
    .line 510
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 511
    .line 512
    .line 513
    goto :goto_9

    .line 514
    :cond_e
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 515
    .line 516
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 517
    .line 518
    .line 519
    :goto_9
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 520
    .line 521
    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result v3

    .line 529
    if-eqz v3, :cond_f

    .line 530
    .line 531
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 532
    .line 533
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 534
    .line 535
    .line 536
    goto/16 :goto_2a

    .line 537
    .line 538
    :cond_f
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 539
    .line 540
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 541
    .line 542
    .line 543
    goto/16 :goto_2a

    .line 544
    .line 545
    :cond_10
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 546
    .line 547
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v3

    .line 551
    const-string v13, "2"

    .line 552
    .line 553
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    move-result v3

    .line 557
    if-eqz v3, :cond_1a

    .line 558
    .line 559
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 560
    .line 561
    const-string v6, "btn_live2"

    .line 562
    .line 563
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v3

    .line 567
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result v3

    .line 571
    if-eqz v3, :cond_11

    .line 572
    .line 573
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 574
    .line 575
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 576
    .line 577
    .line 578
    goto :goto_a

    .line 579
    :cond_11
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 580
    .line 581
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 582
    .line 583
    .line 584
    :goto_a
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 585
    .line 586
    const-string v6, "btn_epg2"

    .line 587
    .line 588
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v3

    .line 592
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v3

    .line 596
    if-eqz v3, :cond_12

    .line 597
    .line 598
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 599
    .line 600
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 601
    .line 602
    .line 603
    goto :goto_b

    .line 604
    :cond_12
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 605
    .line 606
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 607
    .line 608
    .line 609
    :goto_b
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 610
    .line 611
    const-string v6, "btn_vod2"

    .line 612
    .line 613
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    if-eqz v3, :cond_13

    .line 622
    .line 623
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 624
    .line 625
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 626
    .line 627
    .line 628
    goto :goto_c

    .line 629
    :cond_13
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 630
    .line 631
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 632
    .line 633
    .line 634
    :goto_c
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 635
    .line 636
    const-string v6, "btn_series2"

    .line 637
    .line 638
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v3

    .line 642
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    move-result v3

    .line 646
    if-eqz v3, :cond_14

    .line 647
    .line 648
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 649
    .line 650
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 651
    .line 652
    .line 653
    goto :goto_d

    .line 654
    :cond_14
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 655
    .line 656
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 657
    .line 658
    .line 659
    :goto_d
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 660
    .line 661
    const-string v6, "btn_radio2"

    .line 662
    .line 663
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v3

    .line 667
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    move-result v3

    .line 671
    if-eqz v3, :cond_15

    .line 672
    .line 673
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 674
    .line 675
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 676
    .line 677
    .line 678
    goto :goto_e

    .line 679
    :cond_15
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 680
    .line 681
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 682
    .line 683
    .line 684
    :goto_e
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 685
    .line 686
    const-string v6, "btn_catchup2"

    .line 687
    .line 688
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v3

    .line 692
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 693
    .line 694
    .line 695
    move-result v3

    .line 696
    if-eqz v3, :cond_16

    .line 697
    .line 698
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 699
    .line 700
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 701
    .line 702
    .line 703
    goto :goto_f

    .line 704
    :cond_16
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 705
    .line 706
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 707
    .line 708
    .line 709
    :goto_f
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 710
    .line 711
    invoke-interface {v3, v10, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v3

    .line 715
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    move-result v3

    .line 719
    if-eqz v3, :cond_17

    .line 720
    .line 721
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 722
    .line 723
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 724
    .line 725
    .line 726
    goto :goto_10

    .line 727
    :cond_17
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 728
    .line 729
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 730
    .line 731
    .line 732
    :goto_10
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 733
    .line 734
    invoke-interface {v3, v9, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v3

    .line 738
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 739
    .line 740
    .line 741
    move-result v3

    .line 742
    if-eqz v3, :cond_18

    .line 743
    .line 744
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 745
    .line 746
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 747
    .line 748
    .line 749
    goto :goto_11

    .line 750
    :cond_18
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 751
    .line 752
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 753
    .line 754
    .line 755
    :goto_11
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 756
    .line 757
    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v3

    .line 761
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 762
    .line 763
    .line 764
    move-result v3

    .line 765
    if-eqz v3, :cond_19

    .line 766
    .line 767
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 768
    .line 769
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 770
    .line 771
    .line 772
    goto/16 :goto_2a

    .line 773
    .line 774
    :cond_19
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 775
    .line 776
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 777
    .line 778
    .line 779
    goto/16 :goto_2a

    .line 780
    .line 781
    :cond_1a
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 782
    .line 783
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v3

    .line 787
    const-string v13, "3"

    .line 788
    .line 789
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    move-result v3

    .line 793
    if-eqz v3, :cond_24

    .line 794
    .line 795
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 796
    .line 797
    const-string v6, "btn_live3"

    .line 798
    .line 799
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v3

    .line 803
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 804
    .line 805
    .line 806
    move-result v3

    .line 807
    if-eqz v3, :cond_1b

    .line 808
    .line 809
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 810
    .line 811
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 812
    .line 813
    .line 814
    goto :goto_12

    .line 815
    :cond_1b
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 816
    .line 817
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 818
    .line 819
    .line 820
    :goto_12
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 821
    .line 822
    const-string v6, "btn_epg3"

    .line 823
    .line 824
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v3

    .line 828
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 829
    .line 830
    .line 831
    move-result v3

    .line 832
    if-eqz v3, :cond_1c

    .line 833
    .line 834
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 835
    .line 836
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 837
    .line 838
    .line 839
    goto :goto_13

    .line 840
    :cond_1c
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 841
    .line 842
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 843
    .line 844
    .line 845
    :goto_13
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 846
    .line 847
    const-string v6, "btn_vod3"

    .line 848
    .line 849
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v3

    .line 853
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 854
    .line 855
    .line 856
    move-result v3

    .line 857
    if-eqz v3, :cond_1d

    .line 858
    .line 859
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 860
    .line 861
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 862
    .line 863
    .line 864
    goto :goto_14

    .line 865
    :cond_1d
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 866
    .line 867
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 868
    .line 869
    .line 870
    :goto_14
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 871
    .line 872
    const-string v6, "btn_series3"

    .line 873
    .line 874
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v3

    .line 878
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 879
    .line 880
    .line 881
    move-result v3

    .line 882
    if-eqz v3, :cond_1e

    .line 883
    .line 884
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 885
    .line 886
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 887
    .line 888
    .line 889
    goto :goto_15

    .line 890
    :cond_1e
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 891
    .line 892
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 893
    .line 894
    .line 895
    :goto_15
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 896
    .line 897
    const-string v6, "btn_radio3"

    .line 898
    .line 899
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v3

    .line 903
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 904
    .line 905
    .line 906
    move-result v3

    .line 907
    if-eqz v3, :cond_1f

    .line 908
    .line 909
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 910
    .line 911
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 912
    .line 913
    .line 914
    goto :goto_16

    .line 915
    :cond_1f
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 916
    .line 917
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 918
    .line 919
    .line 920
    :goto_16
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 921
    .line 922
    const-string v6, "btn_catchup3"

    .line 923
    .line 924
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v3

    .line 928
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 929
    .line 930
    .line 931
    move-result v3

    .line 932
    if-eqz v3, :cond_20

    .line 933
    .line 934
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 935
    .line 936
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 937
    .line 938
    .line 939
    goto :goto_17

    .line 940
    :cond_20
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 941
    .line 942
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 943
    .line 944
    .line 945
    :goto_17
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 946
    .line 947
    invoke-interface {v3, v10, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v3

    .line 951
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 952
    .line 953
    .line 954
    move-result v3

    .line 955
    if-eqz v3, :cond_21

    .line 956
    .line 957
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 958
    .line 959
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 960
    .line 961
    .line 962
    goto :goto_18

    .line 963
    :cond_21
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 964
    .line 965
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 966
    .line 967
    .line 968
    :goto_18
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 969
    .line 970
    invoke-interface {v3, v9, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object v3

    .line 974
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 975
    .line 976
    .line 977
    move-result v3

    .line 978
    if-eqz v3, :cond_22

    .line 979
    .line 980
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 981
    .line 982
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 983
    .line 984
    .line 985
    goto :goto_19

    .line 986
    :cond_22
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 987
    .line 988
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 989
    .line 990
    .line 991
    :goto_19
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 992
    .line 993
    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object v3

    .line 997
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 998
    .line 999
    .line 1000
    move-result v3

    .line 1001
    if-eqz v3, :cond_23

    .line 1002
    .line 1003
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 1004
    .line 1005
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1006
    .line 1007
    .line 1008
    goto/16 :goto_2a

    .line 1009
    .line 1010
    :cond_23
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 1011
    .line 1012
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1013
    .line 1014
    .line 1015
    goto/16 :goto_2a

    .line 1016
    .line 1017
    :cond_24
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1018
    .line 1019
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v3

    .line 1023
    const-string v13, "4"

    .line 1024
    .line 1025
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1026
    .line 1027
    .line 1028
    move-result v3

    .line 1029
    if-eqz v3, :cond_2e

    .line 1030
    .line 1031
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1032
    .line 1033
    const-string v6, "btn_live4"

    .line 1034
    .line 1035
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v3

    .line 1039
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1040
    .line 1041
    .line 1042
    move-result v3

    .line 1043
    if-eqz v3, :cond_25

    .line 1044
    .line 1045
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 1046
    .line 1047
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1048
    .line 1049
    .line 1050
    goto :goto_1a

    .line 1051
    :cond_25
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 1052
    .line 1053
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1054
    .line 1055
    .line 1056
    :goto_1a
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1057
    .line 1058
    const-string v6, "btn_epg4"

    .line 1059
    .line 1060
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v3

    .line 1064
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1065
    .line 1066
    .line 1067
    move-result v3

    .line 1068
    if-eqz v3, :cond_26

    .line 1069
    .line 1070
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 1071
    .line 1072
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1073
    .line 1074
    .line 1075
    goto :goto_1b

    .line 1076
    :cond_26
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 1077
    .line 1078
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1079
    .line 1080
    .line 1081
    :goto_1b
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1082
    .line 1083
    const-string v6, "btn_vod4"

    .line 1084
    .line 1085
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v3

    .line 1089
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1090
    .line 1091
    .line 1092
    move-result v3

    .line 1093
    if-eqz v3, :cond_27

    .line 1094
    .line 1095
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 1096
    .line 1097
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1098
    .line 1099
    .line 1100
    goto :goto_1c

    .line 1101
    :cond_27
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 1102
    .line 1103
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1104
    .line 1105
    .line 1106
    :goto_1c
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1107
    .line 1108
    const-string v6, "btn_series4"

    .line 1109
    .line 1110
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v3

    .line 1114
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1115
    .line 1116
    .line 1117
    move-result v3

    .line 1118
    if-eqz v3, :cond_28

    .line 1119
    .line 1120
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 1121
    .line 1122
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1123
    .line 1124
    .line 1125
    goto :goto_1d

    .line 1126
    :cond_28
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 1127
    .line 1128
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1129
    .line 1130
    .line 1131
    :goto_1d
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1132
    .line 1133
    const-string v6, "btn_radio4"

    .line 1134
    .line 1135
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v3

    .line 1139
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1140
    .line 1141
    .line 1142
    move-result v3

    .line 1143
    if-eqz v3, :cond_29

    .line 1144
    .line 1145
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 1146
    .line 1147
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    .line 1149
    .line 1150
    goto :goto_1e

    .line 1151
    :cond_29
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 1152
    .line 1153
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1154
    .line 1155
    .line 1156
    :goto_1e
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1157
    .line 1158
    const-string v6, "btn_catchup4"

    .line 1159
    .line 1160
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v3

    .line 1164
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1165
    .line 1166
    .line 1167
    move-result v3

    .line 1168
    if-eqz v3, :cond_2a

    .line 1169
    .line 1170
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 1171
    .line 1172
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1173
    .line 1174
    .line 1175
    goto :goto_1f

    .line 1176
    :cond_2a
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 1177
    .line 1178
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1179
    .line 1180
    .line 1181
    :goto_1f
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1182
    .line 1183
    invoke-interface {v3, v10, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v3

    .line 1187
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1188
    .line 1189
    .line 1190
    move-result v3

    .line 1191
    if-eqz v3, :cond_2b

    .line 1192
    .line 1193
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 1194
    .line 1195
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1196
    .line 1197
    .line 1198
    goto :goto_20

    .line 1199
    :cond_2b
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 1200
    .line 1201
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1202
    .line 1203
    .line 1204
    :goto_20
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1205
    .line 1206
    invoke-interface {v3, v9, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v3

    .line 1210
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1211
    .line 1212
    .line 1213
    move-result v3

    .line 1214
    if-eqz v3, :cond_2c

    .line 1215
    .line 1216
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 1217
    .line 1218
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    .line 1220
    .line 1221
    goto :goto_21

    .line 1222
    :cond_2c
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 1223
    .line 1224
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1225
    .line 1226
    .line 1227
    :goto_21
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1228
    .line 1229
    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v3

    .line 1233
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1234
    .line 1235
    .line 1236
    move-result v3

    .line 1237
    if-eqz v3, :cond_2d

    .line 1238
    .line 1239
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 1240
    .line 1241
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1242
    .line 1243
    .line 1244
    goto/16 :goto_2a

    .line 1245
    .line 1246
    :cond_2d
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 1247
    .line 1248
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1249
    .line 1250
    .line 1251
    goto/16 :goto_2a

    .line 1252
    .line 1253
    :cond_2e
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1254
    .line 1255
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v3

    .line 1259
    const-string v6, "5"

    .line 1260
    .line 1261
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1262
    .line 1263
    .line 1264
    move-result v3

    .line 1265
    if-eqz v3, :cond_38

    .line 1266
    .line 1267
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1268
    .line 1269
    const-string v6, "btn_live5"

    .line 1270
    .line 1271
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v3

    .line 1275
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1276
    .line 1277
    .line 1278
    move-result v3

    .line 1279
    if-eqz v3, :cond_2f

    .line 1280
    .line 1281
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 1282
    .line 1283
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    .line 1285
    .line 1286
    goto :goto_22

    .line 1287
    :cond_2f
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 1288
    .line 1289
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1290
    .line 1291
    .line 1292
    :goto_22
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1293
    .line 1294
    const-string v6, "btn_epg5"

    .line 1295
    .line 1296
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v3

    .line 1300
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1301
    .line 1302
    .line 1303
    move-result v3

    .line 1304
    if-eqz v3, :cond_30

    .line 1305
    .line 1306
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 1307
    .line 1308
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1309
    .line 1310
    .line 1311
    goto :goto_23

    .line 1312
    :cond_30
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 1313
    .line 1314
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1315
    .line 1316
    .line 1317
    :goto_23
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1318
    .line 1319
    const-string v6, "btn_vod5"

    .line 1320
    .line 1321
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v3

    .line 1325
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1326
    .line 1327
    .line 1328
    move-result v3

    .line 1329
    if-eqz v3, :cond_31

    .line 1330
    .line 1331
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 1332
    .line 1333
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1334
    .line 1335
    .line 1336
    goto :goto_24

    .line 1337
    :cond_31
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 1338
    .line 1339
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1340
    .line 1341
    .line 1342
    :goto_24
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1343
    .line 1344
    const-string v6, "btn_series5"

    .line 1345
    .line 1346
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v3

    .line 1350
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1351
    .line 1352
    .line 1353
    move-result v3

    .line 1354
    if-eqz v3, :cond_32

    .line 1355
    .line 1356
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 1357
    .line 1358
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1359
    .line 1360
    .line 1361
    goto :goto_25

    .line 1362
    :cond_32
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 1363
    .line 1364
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1365
    .line 1366
    .line 1367
    :goto_25
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1368
    .line 1369
    const-string v6, "btn_radio5"

    .line 1370
    .line 1371
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v3

    .line 1375
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1376
    .line 1377
    .line 1378
    move-result v3

    .line 1379
    if-eqz v3, :cond_33

    .line 1380
    .line 1381
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 1382
    .line 1383
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1384
    .line 1385
    .line 1386
    goto :goto_26

    .line 1387
    :cond_33
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 1388
    .line 1389
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1390
    .line 1391
    .line 1392
    :goto_26
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1393
    .line 1394
    const-string v6, "btn_catchup5"

    .line 1395
    .line 1396
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v3

    .line 1400
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1401
    .line 1402
    .line 1403
    move-result v3

    .line 1404
    if-eqz v3, :cond_34

    .line 1405
    .line 1406
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 1407
    .line 1408
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1409
    .line 1410
    .line 1411
    goto :goto_27

    .line 1412
    :cond_34
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 1413
    .line 1414
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1415
    .line 1416
    .line 1417
    :goto_27
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1418
    .line 1419
    invoke-interface {v3, v10, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v3

    .line 1423
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1424
    .line 1425
    .line 1426
    move-result v3

    .line 1427
    if-eqz v3, :cond_35

    .line 1428
    .line 1429
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 1430
    .line 1431
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1432
    .line 1433
    .line 1434
    goto :goto_28

    .line 1435
    :cond_35
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 1436
    .line 1437
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1438
    .line 1439
    .line 1440
    :goto_28
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1441
    .line 1442
    invoke-interface {v3, v9, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v3

    .line 1446
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1447
    .line 1448
    .line 1449
    move-result v3

    .line 1450
    if-eqz v3, :cond_36

    .line 1451
    .line 1452
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 1453
    .line 1454
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1455
    .line 1456
    .line 1457
    goto :goto_29

    .line 1458
    :cond_36
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 1459
    .line 1460
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1461
    .line 1462
    .line 1463
    :goto_29
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1464
    .line 1465
    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v3

    .line 1469
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1470
    .line 1471
    .line 1472
    move-result v3

    .line 1473
    if-eqz v3, :cond_37

    .line 1474
    .line 1475
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 1476
    .line 1477
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1478
    .line 1479
    .line 1480
    goto :goto_2a

    .line 1481
    :cond_37
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 1482
    .line 1483
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1484
    .line 1485
    .line 1486
    :cond_38
    :goto_2a
    invoke-static {v0, v1, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1487
    .line 1488
    .line 1489
    move-result v0

    .line 1490
    if-eqz v0, :cond_39

    .line 1491
    .line 1492
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->s0:Landroid/widget/TextView;

    .line 1493
    .line 1494
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1495
    .line 1496
    .line 1497
    new-instance v0, Lb7/s;

    .line 1498
    .line 1499
    invoke-direct {v0, p0, v7}, Lb7/s;-><init>(Lpe/hf/black20/CategoriesActivity;Ljava/lang/Object;)V

    .line 1500
    .line 1501
    .line 1502
    new-array v1, v5, [Ljava/lang/Void;

    .line 1503
    .line 1504
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1505
    .line 1506
    .line 1507
    :cond_39
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 1508
    .line 1509
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1510
    .line 1511
    .line 1512
    return-void
.end method

.method public final e(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "XCIPTV_TAG"

    .line 2
    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
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
    iget-object p2, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iput-object p2, p0, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    const-string v0, "external_ip"

    .line 33
    .line 34
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

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

.method public final g(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "XCIPTV_TAG"

    .line 6
    .line 7
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->E0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v0, "XCIPTV_TAG"

    .line 12
    .line 13
    const-string v1, "--ADs---------AdMob"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->z0:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lpe/hf/black20/CategoriesActivity;->C0:Lcom/google/android/gms/ads/AdView;

    .line 30
    .line 31
    sget-object v1, Lf3/g;->h:Lf3/g;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lf3/i;->setAdSize(Lf3/g;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->C0:Lcom/google/android/gms/ads/AdView;

    .line 37
    .line 38
    iget-object v1, p0, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 39
    .line 40
    const v2, 0x7f1301af

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lf3/i;->setAdUnitId(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->z0:Landroid/widget/FrameLayout;

    .line 51
    .line 52
    iget-object v1, p0, Lpe/hf/black20/CategoriesActivity;->C0:Lcom/google/android/gms/ads/AdView;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lf3/e;

    .line 58
    .line 59
    const/4 v1, 0x3

    .line 60
    invoke-direct {v0, v1}, Lc1/d;-><init>(I)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lf3/f;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Lf3/f;-><init>(Lf3/e;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->C0:Lcom/google/android/gms/ads/AdView;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lf3/i;->b(Lf3/f;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "AdMob_enabled"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "yes"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->C0:Lcom/google/android/gms/ads/AdView;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Lf3/i;->c()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

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
    iget-object v3, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

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
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

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
    goto :goto_0

    .line 109
    :cond_3
    const-string v0, "otr"

    .line 110
    .line 111
    invoke-static {v2, v1, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    new-instance v0, Landroid/content/Intent;

    .line 118
    .line 119
    const-class v1, Lpe/hf/black20/fastogt/updatecontent/OTRUpdateContents;

    .line 120
    .line 121
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    :goto_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 6

    .line 1
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

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
    new-instance v4, Lb7/r;

    .line 74
    .line 75
    const/4 v5, 0x1

    .line 76
    invoke-direct {v4, p0, v2, v5}, Lb7/r;-><init>(Lpe/hf/black20/CategoriesActivity;Landroid/app/AlertDialog;I)V

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
    new-instance v0, Lb7/r;

    .line 102
    .line 103
    const/4 v3, 0x2

    .line 104
    invoke-direct {v0, p0, v2, v3}, Lb7/r;-><init>(Lpe/hf/black20/CategoriesActivity;Landroid/app/AlertDialog;I)V

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

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 20

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    .line 16
    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 17
    .line 18
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 21
    .line 22
    .line 23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v3, 0x1e

    .line 26
    .line 27
    if-lt v2, v3, :cond_0

    .line 28
    .line 29
    invoke-static/range {p0 .. p0}, LE1/a;->e(Lpe/hf/black20/CategoriesActivity;)Landroid/view/Display;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 60
    .line 61
    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    .line 62
    .line 63
    mul-float v4, v4, v5

    .line 64
    .line 65
    iput v4, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 66
    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "ORT_THEME"

    .line 83
    .line 84
    const-string v4, "theme_d"

    .line 85
    .line 86
    invoke-virtual {v0, v1, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v1, "theme_d"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    const v1, 0x7f0e0024

    .line 97
    .line 98
    .line 99
    if-eqz v0, :cond_1

    .line 100
    .line 101
    invoke-virtual {v9, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    const-string v0, "ORT_THEME"

    .line 106
    .line 107
    const-string v4, "theme_d"

    .line 108
    .line 109
    const-string v5, "theme_1"

    .line 110
    .line 111
    invoke-static {v0, v4, v5}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    const v0, 0x7f0e0025

    .line 118
    .line 119
    .line 120
    invoke-virtual {v9, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    const-string v0, "ORT_THEME"

    .line 125
    .line 126
    const-string v4, "theme_d"

    .line 127
    .line 128
    const-string v5, "theme_2"

    .line 129
    .line 130
    invoke-static {v0, v4, v5}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_3

    .line 135
    .line 136
    const v0, 0x7f0e0026

    .line 137
    .line 138
    .line 139
    invoke-virtual {v9, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    const-string v0, "ORT_THEME"

    .line 144
    .line 145
    const-string v4, "theme_d"

    .line 146
    .line 147
    const-string v5, "theme_3"

    .line 148
    .line 149
    invoke-static {v0, v4, v5}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    const v0, 0x7f0e0027

    .line 156
    .line 157
    .line 158
    invoke-virtual {v9, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_4
    invoke-virtual {v9, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 163
    .line 164
    .line 165
    :goto_1
    const/16 v0, 0x1c

    .line 166
    .line 167
    if-lt v2, v0, :cond_5

    .line 168
    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {v0}, LN/d0;->s(Landroid/view/WindowManager$LayoutParams;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 185
    .line 186
    .line 187
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    .line 188
    .line 189
    const-string v1, "finish_alert"

    .line 190
    .line 191
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    new-instance v1, Lb7/q;

    .line 195
    .line 196
    const/4 v4, 0x1

    .line 197
    invoke-direct {v1, v9, v4}, Lb7/q;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 198
    .line 199
    .line 200
    iput-object v1, v9, Lpe/hf/black20/CategoriesActivity;->A0:Lb7/q;

    .line 201
    .line 202
    const/16 v5, 0x21

    .line 203
    .line 204
    const/4 v6, 0x4

    .line 205
    if-lt v2, v5, :cond_6

    .line 206
    .line 207
    iget-object v5, v9, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 208
    .line 209
    invoke-static {v5, v1, v0, v6}, LU4/a;->f(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_6
    invoke-virtual {v9, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    .line 215
    .line 216
    :goto_2
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 217
    .line 218
    const-string v1, "pe.hf.black20"

    .line 219
    .line 220
    const/4 v10, 0x0

    .line 221
    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 226
    .line 227
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    sput-object v0, Lpe/hf/black20/CategoriesActivity;->H0:Ljava/lang/String;

    .line 236
    .line 237
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 238
    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 244
    .line 245
    const-string v1, "bi"

    .line 246
    .line 247
    sget-object v5, Lpe/hf/black20/CategoriesActivity;->H0:Ljava/lang/String;

    .line 248
    .line 249
    invoke-static {v5}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 254
    .line 255
    .line 256
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 257
    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 259
    .line 260
    .line 261
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 262
    .line 263
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 264
    .line 265
    .line 266
    new-instance v0, Lc7/a;

    .line 267
    .line 268
    iget-object v1, v9, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 269
    .line 270
    invoke-direct {v0, v1, v10}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 271
    .line 272
    .line 273
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->J:Lc7/a;

    .line 274
    .line 275
    new-instance v0, Lc7/b;

    .line 276
    .line 277
    iget-object v1, v9, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 278
    .line 279
    invoke-direct {v0, v1, v4}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 280
    .line 281
    .line 282
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 283
    .line 284
    const-string v1, "xciptv_profile"

    .line 285
    .line 286
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    const/4 v11, 0x0

    .line 291
    if-eqz v0, :cond_7

    .line 292
    .line 293
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    const-string v1, "ORT_PROFILE"

    .line 298
    .line 299
    iget-object v5, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 300
    .line 301
    const-string v7, "xciptv_profile"

    .line 302
    .line 303
    invoke-interface {v5, v7, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    invoke-virtual {v0, v1, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 308
    .line 309
    .line 310
    :cond_7
    new-instance v0, Lc7/d;

    .line 311
    .line 312
    iget-object v1, v9, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 313
    .line 314
    invoke-direct {v0, v1}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 315
    .line 316
    .line 317
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->L:Lc7/d;

    .line 318
    .line 319
    new-instance v0, Lc7/b;

    .line 320
    .line 321
    iget-object v1, v9, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 322
    .line 323
    invoke-direct {v0, v1, v10}, Lc7/b;-><init>(Landroid/content/Context;I)V

    .line 324
    .line 325
    .line 326
    const v0, 0x7f0b0294

    .line 327
    .line 328
    .line 329
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    check-cast v0, Landroid/widget/ImageView;

    .line 334
    .line 335
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->r0:Landroid/widget/ImageView;

    .line 336
    .line 337
    const/16 v1, 0x8

    .line 338
    .line 339
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    .line 341
    .line 342
    const v0, 0x7f0b02be

    .line 343
    .line 344
    .line 345
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    check-cast v0, Landroid/widget/FrameLayout;

    .line 350
    .line 351
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->z0:Landroid/widget/FrameLayout;

    .line 352
    .line 353
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 354
    .line 355
    .line 356
    const v0, 0x7f0b0124

    .line 357
    .line 358
    .line 359
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    check-cast v0, Landroid/widget/ImageButton;

    .line 364
    .line 365
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->e0:Landroid/widget/ImageButton;

    .line 366
    .line 367
    const v0, 0x7f0b00ca

    .line 368
    .line 369
    .line 370
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    check-cast v0, Landroid/widget/ImageButton;

    .line 375
    .line 376
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 377
    .line 378
    const v0, 0x7f0b0132

    .line 379
    .line 380
    .line 381
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    check-cast v0, Landroid/widget/ImageButton;

    .line 386
    .line 387
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 388
    .line 389
    const v0, 0x7f0b00ec

    .line 390
    .line 391
    .line 392
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    check-cast v0, Landroid/widget/ImageButton;

    .line 397
    .line 398
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 399
    .line 400
    const v0, 0x7f0b0123

    .line 401
    .line 402
    .line 403
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    check-cast v0, Landroid/widget/ImageButton;

    .line 408
    .line 409
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 410
    .line 411
    const v0, 0x7f0b0111

    .line 412
    .line 413
    .line 414
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    check-cast v0, Landroid/widget/ImageButton;

    .line 419
    .line 420
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 421
    .line 422
    const v0, 0x7f0b0139

    .line 423
    .line 424
    .line 425
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    check-cast v0, Landroid/widget/ImageButton;

    .line 430
    .line 431
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 432
    .line 433
    const v0, 0x7f0b009e

    .line 434
    .line 435
    .line 436
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    check-cast v0, Landroid/widget/ImageButton;

    .line 441
    .line 442
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 443
    .line 444
    const v0, 0x7f0b00ee

    .line 445
    .line 446
    .line 447
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    check-cast v0, Landroid/widget/ImageButton;

    .line 452
    .line 453
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 454
    .line 455
    const v0, 0x7f0b00d6

    .line 456
    .line 457
    .line 458
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    check-cast v0, Landroid/widget/ImageButton;

    .line 463
    .line 464
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 465
    .line 466
    const v0, 0x7f0b0112

    .line 467
    .line 468
    .line 469
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    check-cast v0, Landroid/widget/ImageButton;

    .line 474
    .line 475
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->l0:Landroid/widget/ImageButton;

    .line 476
    .line 477
    const v0, 0x7f0b00f1

    .line 478
    .line 479
    .line 480
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    check-cast v0, Landroid/widget/ImageButton;

    .line 485
    .line 486
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->k0:Landroid/widget/ImageButton;

    .line 487
    .line 488
    const v0, 0x7f0b0133

    .line 489
    .line 490
    .line 491
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    check-cast v0, Landroid/widget/ImageButton;

    .line 496
    .line 497
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->m0:Landroid/widget/ImageButton;

    .line 498
    .line 499
    const v0, 0x7f0b010f

    .line 500
    .line 501
    .line 502
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    check-cast v0, Landroid/widget/ImageButton;

    .line 507
    .line 508
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->o0:Landroid/widget/ImageButton;

    .line 509
    .line 510
    const v0, 0x7f0b011a

    .line 511
    .line 512
    .line 513
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    check-cast v0, Landroid/widget/ImageButton;

    .line 518
    .line 519
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->p0:Landroid/widget/ImageButton;

    .line 520
    .line 521
    const v0, 0x7f0b00aa

    .line 522
    .line 523
    .line 524
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    check-cast v0, Landroid/widget/ImageButton;

    .line 529
    .line 530
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->n0:Landroid/widget/ImageButton;

    .line 531
    .line 532
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 533
    .line 534
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 535
    .line 536
    .line 537
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 538
    .line 539
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 540
    .line 541
    .line 542
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 543
    .line 544
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 545
    .line 546
    .line 547
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 548
    .line 549
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 550
    .line 551
    .line 552
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 553
    .line 554
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 555
    .line 556
    .line 557
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 558
    .line 559
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 560
    .line 561
    .line 562
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 563
    .line 564
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 565
    .line 566
    .line 567
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 568
    .line 569
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 570
    .line 571
    .line 572
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 573
    .line 574
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 575
    .line 576
    .line 577
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->n0:Landroid/widget/ImageButton;

    .line 578
    .line 579
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 580
    .line 581
    .line 582
    const v0, 0x7f0b053b

    .line 583
    .line 584
    .line 585
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    check-cast v0, Landroid/widget/TextView;

    .line 590
    .line 591
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->s0:Landroid/widget/TextView;

    .line 592
    .line 593
    const v0, 0x7f0b0525

    .line 594
    .line 595
    .line 596
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    check-cast v0, Landroid/widget/TextView;

    .line 601
    .line 602
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->t0:Landroid/widget/TextView;

    .line 603
    .line 604
    const v0, 0x7f0b0580

    .line 605
    .line 606
    .line 607
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    check-cast v0, Landroid/widget/TextView;

    .line 612
    .line 613
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->u0:Landroid/widget/TextView;

    .line 614
    .line 615
    const v0, 0x7f0b02d7

    .line 616
    .line 617
    .line 618
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    check-cast v0, Landroid/widget/FrameLayout;

    .line 623
    .line 624
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->q0:Landroid/widget/FrameLayout;

    .line 625
    .line 626
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 627
    .line 628
    const-string v5, "time_format"

    .line 629
    .line 630
    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    if-eqz v0, :cond_8

    .line 635
    .line 636
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 637
    .line 638
    const-string v5, "time_format"

    .line 639
    .line 640
    invoke-interface {v0, v5, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    const-string v5, "24"

    .line 645
    .line 646
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    move-result v0

    .line 650
    if-eqz v0, :cond_8

    .line 651
    .line 652
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    const-string v5, "ORT_TIME_FORMAT"

    .line 657
    .line 658
    const-string v7, "24"

    .line 659
    .line 660
    invoke-virtual {v0, v5, v7}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 661
    .line 662
    .line 663
    :cond_8
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 664
    .line 665
    const-string v5, "btn_pr"

    .line 666
    .line 667
    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 668
    .line 669
    .line 670
    move-result v0

    .line 671
    if-eqz v0, :cond_9

    .line 672
    .line 673
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 674
    .line 675
    const-string v5, "btn_pr"

    .line 676
    .line 677
    invoke-interface {v0, v5, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    const-string v5, "no"

    .line 682
    .line 683
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    move-result v0

    .line 687
    if-eqz v0, :cond_9

    .line 688
    .line 689
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->o0:Landroid/widget/ImageButton;

    .line 690
    .line 691
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 692
    .line 693
    .line 694
    :cond_9
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 695
    .line 696
    const-string v5, "btn_rec"

    .line 697
    .line 698
    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 699
    .line 700
    .line 701
    move-result v0

    .line 702
    if-eqz v0, :cond_a

    .line 703
    .line 704
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 705
    .line 706
    const-string v5, "btn_rec"

    .line 707
    .line 708
    invoke-interface {v0, v5, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    const-string v5, "no"

    .line 713
    .line 714
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 715
    .line 716
    .line 717
    move-result v0

    .line 718
    if-eqz v0, :cond_a

    .line 719
    .line 720
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->l0:Landroid/widget/ImageButton;

    .line 721
    .line 722
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 723
    .line 724
    .line 725
    :cond_a
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 726
    .line 727
    const-string v5, "hide_recording"

    .line 728
    .line 729
    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 730
    .line 731
    .line 732
    move-result v0

    .line 733
    if-eqz v0, :cond_b

    .line 734
    .line 735
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 736
    .line 737
    const-string v5, "hide_recording"

    .line 738
    .line 739
    invoke-interface {v0, v5, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    const-string v5, "yes"

    .line 744
    .line 745
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    move-result v0

    .line 749
    if-eqz v0, :cond_b

    .line 750
    .line 751
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->l0:Landroid/widget/ImageButton;

    .line 752
    .line 753
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 754
    .line 755
    .line 756
    :cond_b
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 757
    .line 758
    const-string v5, "btn_noti"

    .line 759
    .line 760
    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 761
    .line 762
    .line 763
    move-result v0

    .line 764
    if-eqz v0, :cond_c

    .line 765
    .line 766
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 767
    .line 768
    const-string v5, "btn_noti"

    .line 769
    .line 770
    invoke-interface {v0, v5, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    const-string v5, "no"

    .line 775
    .line 776
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 777
    .line 778
    .line 779
    move-result v0

    .line 780
    if-eqz v0, :cond_c

    .line 781
    .line 782
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->k0:Landroid/widget/ImageButton;

    .line 783
    .line 784
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 785
    .line 786
    .line 787
    :cond_c
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 788
    .line 789
    const-string v5, "btn_update"

    .line 790
    .line 791
    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 792
    .line 793
    .line 794
    move-result v0

    .line 795
    if-eqz v0, :cond_d

    .line 796
    .line 797
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 798
    .line 799
    const-string v5, "btn_update"

    .line 800
    .line 801
    invoke-interface {v0, v5, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    const-string v5, "no"

    .line 806
    .line 807
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 808
    .line 809
    .line 810
    move-result v0

    .line 811
    if-eqz v0, :cond_d

    .line 812
    .line 813
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->m0:Landroid/widget/ImageButton;

    .line 814
    .line 815
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 816
    .line 817
    .line 818
    :cond_d
    const-string v0, "ORT_WHICH_PANEL"

    .line 819
    .line 820
    const-string v5, "xtreamcodes"

    .line 821
    .line 822
    const-string v7, "m3u"

    .line 823
    .line 824
    invoke-static {v0, v5, v7}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 825
    .line 826
    .line 827
    move-result v0

    .line 828
    if-nez v0, :cond_14

    .line 829
    .line 830
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->J:Lc7/a;

    .line 831
    .line 832
    const-string v5, "ORT_PROFILE"

    .line 833
    .line 834
    const-string v7, "Default (XC)"

    .line 835
    .line 836
    invoke-static {v5, v7, v0}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->K:Lh7/i;

    .line 841
    .line 842
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    const-string v5, "ORT_PROFILE_ID"

    .line 847
    .line 848
    iget-object v7, v9, Lpe/hf/black20/CategoriesActivity;->K:Lh7/i;

    .line 849
    .line 850
    iget-object v7, v7, Lh7/i;->a:Ljava/lang/String;

    .line 851
    .line 852
    invoke-virtual {v0, v5, v7}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 853
    .line 854
    .line 855
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    const-string v5, "ORT_PROFILE_SERVER"

    .line 860
    .line 861
    iget-object v7, v9, Lpe/hf/black20/CategoriesActivity;->K:Lh7/i;

    .line 862
    .line 863
    iget-object v7, v7, Lh7/i;->e:Ljava/lang/String;

    .line 864
    .line 865
    invoke-virtual {v0, v5, v7}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 866
    .line 867
    .line 868
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    const-string v5, "ORT_PROFILE_USERNAME"

    .line 873
    .line 874
    iget-object v7, v9, Lpe/hf/black20/CategoriesActivity;->K:Lh7/i;

    .line 875
    .line 876
    iget-object v7, v7, Lh7/i;->c:Ljava/lang/String;

    .line 877
    .line 878
    invoke-virtual {v0, v5, v7}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 879
    .line 880
    .line 881
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    const-string v5, "ORT_PROFILE_PASSWORD"

    .line 886
    .line 887
    iget-object v7, v9, Lpe/hf/black20/CategoriesActivity;->K:Lh7/i;

    .line 888
    .line 889
    iget-object v7, v7, Lh7/i;->d:Ljava/lang/String;

    .line 890
    .line 891
    invoke-virtual {v0, v5, v7}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 892
    .line 893
    .line 894
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->K:Lh7/i;

    .line 895
    .line 896
    iget-object v0, v0, Lh7/i;->e:Ljava/lang/String;

    .line 897
    .line 898
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    iget-object v5, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 903
    .line 904
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 905
    .line 906
    .line 907
    move-result-object v5

    .line 908
    iput-object v5, v9, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 909
    .line 910
    iget-object v5, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 911
    .line 912
    const-string v7, "XCIPTV_WHICH_PORTAL_SELECTED"

    .line 913
    .line 914
    invoke-interface {v5, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 915
    .line 916
    .line 917
    move-result v5

    .line 918
    if-eqz v5, :cond_12

    .line 919
    .line 920
    iget-object v5, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 921
    .line 922
    const-string v7, "portal"

    .line 923
    .line 924
    invoke-interface {v5, v7, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v5

    .line 928
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 929
    .line 930
    .line 931
    move-result v5

    .line 932
    if-eqz v5, :cond_e

    .line 933
    .line 934
    iget-object v5, v9, Lpe/hf/black20/CategoriesActivity;->K:Lh7/i;

    .line 935
    .line 936
    iget-object v5, v5, Lh7/i;->b:Ljava/lang/String;

    .line 937
    .line 938
    const-string v7, "PANEL 1"

    .line 939
    .line 940
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 941
    .line 942
    .line 943
    move-result v5

    .line 944
    if-eqz v5, :cond_e

    .line 945
    .line 946
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 947
    .line 948
    const-string v5, "XCIPTV_WHICH_PORTAL_SELECTED"

    .line 949
    .line 950
    const-string v7, "1"

    .line 951
    .line 952
    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 953
    .line 954
    .line 955
    goto/16 :goto_3

    .line 956
    .line 957
    :cond_e
    iget-object v5, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 958
    .line 959
    const-string v7, "portal2"

    .line 960
    .line 961
    invoke-interface {v5, v7, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v5

    .line 965
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 966
    .line 967
    .line 968
    move-result v5

    .line 969
    if-eqz v5, :cond_f

    .line 970
    .line 971
    iget-object v5, v9, Lpe/hf/black20/CategoriesActivity;->K:Lh7/i;

    .line 972
    .line 973
    iget-object v5, v5, Lh7/i;->b:Ljava/lang/String;

    .line 974
    .line 975
    const-string v7, "PANEL 2"

    .line 976
    .line 977
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 978
    .line 979
    .line 980
    move-result v5

    .line 981
    if-eqz v5, :cond_f

    .line 982
    .line 983
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 984
    .line 985
    const-string v5, "XCIPTV_WHICH_PORTAL_SELECTED"

    .line 986
    .line 987
    const-string v7, "2"

    .line 988
    .line 989
    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 990
    .line 991
    .line 992
    goto/16 :goto_3

    .line 993
    .line 994
    :cond_f
    iget-object v5, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 995
    .line 996
    const-string v7, "portal3"

    .line 997
    .line 998
    invoke-interface {v5, v7, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v5

    .line 1002
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1003
    .line 1004
    .line 1005
    move-result v5

    .line 1006
    if-eqz v5, :cond_10

    .line 1007
    .line 1008
    iget-object v5, v9, Lpe/hf/black20/CategoriesActivity;->K:Lh7/i;

    .line 1009
    .line 1010
    iget-object v5, v5, Lh7/i;->b:Ljava/lang/String;

    .line 1011
    .line 1012
    const-string v7, "PANEL 3"

    .line 1013
    .line 1014
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v5

    .line 1018
    if-eqz v5, :cond_10

    .line 1019
    .line 1020
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 1021
    .line 1022
    const-string v5, "XCIPTV_WHICH_PORTAL_SELECTED"

    .line 1023
    .line 1024
    const-string v7, "3"

    .line 1025
    .line 1026
    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1027
    .line 1028
    .line 1029
    goto :goto_3

    .line 1030
    :cond_10
    iget-object v5, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1031
    .line 1032
    const-string v7, "portal4"

    .line 1033
    .line 1034
    invoke-interface {v5, v7, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v5

    .line 1038
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1039
    .line 1040
    .line 1041
    move-result v5

    .line 1042
    if-eqz v5, :cond_11

    .line 1043
    .line 1044
    iget-object v5, v9, Lpe/hf/black20/CategoriesActivity;->K:Lh7/i;

    .line 1045
    .line 1046
    iget-object v5, v5, Lh7/i;->b:Ljava/lang/String;

    .line 1047
    .line 1048
    const-string v7, "PANEL 4"

    .line 1049
    .line 1050
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1051
    .line 1052
    .line 1053
    move-result v5

    .line 1054
    if-eqz v5, :cond_11

    .line 1055
    .line 1056
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 1057
    .line 1058
    const-string v5, "XCIPTV_WHICH_PORTAL_SELECTED"

    .line 1059
    .line 1060
    const-string v7, "4"

    .line 1061
    .line 1062
    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1063
    .line 1064
    .line 1065
    goto :goto_3

    .line 1066
    :cond_11
    iget-object v5, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 1067
    .line 1068
    const-string v7, "portal5"

    .line 1069
    .line 1070
    invoke-interface {v5, v7, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v5

    .line 1074
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1075
    .line 1076
    .line 1077
    move-result v0

    .line 1078
    if-eqz v0, :cond_13

    .line 1079
    .line 1080
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->K:Lh7/i;

    .line 1081
    .line 1082
    iget-object v0, v0, Lh7/i;->b:Ljava/lang/String;

    .line 1083
    .line 1084
    const-string v5, "PANEL 5"

    .line 1085
    .line 1086
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1087
    .line 1088
    .line 1089
    move-result v0

    .line 1090
    if-eqz v0, :cond_13

    .line 1091
    .line 1092
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 1093
    .line 1094
    const-string v5, "XCIPTV_WHICH_PORTAL_SELECTED"

    .line 1095
    .line 1096
    const-string v7, "5"

    .line 1097
    .line 1098
    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1099
    .line 1100
    .line 1101
    goto :goto_3

    .line 1102
    :cond_12
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 1103
    .line 1104
    const-string v5, "XCIPTV_WHICH_PORTAL_SELECTED"

    .line 1105
    .line 1106
    const-string v7, "1"

    .line 1107
    .line 1108
    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1109
    .line 1110
    .line 1111
    :cond_13
    :goto_3
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 1112
    .line 1113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1114
    .line 1115
    .line 1116
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 1117
    .line 1118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1119
    .line 1120
    .line 1121
    :cond_14
    const v0, 0x7f0b043a

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v0

    .line 1128
    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 1129
    .line 1130
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 1131
    .line 1132
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1133
    .line 1134
    .line 1135
    if-lt v2, v3, :cond_15

    .line 1136
    .line 1137
    invoke-static/range {p0 .. p0}, LE1/a;->e(Lpe/hf/black20/CategoriesActivity;)Landroid/view/Display;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v2

    .line 1141
    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1142
    .line 1143
    .line 1144
    goto :goto_4

    .line 1145
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v2

    .line 1149
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v2

    .line 1153
    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v2

    .line 1160
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v2

    .line 1164
    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1165
    .line 1166
    .line 1167
    :goto_4
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1168
    .line 1169
    sput v2, Lpe/hf/black20/CategoriesActivity;->J0:I

    .line 1170
    .line 1171
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1172
    .line 1173
    sput v2, Lpe/hf/black20/CategoriesActivity;->K0:I

    .line 1174
    .line 1175
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1176
    .line 1177
    div-int/lit16 v2, v2, 0xa0

    .line 1178
    .line 1179
    sput v2, Lpe/hf/black20/CategoriesActivity;->N0:I

    .line 1180
    .line 1181
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v2

    .line 1185
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v2

    .line 1189
    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1190
    .line 1191
    .line 1192
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1193
    .line 1194
    sput v2, Lpe/hf/black20/CategoriesActivity;->L0:I

    .line 1195
    .line 1196
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1197
    .line 1198
    sput v0, Lpe/hf/black20/CategoriesActivity;->M0:I

    .line 1199
    .line 1200
    const v0, 0x7f0b0297

    .line 1201
    .line 1202
    .line 1203
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v0

    .line 1207
    check-cast v0, Landroid/widget/ImageView;

    .line 1208
    .line 1209
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->B0:Landroid/widget/ImageView;

    .line 1210
    .line 1211
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v0

    .line 1215
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1216
    .line 1217
    sget v2, Lpe/hf/black20/CategoriesActivity;->J0:I

    .line 1218
    .line 1219
    const/4 v3, 0x3

    .line 1220
    div-int/2addr v2, v3

    .line 1221
    int-to-double v7, v2

    .line 1222
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 1223
    .line 1224
    mul-double v14, v7, v12

    .line 1225
    .line 1226
    double-to-int v2, v14

    .line 1227
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1228
    .line 1229
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1230
    .line 1231
    const-wide v14, 0x3fbeb851eb851eb8L    # 0.12

    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    mul-double v7, v7, v14

    .line 1237
    .line 1238
    double-to-int v2, v7

    .line 1239
    invoke-virtual {v0, v10, v2, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1240
    .line 1241
    .line 1242
    iget-object v2, v9, Lpe/hf/black20/CategoriesActivity;->B0:Landroid/widget/ImageView;

    .line 1243
    .line 1244
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1245
    .line 1246
    .line 1247
    sget v0, Lpe/hf/black20/CategoriesActivity;->J0:I

    .line 1248
    .line 1249
    const/16 v2, 0xd

    .line 1250
    .line 1251
    div-int/2addr v0, v2

    .line 1252
    iput v0, v9, Lpe/hf/black20/CategoriesActivity;->N:I

    .line 1253
    .line 1254
    int-to-double v7, v0

    .line 1255
    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    .line 1256
    .line 1257
    mul-double v7, v7, v14

    .line 1258
    .line 1259
    double-to-int v0, v7

    .line 1260
    iput v0, v9, Lpe/hf/black20/CategoriesActivity;->O:I

    .line 1261
    .line 1262
    const-string v0, "ORT_THEME"

    .line 1263
    .line 1264
    const-string v5, "theme_d"

    .line 1265
    .line 1266
    const-string v7, "theme_2"

    .line 1267
    .line 1268
    invoke-static {v0, v5, v7}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1269
    .line 1270
    .line 1271
    move-result v0

    .line 1272
    const-wide v7, 0x3fd999999999999aL    # 0.4

    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    const-wide v16, 0x3ff2666666666666L    # 1.15

    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    if-eqz v0, :cond_16

    .line 1283
    .line 1284
    sget v0, Lpe/hf/black20/CategoriesActivity;->J0:I

    .line 1285
    .line 1286
    div-int/lit8 v5, v0, 0x4

    .line 1287
    .line 1288
    iput v5, v9, Lpe/hf/black20/CategoriesActivity;->P:I

    .line 1289
    .line 1290
    int-to-double v4, v5

    .line 1291
    mul-double v10, v4, v16

    .line 1292
    .line 1293
    double-to-int v10, v10

    .line 1294
    iput v10, v9, Lpe/hf/black20/CategoriesActivity;->S:I

    .line 1295
    .line 1296
    int-to-double v10, v0

    .line 1297
    const-wide v18, 0x4003333333333333L    # 2.4

    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    div-double v10, v10, v18

    .line 1303
    .line 1304
    double-to-int v0, v10

    .line 1305
    iput v0, v9, Lpe/hf/black20/CategoriesActivity;->Q:I

    .line 1306
    .line 1307
    mul-double v10, v10, v16

    .line 1308
    .line 1309
    double-to-int v0, v10

    .line 1310
    iput v0, v9, Lpe/hf/black20/CategoriesActivity;->R:I

    .line 1311
    .line 1312
    mul-double v7, v7, v4

    .line 1313
    .line 1314
    double-to-int v0, v7

    .line 1315
    iput v0, v9, Lpe/hf/black20/CategoriesActivity;->T:I

    .line 1316
    .line 1317
    mul-double v4, v4, v12

    .line 1318
    .line 1319
    double-to-int v4, v4

    .line 1320
    iput v4, v9, Lpe/hf/black20/CategoriesActivity;->U:I

    .line 1321
    .line 1322
    iput v0, v9, Lpe/hf/black20/CategoriesActivity;->V:I

    .line 1323
    .line 1324
    iput v4, v9, Lpe/hf/black20/CategoriesActivity;->W:I

    .line 1325
    .line 1326
    goto :goto_5

    .line 1327
    :cond_16
    const-string v0, "ORT_THEME"

    .line 1328
    .line 1329
    const-string v4, "theme_d"

    .line 1330
    .line 1331
    const-string v5, "theme_3"

    .line 1332
    .line 1333
    invoke-static {v0, v4, v5}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1334
    .line 1335
    .line 1336
    move-result v0

    .line 1337
    if-eqz v0, :cond_17

    .line 1338
    .line 1339
    sget v0, Lpe/hf/black20/CategoriesActivity;->J0:I

    .line 1340
    .line 1341
    int-to-double v4, v0

    .line 1342
    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    .line 1343
    .line 1344
    div-double/2addr v4, v10

    .line 1345
    double-to-int v10, v4

    .line 1346
    iput v10, v9, Lpe/hf/black20/CategoriesActivity;->Q:I

    .line 1347
    .line 1348
    mul-double v4, v4, v16

    .line 1349
    .line 1350
    double-to-int v4, v4

    .line 1351
    iput v4, v9, Lpe/hf/black20/CategoriesActivity;->R:I

    .line 1352
    .line 1353
    div-int/2addr v0, v6

    .line 1354
    iput v0, v9, Lpe/hf/black20/CategoriesActivity;->P:I

    .line 1355
    .line 1356
    int-to-double v4, v0

    .line 1357
    mul-double v10, v4, v16

    .line 1358
    .line 1359
    double-to-int v10, v10

    .line 1360
    iput v10, v9, Lpe/hf/black20/CategoriesActivity;->S:I

    .line 1361
    .line 1362
    iput v0, v9, Lpe/hf/black20/CategoriesActivity;->V:I

    .line 1363
    .line 1364
    iput v10, v9, Lpe/hf/black20/CategoriesActivity;->W:I

    .line 1365
    .line 1366
    mul-double v7, v7, v4

    .line 1367
    .line 1368
    double-to-int v0, v7

    .line 1369
    iput v0, v9, Lpe/hf/black20/CategoriesActivity;->T:I

    .line 1370
    .line 1371
    mul-double v4, v4, v12

    .line 1372
    .line 1373
    double-to-int v0, v4

    .line 1374
    iput v0, v9, Lpe/hf/black20/CategoriesActivity;->U:I

    .line 1375
    .line 1376
    goto :goto_5

    .line 1377
    :cond_17
    sget v0, Lpe/hf/black20/CategoriesActivity;->J0:I

    .line 1378
    .line 1379
    div-int/2addr v0, v3

    .line 1380
    iput v0, v9, Lpe/hf/black20/CategoriesActivity;->P:I

    .line 1381
    .line 1382
    int-to-double v4, v0

    .line 1383
    mul-double v10, v4, v16

    .line 1384
    .line 1385
    double-to-int v10, v10

    .line 1386
    iput v10, v9, Lpe/hf/black20/CategoriesActivity;->S:I

    .line 1387
    .line 1388
    iput v0, v9, Lpe/hf/black20/CategoriesActivity;->Q:I

    .line 1389
    .line 1390
    iput v10, v9, Lpe/hf/black20/CategoriesActivity;->R:I

    .line 1391
    .line 1392
    iput v0, v9, Lpe/hf/black20/CategoriesActivity;->V:I

    .line 1393
    .line 1394
    iput v10, v9, Lpe/hf/black20/CategoriesActivity;->W:I

    .line 1395
    .line 1396
    mul-double v7, v7, v4

    .line 1397
    .line 1398
    double-to-int v0, v7

    .line 1399
    iput v0, v9, Lpe/hf/black20/CategoriesActivity;->T:I

    .line 1400
    .line 1401
    mul-double v4, v4, v12

    .line 1402
    .line 1403
    double-to-int v0, v4

    .line 1404
    iput v0, v9, Lpe/hf/black20/CategoriesActivity;->U:I

    .line 1405
    .line 1406
    :goto_5
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->z0:Landroid/widget/FrameLayout;

    .line 1407
    .line 1408
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v0

    .line 1412
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1413
    .line 1414
    sget v4, Lpe/hf/black20/CategoriesActivity;->N0:I

    .line 1415
    .line 1416
    mul-int/lit8 v5, v4, 0x32

    .line 1417
    .line 1418
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1419
    .line 1420
    mul-int/lit16 v4, v4, 0x140

    .line 1421
    .line 1422
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1423
    .line 1424
    iget-object v4, v9, Lpe/hf/black20/CategoriesActivity;->z0:Landroid/widget/FrameLayout;

    .line 1425
    .line 1426
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1427
    .line 1428
    .line 1429
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 1430
    .line 1431
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v0

    .line 1435
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1436
    .line 1437
    iget v4, v9, Lpe/hf/black20/CategoriesActivity;->Q:I

    .line 1438
    .line 1439
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1440
    .line 1441
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1442
    .line 1443
    iget-object v4, v9, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 1444
    .line 1445
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1446
    .line 1447
    .line 1448
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 1449
    .line 1450
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v0

    .line 1454
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1455
    .line 1456
    iget v4, v9, Lpe/hf/black20/CategoriesActivity;->V:I

    .line 1457
    .line 1458
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1459
    .line 1460
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1461
    .line 1462
    iget-object v4, v9, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 1463
    .line 1464
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1465
    .line 1466
    .line 1467
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 1468
    .line 1469
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v0

    .line 1473
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1474
    .line 1475
    iget v4, v9, Lpe/hf/black20/CategoriesActivity;->P:I

    .line 1476
    .line 1477
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1478
    .line 1479
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1480
    .line 1481
    iget-object v4, v9, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 1482
    .line 1483
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1484
    .line 1485
    .line 1486
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 1487
    .line 1488
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v0

    .line 1492
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1493
    .line 1494
    iget v4, v9, Lpe/hf/black20/CategoriesActivity;->P:I

    .line 1495
    .line 1496
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1497
    .line 1498
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1499
    .line 1500
    iget-object v4, v9, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 1501
    .line 1502
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1503
    .line 1504
    .line 1505
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->q0:Landroid/widget/FrameLayout;

    .line 1506
    .line 1507
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v0

    .line 1511
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1512
    .line 1513
    sget v4, Lpe/hf/black20/CategoriesActivity;->J0:I

    .line 1514
    .line 1515
    div-int/2addr v4, v3

    .line 1516
    int-to-double v4, v4

    .line 1517
    const-wide v7, 0x3fe3333333333333L    # 0.6

    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    mul-double v4, v4, v7

    .line 1523
    .line 1524
    double-to-int v4, v4

    .line 1525
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1526
    .line 1527
    iget-object v4, v9, Lpe/hf/black20/CategoriesActivity;->q0:Landroid/widget/FrameLayout;

    .line 1528
    .line 1529
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1530
    .line 1531
    .line 1532
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 1533
    .line 1534
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v0

    .line 1538
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1539
    .line 1540
    iget v4, v9, Lpe/hf/black20/CategoriesActivity;->T:I

    .line 1541
    .line 1542
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1543
    .line 1544
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1545
    .line 1546
    iget-object v4, v9, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 1547
    .line 1548
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1549
    .line 1550
    .line 1551
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 1552
    .line 1553
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v0

    .line 1557
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1558
    .line 1559
    iget v4, v9, Lpe/hf/black20/CategoriesActivity;->T:I

    .line 1560
    .line 1561
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1562
    .line 1563
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1564
    .line 1565
    iget-object v4, v9, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 1566
    .line 1567
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1568
    .line 1569
    .line 1570
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->e0:Landroid/widget/ImageButton;

    .line 1571
    .line 1572
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v0

    .line 1576
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1577
    .line 1578
    iget v4, v9, Lpe/hf/black20/CategoriesActivity;->T:I

    .line 1579
    .line 1580
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1581
    .line 1582
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1583
    .line 1584
    iget-object v4, v9, Lpe/hf/black20/CategoriesActivity;->e0:Landroid/widget/ImageButton;

    .line 1585
    .line 1586
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1587
    .line 1588
    .line 1589
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 1590
    .line 1591
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v0

    .line 1595
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1596
    .line 1597
    iget v4, v9, Lpe/hf/black20/CategoriesActivity;->T:I

    .line 1598
    .line 1599
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1600
    .line 1601
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1602
    .line 1603
    iget-object v4, v9, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 1604
    .line 1605
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1606
    .line 1607
    .line 1608
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 1609
    .line 1610
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v0

    .line 1614
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1615
    .line 1616
    iget v4, v9, Lpe/hf/black20/CategoriesActivity;->T:I

    .line 1617
    .line 1618
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1619
    .line 1620
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1621
    .line 1622
    iget-object v4, v9, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 1623
    .line 1624
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1625
    .line 1626
    .line 1627
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 1628
    .line 1629
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v0

    .line 1633
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1634
    .line 1635
    iget v4, v9, Lpe/hf/black20/CategoriesActivity;->T:I

    .line 1636
    .line 1637
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1638
    .line 1639
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1640
    .line 1641
    iget-object v4, v9, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 1642
    .line 1643
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1644
    .line 1645
    .line 1646
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->l0:Landroid/widget/ImageButton;

    .line 1647
    .line 1648
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v0

    .line 1652
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1653
    .line 1654
    iget v4, v9, Lpe/hf/black20/CategoriesActivity;->N:I

    .line 1655
    .line 1656
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1657
    .line 1658
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1659
    .line 1660
    iget-object v4, v9, Lpe/hf/black20/CategoriesActivity;->l0:Landroid/widget/ImageButton;

    .line 1661
    .line 1662
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1663
    .line 1664
    .line 1665
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->k0:Landroid/widget/ImageButton;

    .line 1666
    .line 1667
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v0

    .line 1671
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1672
    .line 1673
    iget v4, v9, Lpe/hf/black20/CategoriesActivity;->N:I

    .line 1674
    .line 1675
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1676
    .line 1677
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1678
    .line 1679
    iget-object v4, v9, Lpe/hf/black20/CategoriesActivity;->k0:Landroid/widget/ImageButton;

    .line 1680
    .line 1681
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1682
    .line 1683
    .line 1684
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->m0:Landroid/widget/ImageButton;

    .line 1685
    .line 1686
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1687
    .line 1688
    .line 1689
    move-result-object v0

    .line 1690
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1691
    .line 1692
    iget v4, v9, Lpe/hf/black20/CategoriesActivity;->N:I

    .line 1693
    .line 1694
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1695
    .line 1696
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1697
    .line 1698
    iget-object v4, v9, Lpe/hf/black20/CategoriesActivity;->m0:Landroid/widget/ImageButton;

    .line 1699
    .line 1700
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1701
    .line 1702
    .line 1703
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->o0:Landroid/widget/ImageButton;

    .line 1704
    .line 1705
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v0

    .line 1709
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1710
    .line 1711
    iget v4, v9, Lpe/hf/black20/CategoriesActivity;->N:I

    .line 1712
    .line 1713
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1714
    .line 1715
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1716
    .line 1717
    iget-object v4, v9, Lpe/hf/black20/CategoriesActivity;->o0:Landroid/widget/ImageButton;

    .line 1718
    .line 1719
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1720
    .line 1721
    .line 1722
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->p0:Landroid/widget/ImageButton;

    .line 1723
    .line 1724
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v0

    .line 1728
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1729
    .line 1730
    iget v4, v9, Lpe/hf/black20/CategoriesActivity;->N:I

    .line 1731
    .line 1732
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1733
    .line 1734
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1735
    .line 1736
    iget-object v4, v9, Lpe/hf/black20/CategoriesActivity;->p0:Landroid/widget/ImageButton;

    .line 1737
    .line 1738
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1739
    .line 1740
    .line 1741
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->p0:Landroid/widget/ImageButton;

    .line 1742
    .line 1743
    const/16 v4, 0xff

    .line 1744
    .line 1745
    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    .line 1746
    .line 1747
    .line 1748
    move-result v4

    .line 1749
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1750
    .line 1751
    .line 1752
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->n0:Landroid/widget/ImageButton;

    .line 1753
    .line 1754
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v0

    .line 1758
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1759
    .line 1760
    iget v4, v9, Lpe/hf/black20/CategoriesActivity;->P:I

    .line 1761
    .line 1762
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1763
    .line 1764
    sget v4, Lpe/hf/black20/CategoriesActivity;->J0:I

    .line 1765
    .line 1766
    int-to-double v4, v4

    .line 1767
    div-double/2addr v4, v14

    .line 1768
    double-to-int v4, v4

    .line 1769
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1770
    .line 1771
    iget-object v4, v9, Lpe/hf/black20/CategoriesActivity;->n0:Landroid/widget/ImageButton;

    .line 1772
    .line 1773
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1774
    .line 1775
    .line 1776
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 1777
    .line 1778
    const-string v4, "MM/dd/yyyy HH:mm:ss"

    .line 1779
    .line 1780
    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1781
    .line 1782
    .line 1783
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->M:Ljava/text/SimpleDateFormat;

    .line 1784
    .line 1785
    new-instance v4, Ljava/util/Date;

    .line 1786
    .line 1787
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 1788
    .line 1789
    .line 1790
    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 1791
    .line 1792
    .line 1793
    move-result-object v0

    .line 1794
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->X:Ljava/lang/String;

    .line 1795
    .line 1796
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 1797
    .line 1798
    new-instance v4, Lb7/p;

    .line 1799
    .line 1800
    const/4 v5, 0x5

    .line 1801
    invoke-direct {v4, v9, v5}, Lb7/p;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 1802
    .line 1803
    .line 1804
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1805
    .line 1806
    .line 1807
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 1808
    .line 1809
    new-instance v4, Lb7/o;

    .line 1810
    .line 1811
    const/16 v7, 0xa

    .line 1812
    .line 1813
    invoke-direct {v4, v9, v7}, Lb7/o;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 1814
    .line 1815
    .line 1816
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1817
    .line 1818
    .line 1819
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 1820
    .line 1821
    new-instance v4, Lb7/p;

    .line 1822
    .line 1823
    const/16 v8, 0xc

    .line 1824
    .line 1825
    invoke-direct {v4, v9, v8}, Lb7/p;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 1826
    .line 1827
    .line 1828
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1829
    .line 1830
    .line 1831
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 1832
    .line 1833
    new-instance v4, Lb7/o;

    .line 1834
    .line 1835
    invoke-direct {v4, v9, v2}, Lb7/o;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 1836
    .line 1837
    .line 1838
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1839
    .line 1840
    .line 1841
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 1842
    .line 1843
    new-instance v4, Lb7/p;

    .line 1844
    .line 1845
    invoke-direct {v4, v9, v2}, Lb7/p;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 1846
    .line 1847
    .line 1848
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1849
    .line 1850
    .line 1851
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 1852
    .line 1853
    new-instance v2, Lb7/o;

    .line 1854
    .line 1855
    const/16 v4, 0xe

    .line 1856
    .line 1857
    invoke-direct {v2, v9, v4}, Lb7/o;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 1858
    .line 1859
    .line 1860
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1861
    .line 1862
    .line 1863
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 1864
    .line 1865
    new-instance v2, Lb7/p;

    .line 1866
    .line 1867
    invoke-direct {v2, v9, v4}, Lb7/p;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 1868
    .line 1869
    .line 1870
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1871
    .line 1872
    .line 1873
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 1874
    .line 1875
    new-instance v2, Lb7/o;

    .line 1876
    .line 1877
    const/16 v4, 0xf

    .line 1878
    .line 1879
    invoke-direct {v2, v9, v4}, Lb7/o;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 1880
    .line 1881
    .line 1882
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1883
    .line 1884
    .line 1885
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 1886
    .line 1887
    new-instance v2, Lb7/p;

    .line 1888
    .line 1889
    invoke-direct {v2, v9, v4}, Lb7/p;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 1890
    .line 1891
    .line 1892
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1893
    .line 1894
    .line 1895
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 1896
    .line 1897
    new-instance v2, Lb7/o;

    .line 1898
    .line 1899
    const/4 v4, 0x0

    .line 1900
    invoke-direct {v2, v9, v4}, Lb7/o;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 1901
    .line 1902
    .line 1903
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1904
    .line 1905
    .line 1906
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->n0:Landroid/widget/ImageButton;

    .line 1907
    .line 1908
    new-instance v2, Lb7/p;

    .line 1909
    .line 1910
    invoke-direct {v2, v9, v4}, Lb7/p;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 1911
    .line 1912
    .line 1913
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1914
    .line 1915
    .line 1916
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->n0:Landroid/widget/ImageButton;

    .line 1917
    .line 1918
    new-instance v2, Lb7/o;

    .line 1919
    .line 1920
    const/4 v4, 0x1

    .line 1921
    invoke-direct {v2, v9, v4}, Lb7/o;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 1922
    .line 1923
    .line 1924
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1925
    .line 1926
    .line 1927
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 1928
    .line 1929
    new-instance v2, Lb7/p;

    .line 1930
    .line 1931
    invoke-direct {v2, v9, v4}, Lb7/p;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 1932
    .line 1933
    .line 1934
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1935
    .line 1936
    .line 1937
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 1938
    .line 1939
    new-instance v2, Lb7/o;

    .line 1940
    .line 1941
    const/4 v4, 0x2

    .line 1942
    invoke-direct {v2, v9, v4}, Lb7/o;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 1943
    .line 1944
    .line 1945
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1946
    .line 1947
    .line 1948
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->e0:Landroid/widget/ImageButton;

    .line 1949
    .line 1950
    new-instance v2, Lb7/p;

    .line 1951
    .line 1952
    invoke-direct {v2, v9, v4}, Lb7/p;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 1953
    .line 1954
    .line 1955
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1956
    .line 1957
    .line 1958
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->e0:Landroid/widget/ImageButton;

    .line 1959
    .line 1960
    new-instance v2, Lb7/o;

    .line 1961
    .line 1962
    invoke-direct {v2, v9, v3}, Lb7/o;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 1963
    .line 1964
    .line 1965
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1966
    .line 1967
    .line 1968
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 1969
    .line 1970
    new-instance v2, Lb7/p;

    .line 1971
    .line 1972
    invoke-direct {v2, v9, v3}, Lb7/p;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 1973
    .line 1974
    .line 1975
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1976
    .line 1977
    .line 1978
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 1979
    .line 1980
    new-instance v2, Lb7/o;

    .line 1981
    .line 1982
    invoke-direct {v2, v9, v6}, Lb7/o;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 1983
    .line 1984
    .line 1985
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1986
    .line 1987
    .line 1988
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 1989
    .line 1990
    new-instance v2, Lb7/p;

    .line 1991
    .line 1992
    invoke-direct {v2, v9, v6}, Lb7/p;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 1993
    .line 1994
    .line 1995
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1996
    .line 1997
    .line 1998
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 1999
    .line 2000
    new-instance v2, Lb7/o;

    .line 2001
    .line 2002
    invoke-direct {v2, v9, v5}, Lb7/o;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 2003
    .line 2004
    .line 2005
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2006
    .line 2007
    .line 2008
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 2009
    .line 2010
    new-instance v2, Lb7/p;

    .line 2011
    .line 2012
    const/4 v3, 0x6

    .line 2013
    invoke-direct {v2, v9, v3}, Lb7/p;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 2014
    .line 2015
    .line 2016
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2017
    .line 2018
    .line 2019
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 2020
    .line 2021
    new-instance v2, Lb7/o;

    .line 2022
    .line 2023
    invoke-direct {v2, v9, v3}, Lb7/o;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 2024
    .line 2025
    .line 2026
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2027
    .line 2028
    .line 2029
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->k0:Landroid/widget/ImageButton;

    .line 2030
    .line 2031
    new-instance v2, Lb7/p;

    .line 2032
    .line 2033
    const/4 v3, 0x7

    .line 2034
    invoke-direct {v2, v9, v3}, Lb7/p;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 2035
    .line 2036
    .line 2037
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2038
    .line 2039
    .line 2040
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->k0:Landroid/widget/ImageButton;

    .line 2041
    .line 2042
    new-instance v2, Lb7/o;

    .line 2043
    .line 2044
    invoke-direct {v2, v9, v3}, Lb7/o;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 2045
    .line 2046
    .line 2047
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2048
    .line 2049
    .line 2050
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->l0:Landroid/widget/ImageButton;

    .line 2051
    .line 2052
    new-instance v2, Lb7/p;

    .line 2053
    .line 2054
    invoke-direct {v2, v9, v1}, Lb7/p;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 2055
    .line 2056
    .line 2057
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2058
    .line 2059
    .line 2060
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->l0:Landroid/widget/ImageButton;

    .line 2061
    .line 2062
    new-instance v2, Lb7/o;

    .line 2063
    .line 2064
    invoke-direct {v2, v9, v1}, Lb7/o;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 2065
    .line 2066
    .line 2067
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2068
    .line 2069
    .line 2070
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->m0:Landroid/widget/ImageButton;

    .line 2071
    .line 2072
    new-instance v1, Lb7/p;

    .line 2073
    .line 2074
    const/16 v2, 0x9

    .line 2075
    .line 2076
    invoke-direct {v1, v9, v2}, Lb7/p;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 2077
    .line 2078
    .line 2079
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2080
    .line 2081
    .line 2082
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->m0:Landroid/widget/ImageButton;

    .line 2083
    .line 2084
    new-instance v1, Lb7/o;

    .line 2085
    .line 2086
    invoke-direct {v1, v9, v2}, Lb7/o;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 2087
    .line 2088
    .line 2089
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2090
    .line 2091
    .line 2092
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->o0:Landroid/widget/ImageButton;

    .line 2093
    .line 2094
    new-instance v1, Lb7/p;

    .line 2095
    .line 2096
    invoke-direct {v1, v9, v7}, Lb7/p;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 2097
    .line 2098
    .line 2099
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2100
    .line 2101
    .line 2102
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->o0:Landroid/widget/ImageButton;

    .line 2103
    .line 2104
    new-instance v1, Lb7/o;

    .line 2105
    .line 2106
    const/16 v3, 0xb

    .line 2107
    .line 2108
    invoke-direct {v1, v9, v3}, Lb7/o;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 2109
    .line 2110
    .line 2111
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2112
    .line 2113
    .line 2114
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->p0:Landroid/widget/ImageButton;

    .line 2115
    .line 2116
    new-instance v1, Lb7/p;

    .line 2117
    .line 2118
    invoke-direct {v1, v9, v3}, Lb7/p;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 2119
    .line 2120
    .line 2121
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2122
    .line 2123
    .line 2124
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->p0:Landroid/widget/ImageButton;

    .line 2125
    .line 2126
    new-instance v1, Lb7/o;

    .line 2127
    .line 2128
    invoke-direct {v1, v9, v8}, Lb7/o;-><init>(Lpe/hf/black20/CategoriesActivity;I)V

    .line 2129
    .line 2130
    .line 2131
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2132
    .line 2133
    .line 2134
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 2135
    .line 2136
    const-string v1, "pc_lock"

    .line 2137
    .line 2138
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 2139
    .line 2140
    .line 2141
    move-result v0

    .line 2142
    if-nez v0, :cond_18

    .line 2143
    .line 2144
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 2145
    .line 2146
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 2147
    .line 2148
    .line 2149
    move-result-object v0

    .line 2150
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 2151
    .line 2152
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 2153
    .line 2154
    const-string v1, "pc_lock"

    .line 2155
    .line 2156
    const-string v3, "no"

    .line 2157
    .line 2158
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2159
    .line 2160
    .line 2161
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 2162
    .line 2163
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2164
    .line 2165
    .line 2166
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 2167
    .line 2168
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2169
    .line 2170
    .line 2171
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 2172
    .line 2173
    .line 2174
    move-result-object v0

    .line 2175
    const-string v1, "ORT_PARENTAL_CONTROL_STATUS"

    .line 2176
    .line 2177
    const-string v3, "unlocked"

    .line 2178
    .line 2179
    invoke-virtual {v0, v1, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 2180
    .line 2181
    .line 2182
    goto :goto_6

    .line 2183
    :cond_18
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 2184
    .line 2185
    const-string v1, "pc_lock"

    .line 2186
    .line 2187
    const/4 v3, 0x0

    .line 2188
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2189
    .line 2190
    .line 2191
    move-result-object v0

    .line 2192
    const-string v1, "no"

    .line 2193
    .line 2194
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2195
    .line 2196
    .line 2197
    move-result v0

    .line 2198
    if-eqz v0, :cond_19

    .line 2199
    .line 2200
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 2201
    .line 2202
    .line 2203
    move-result-object v0

    .line 2204
    const-string v1, "ORT_PARENTAL_CONTROL_STATUS"

    .line 2205
    .line 2206
    const-string v3, "unlocked"

    .line 2207
    .line 2208
    invoke-virtual {v0, v1, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 2209
    .line 2210
    .line 2211
    goto :goto_6

    .line 2212
    :cond_19
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 2213
    .line 2214
    .line 2215
    move-result-object v0

    .line 2216
    const-string v1, "ORT_PARENTAL_CONTROL_STATUS"

    .line 2217
    .line 2218
    const-string v3, "locked"

    .line 2219
    .line 2220
    invoke-virtual {v0, v1, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 2221
    .line 2222
    .line 2223
    :goto_6
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 2224
    .line 2225
    const-string v1, "parental_contorl"

    .line 2226
    .line 2227
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 2228
    .line 2229
    .line 2230
    move-result v0

    .line 2231
    if-eqz v0, :cond_1a

    .line 2232
    .line 2233
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 2234
    .line 2235
    .line 2236
    move-result-object v0

    .line 2237
    const-string v1, "ORT_PARENTAL_CONTROL"

    .line 2238
    .line 2239
    iget-object v3, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 2240
    .line 2241
    const-string v4, "parental_contorl"

    .line 2242
    .line 2243
    const/4 v5, 0x0

    .line 2244
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2245
    .line 2246
    .line 2247
    move-result-object v3

    .line 2248
    invoke-virtual {v0, v1, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 2249
    .line 2250
    .line 2251
    :cond_1a
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 2252
    .line 2253
    const-string v1, "rec_path"

    .line 2254
    .line 2255
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 2256
    .line 2257
    .line 2258
    move-result v0

    .line 2259
    if-nez v0, :cond_1c

    .line 2260
    .line 2261
    :try_start_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 2262
    .line 2263
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 2264
    .line 2265
    .line 2266
    move-result-object v0

    .line 2267
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2268
    .line 2269
    .line 2270
    move-result-object v0

    .line 2271
    new-instance v1, Ljava/io/File;

    .line 2272
    .line 2273
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2274
    .line 2275
    .line 2276
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 2277
    .line 2278
    .line 2279
    move-result v3

    .line 2280
    if-nez v3, :cond_1b

    .line 2281
    .line 2282
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 2283
    .line 2284
    .line 2285
    goto :goto_7

    .line 2286
    :catch_0
    nop

    .line 2287
    goto :goto_8

    .line 2288
    :cond_1b
    :goto_7
    iget-object v1, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 2289
    .line 2290
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 2291
    .line 2292
    .line 2293
    move-result-object v1

    .line 2294
    const-string v3, "rec_path"

    .line 2295
    .line 2296
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2297
    .line 2298
    .line 2299
    const-string v0, "rec_path_storage"

    .line 2300
    .line 2301
    const-string v3, "INTERNAL STORAGE"

    .line 2302
    .line 2303
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2304
    .line 2305
    .line 2306
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2307
    .line 2308
    .line 2309
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2310
    .line 2311
    .line 2312
    :cond_1c
    :goto_8
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->L:Lc7/d;

    .line 2313
    .line 2314
    invoke-virtual {v0}, Lc7/d;->L0()V

    .line 2315
    .line 2316
    .line 2317
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 2318
    .line 2319
    const-string v1, "AdMob_enabled"

    .line 2320
    .line 2321
    const/4 v3, 0x0

    .line 2322
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2323
    .line 2324
    .line 2325
    move-result-object v0

    .line 2326
    const-string v1, "yes"

    .line 2327
    .line 2328
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2329
    .line 2330
    .line 2331
    move-result v0

    .line 2332
    if-eqz v0, :cond_1d

    .line 2333
    .line 2334
    new-instance v4, Lv4/b;

    .line 2335
    .line 2336
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 2337
    .line 2338
    .line 2339
    const/4 v0, 0x0

    .line 2340
    iput-boolean v0, v4, Lv4/b;->a:Z

    .line 2341
    .line 2342
    iput-object v3, v4, Lv4/b;->b:Ljava/lang/String;

    .line 2343
    .line 2344
    iput-object v3, v4, Lv4/b;->c:LG/c;

    .line 2345
    .line 2346
    invoke-static/range {p0 .. p0}, LZ3/c;->a(Landroid/content/Context;)LZ3/c;

    .line 2347
    .line 2348
    .line 2349
    move-result-object v0

    .line 2350
    iget-object v0, v0, LZ3/c;->h:LZ3/X;

    .line 2351
    .line 2352
    invoke-interface {v0}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 2353
    .line 2354
    .line 2355
    move-result-object v0

    .line 2356
    check-cast v0, LZ3/b0;

    .line 2357
    .line 2358
    iput-object v0, v9, Lpe/hf/black20/CategoriesActivity;->D0:LZ3/b0;

    .line 2359
    .line 2360
    new-instance v5, La3/i;

    .line 2361
    .line 2362
    const/16 v1, 0x10

    .line 2363
    .line 2364
    invoke-direct {v5, v9, v1}, La3/i;-><init>(Ljava/lang/Object;I)V

    .line 2365
    .line 2366
    .line 2367
    new-instance v6, LB0/y;

    .line 2368
    .line 2369
    invoke-direct {v6, v2}, LB0/y;-><init>(I)V

    .line 2370
    .line 2371
    .line 2372
    iget-object v1, v0, LZ3/b0;->c:Ljava/lang/Object;

    .line 2373
    .line 2374
    monitor-enter v1

    .line 2375
    const/4 v2, 0x1

    .line 2376
    :try_start_1
    iput-boolean v2, v0, LZ3/b0;->d:Z

    .line 2377
    .line 2378
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2379
    iget-object v0, v0, LZ3/b0;->b:LZ3/g0;

    .line 2380
    .line 2381
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2382
    .line 2383
    .line 2384
    new-instance v10, Ln2/t;

    .line 2385
    .line 2386
    const/4 v7, 0x2

    .line 2387
    const/4 v8, 0x0

    .line 2388
    move-object v1, v10

    .line 2389
    move-object v2, v0

    .line 2390
    move-object/from16 v3, p0

    .line 2391
    .line 2392
    invoke-direct/range {v1 .. v8}, Ln2/t;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 2393
    .line 2394
    .line 2395
    iget-object v0, v0, LZ3/g0;->c:Ljava/util/concurrent/Executor;

    .line 2396
    .line 2397
    invoke-interface {v0, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2398
    .line 2399
    .line 2400
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->D0:LZ3/b0;

    .line 2401
    .line 2402
    invoke-virtual {v0}, LZ3/b0;->a()Z

    .line 2403
    .line 2404
    .line 2405
    move-result v0

    .line 2406
    if-eqz v0, :cond_1d

    .line 2407
    .line 2408
    invoke-virtual/range {p0 .. p0}, Lpe/hf/black20/CategoriesActivity;->h()V

    .line 2409
    .line 2410
    .line 2411
    goto :goto_9

    .line 2412
    :catchall_0
    move-exception v0

    .line 2413
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2414
    throw v0

    .line 2415
    :cond_1d
    :goto_9
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 2416
    .line 2417
    const-string v1, "mqtt_url"

    .line 2418
    .line 2419
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 2420
    .line 2421
    .line 2422
    move-result v0

    .line 2423
    if-eqz v0, :cond_1e

    .line 2424
    .line 2425
    iget-object v0, v9, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 2426
    .line 2427
    const-string v1, "mqtt_url"

    .line 2428
    .line 2429
    const/4 v2, 0x0

    .line 2430
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2431
    .line 2432
    .line 2433
    move-result-object v0

    .line 2434
    const-string v1, "0"

    .line 2435
    .line 2436
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2437
    .line 2438
    .line 2439
    move-result v0

    .line 2440
    if-nez v0, :cond_1e

    .line 2441
    .line 2442
    new-instance v0, Li7/b;

    .line 2443
    .line 2444
    iget-object v1, v9, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 2445
    .line 2446
    const/4 v2, 0x0

    .line 2447
    invoke-direct {v0, v1, v2}, Li7/b;-><init>(Landroid/app/Activity;Z)V

    .line 2448
    .line 2449
    .line 2450
    :cond_1e
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const-string v0, "XCIPTV_TAG"

    .line 5
    .line 6
    const-string v1, "CategoriesActivity - onDestroy"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    const-string v1, "AdMob_enabled"

    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 23
    .line 24
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "yes"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->C0:Lcom/google/android/gms/ads/AdView;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Lf3/i;->a()V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v1, 0x0

    .line 48
    const-string v3, "ORT_isCategoriesActivityVisible"

    .line 49
    .line 50
    invoke-virtual {v0, v3, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->A0:Lb7/q;

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->G0:Lb7/q;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    invoke-static {p0}, Li0/c;->a(Landroid/content/Context;)Li0/c;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, v0}, Li0/c;->d(Landroid/content/BroadcastReceiver;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 74
    .line 75
    const-class v1, Lpe/hf/black20/services/OTRServices;

    .line 76
    .line 77
    invoke-static {v0, v1}, Lpe/hf/black20/util/Methods;->Y(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Lpe/hf/black20/CategoriesActivity;->m(Landroid/app/Activity;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 84
    .line 85
    const-string v1, "mqtt_url"

    .line 86
    .line 87
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 94
    .line 95
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v1, "0"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_2

    .line 106
    .line 107
    invoke-static {}, Li7/b;->b()V

    .line 108
    .line 109
    .line 110
    :cond_2
    return-void
.end method

.method public final onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lpe/hf/black20/CategoriesActivity;->j()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "ORT_isCategoriesActivityVisible"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 15
    .line 16
    .line 17
    const-string v0, "XCIPTV_TAG"

    .line 18
    .line 19
    const-string v1, "CategoriesActivity - onPause"

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onResume()V
    .locals 8

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    const-string v1, "AdMob_enabled"

    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v2, "yes"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->C0:Lcom/google/android/gms/ads/AdView;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lf3/i;->d()V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x1

    .line 41
    const-string v4, "ORT_isCategoriesActivityVisible"

    .line 42
    .line 43
    invoke-virtual {v0, v4, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 44
    .line 45
    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .line 48
    const/16 v1, 0x21

    .line 49
    .line 50
    if-lt v0, v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0}, Lpe/hf/black20/CategoriesActivity;->d()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/16 v1, 0x17

    .line 57
    .line 58
    if-lt v0, v1, :cond_3

    .line 59
    .line 60
    invoke-static {p0}, LF2/D;->d(Lpe/hf/black20/CategoriesActivity;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0}, Lpe/hf/black20/CategoriesActivity;->d()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 71
    .line 72
    filled-new-array {v0}, [Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/4 v1, 0x2

    .line 77
    invoke-static {p0, v0, v1}, LD/c;->D(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {p0}, Lpe/hf/black20/CategoriesActivity;->d()V

    .line 82
    .line 83
    .line 84
    :goto_0
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 85
    .line 86
    const-class v1, Lpe/hf/black20/services/OTRServices;

    .line 87
    .line 88
    invoke-static {v0, v1}, Lpe/hf/black20/util/Methods;->W(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    new-instance v4, Ljava/util/Locale;

    .line 104
    .line 105
    iget-object v5, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 106
    .line 107
    const-string v6, "language"

    .line 108
    .line 109
    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v4}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 117
    .line 118
    .line 119
    iput-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v4, v1, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lpe/hf/black20/CategoriesActivity;->G0:Lb7/q;

    .line 145
    .line 146
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-nez v4, :cond_4

    .line 151
    .line 152
    invoke-static {p0}, Li0/c;->a(Landroid/content/Context;)Li0/c;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    new-instance v5, Landroid/content/IntentFilter;

    .line 157
    .line 158
    const-string v6, "CategoriesActivityProgramAndMessageReceiver"

    .line 159
    .line 160
    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v1, v5}, Li0/c;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 164
    .line 165
    .line 166
    :cond_4
    iget-object v1, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 167
    .line 168
    const-string v4, "epg_mode"

    .line 169
    .line 170
    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_5

    .line 175
    .line 176
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    iget-object v5, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 181
    .line 182
    invoke-interface {v5, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    const-string v5, "ORT_LIVE_TV_EPG_MODE"

    .line 191
    .line 192
    invoke-virtual {v1, v5, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 193
    .line 194
    .line 195
    :cond_5
    iget-object v1, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 196
    .line 197
    const-string v4, "tvvodseries_dl_time"

    .line 198
    .line 199
    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_6

    .line 204
    .line 205
    new-instance v1, Ljava/lang/Thread;

    .line 206
    .line 207
    new-instance v4, Lf5/a;

    .line 208
    .line 209
    const/4 v5, 0x6

    .line 210
    invoke-direct {v4, p0, v5}, Lf5/a;-><init>(Ljava/lang/Object;I)V

    .line 211
    .line 212
    .line 213
    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_6
    invoke-virtual {p0}, Lpe/hf/black20/CategoriesActivity;->k()V

    .line 221
    .line 222
    .line 223
    :goto_1
    invoke-static {}, Lpe/hf/black20/CategoriesActivity;->AN()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    const v4, 0x7f130021

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-nez v1, :cond_7

    .line 239
    .line 240
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 241
    .line 242
    .line 243
    :cond_7
    iget-object v1, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 244
    .line 245
    const-string v4, "mqtt_url"

    .line 246
    .line 247
    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    const-string v5, "XCIPTV_TAG"

    .line 252
    .line 253
    if-eqz v1, :cond_8

    .line 254
    .line 255
    iget-object v1, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 256
    .line 257
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    const-string v4, "0"

    .line 262
    .line 263
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-nez v1, :cond_8

    .line 268
    .line 269
    sget-object v1, Li7/b;->a:Ljava/lang/String;

    .line 270
    .line 271
    const-string v1, "MQTT Client Reconnect called"

    .line 272
    .line 273
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    invoke-static {v0}, Li7/b;->f(Landroid/content/Context;)V

    .line 277
    .line 278
    .line 279
    :cond_8
    const-string v0, "ORT_WHICH_PANEL"

    .line 280
    .line 281
    const-string v1, "xtreamcodes"

    .line 282
    .line 283
    invoke-static {v0, v1, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    if-eqz v4, :cond_f

    .line 288
    .line 289
    const-string v4, "last_expire_message"

    .line 290
    .line 291
    invoke-static {v0, v1, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_f

    .line 296
    .line 297
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 298
    .line 299
    const-string v1, "exp_date"

    .line 300
    .line 301
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    iput-object v0, p0, Lpe/hf/black20/CategoriesActivity;->Y:Ljava/lang/String;

    .line 306
    .line 307
    const-string v6, "null"

    .line 308
    .line 309
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-nez v0, :cond_e

    .line 314
    .line 315
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->Y:Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-nez v0, :cond_e

    .line 322
    .line 323
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->Y:Ljava/lang/String;

    .line 324
    .line 325
    const-string v6, ""

    .line 326
    .line 327
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-eqz v0, :cond_9

    .line 332
    .line 333
    goto/16 :goto_4

    .line 334
    .line 335
    :cond_9
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 336
    .line 337
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    iput-object v0, p0, Lpe/hf/black20/CategoriesActivity;->Y:Ljava/lang/String;

    .line 346
    .line 347
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 348
    .line 349
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->k(Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    const-string v6, "CategoriesActivity - accountExpireInDays ----"

    .line 360
    .line 361
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    iget-object v1, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 375
    .line 376
    const-string v6, "show_expire"

    .line 377
    .line 378
    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    if-eqz v1, :cond_d

    .line 387
    .line 388
    iget-object v1, p0, Lpe/hf/black20/CategoriesActivity;->s0:Landroid/widget/TextView;

    .line 389
    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .line 394
    .line 395
    const v6, 0x7f1301ca

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v6

    .line 402
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    const-string v6, ": "

    .line 406
    .line 407
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    iget-object v6, p0, Lpe/hf/black20/CategoriesActivity;->Y:Ljava/lang/String;

    .line 411
    .line 412
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    .line 421
    .line 422
    if-ltz v0, :cond_c

    .line 423
    .line 424
    const/4 v1, 0x4

    .line 425
    if-gt v0, v1, :cond_c

    .line 426
    .line 427
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 428
    .line 429
    const-string v2, "MM/dd/yyyy HH:mm:ss"

    .line 430
    .line 431
    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    iput-object v0, p0, Lpe/hf/black20/CategoriesActivity;->M:Ljava/text/SimpleDateFormat;

    .line 435
    .line 436
    new-instance v2, Ljava/util/Date;

    .line 437
    .line 438
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    iput-object v0, p0, Lpe/hf/black20/CategoriesActivity;->X:Ljava/lang/String;

    .line 446
    .line 447
    iget-object v2, p0, Lpe/hf/black20/CategoriesActivity;->M:Ljava/text/SimpleDateFormat;

    .line 448
    .line 449
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    iget-object v2, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 454
    .line 455
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    const v6, 0x7f130246

    .line 460
    .line 461
    .line 462
    if-nez v2, :cond_a

    .line 463
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .line 468
    .line 469
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    iget-object v1, p0, Lpe/hf/black20/CategoriesActivity;->Y:Ljava/lang/String;

    .line 477
    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    invoke-virtual {p0, v0}, Lpe/hf/black20/CategoriesActivity;->c(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    goto :goto_2

    .line 489
    :catch_0
    move-exception v0

    .line 490
    goto :goto_3

    .line 491
    :cond_a
    iget-object v2, p0, Lpe/hf/black20/CategoriesActivity;->M:Ljava/text/SimpleDateFormat;

    .line 492
    .line 493
    iget-object v7, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 494
    .line 495
    invoke-interface {v7, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    invoke-static {v2, v0}, Lpe/hf/black20/util/Methods;->j(Ljava/util/Date;Ljava/util/Date;)I

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    if-le v0, v1, :cond_b

    .line 508
    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    .line 510
    .line 511
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    .line 513
    .line 514
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    iget-object v1, p0, Lpe/hf/black20/CategoriesActivity;->Y:Ljava/lang/String;

    .line 522
    .line 523
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-virtual {p0, v0}, Lpe/hf/black20/CategoriesActivity;->c(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    :cond_b
    :goto_2
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 534
    .line 535
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    iget-object v1, p0, Lpe/hf/black20/CategoriesActivity;->X:Ljava/lang/String;

    .line 540
    .line 541
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 542
    .line 543
    .line 544
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 545
    .line 546
    .line 547
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    .line 549
    .line 550
    goto :goto_5

    .line 551
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    const-string v2, "CategoriesActivity - ParseException ----"

    .line 554
    .line 555
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .line 571
    .line 572
    goto :goto_5

    .line 573
    :cond_c
    if-gez v0, :cond_f

    .line 574
    .line 575
    new-instance v0, Landroid/content/Intent;

    .line 576
    .line 577
    const-class v1, Lpe/hf/black20/LoginActivity;

    .line 578
    .line 579
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 586
    .line 587
    .line 588
    goto :goto_5

    .line 589
    :cond_d
    iget-object v0, p0, Lpe/hf/black20/CategoriesActivity;->s0:Landroid/widget/TextView;

    .line 590
    .line 591
    const/16 v1, 0x8

    .line 592
    .line 593
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 594
    .line 595
    .line 596
    goto :goto_5

    .line 597
    :cond_e
    :goto_4
    const v0, 0x7f130150

    .line 598
    .line 599
    .line 600
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    iput-object v0, p0, Lpe/hf/black20/CategoriesActivity;->Y:Ljava/lang/String;

    .line 605
    .line 606
    :cond_f
    :goto_5
    const-string v0, "CategoriesActivity - onResume"

    .line 607
    .line 608
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    .line 610
    .line 611
    return-void
.end method

.method public final onStop()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    const-string v0, "XCIPTV_TAG"

    .line 5
    .line 6
    const-string v1, "CategoriesActivity - onStop"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lpe/hf/black20/CategoriesActivity;->j()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const-string v4, "ORT_isCategoriesActivityVisible"

    .line 20
    .line 21
    invoke-virtual {v2, v4, v3}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
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
    iget-object p1, p0, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

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
