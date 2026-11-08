.class public Lpe/hf/black20/SplashActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lpe/hf/black20/util/d;
.implements Lg7/c;


# static fields
.field public static final synthetic B0:I


# instance fields
.field public A0:Ljava/lang/String;

.field public final G:Lpe/hf/black20/SplashActivity;

.field public H:Landroid/content/SharedPreferences;

.field public I:Lc7/a;

.field public J:Lh7/i;

.field public K:Landroid/widget/FrameLayout;

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:Ljava/lang/String;

.field public a0:Ljava/lang/String;

.field public b0:Z

.field public c0:Lorg/json/JSONObject;

.field public d0:Lorg/json/JSONObject;

.field public e0:Lorg/json/JSONObject;

.field public f0:Lorg/json/JSONObject;

.field public g0:Landroid/widget/FrameLayout;

.field public h0:Landroid/widget/ImageView;

.field public final i0:I

.field public j0:I

.field public k0:Landroid/widget/ImageView;

.field public l0:I

.field public m0:Ljava/lang/String;

.field public n0:Ljava/lang/String;

.field public o0:Lorg/json/JSONObject;

.field public p0:Lorg/json/JSONObject;

.field public q0:Lorg/json/JSONObject;

.field public r0:Lorg/json/JSONObject;

.field public s0:Lorg/json/JSONObject;

.field public t0:Lorg/json/JSONObject;

.field public u0:Lorg/json/JSONObject;

.field public v0:Lorg/json/JSONObject;

.field public w0:Lorg/json/JSONObject;

.field public x0:Lorg/json/JSONObject;

.field public y0:Ljava/lang/String;

.field public z0:Ljava/lang/String;


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
    iput-object p0, p0, Lpe/hf/black20/SplashActivity;->G:Lpe/hf/black20/SplashActivity;

    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    iput-object v0, p0, Lpe/hf/black20/SplashActivity;->W:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lpe/hf/black20/SplashActivity;->X:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lpe/hf/black20/SplashActivity;->Y:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lpe/hf/black20/SplashActivity;->a0:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lpe/hf/black20/SplashActivity;->b0:Z

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    iput v2, p0, Lpe/hf/black20/SplashActivity;->i0:I

    .line 21
    .line 22
    iput v2, p0, Lpe/hf/black20/SplashActivity;->j0:I

    .line 23
    .line 24
    iput v1, p0, Lpe/hf/black20/SplashActivity;->l0:I

    .line 25
    .line 26
    const-string v1, "unknown"

    .line 27
    .line 28
    iput-object v1, p0, Lpe/hf/black20/SplashActivity;->m0:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v0, p0, Lpe/hf/black20/SplashActivity;->n0:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method

.method private static native AN()Ljava/lang/String;
.end method

.method public static a(Lpe/hf/black20/SplashActivity;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lpe/hf/black20/SplashActivity;->AN()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lpe/hf/black20/SplashActivity;->G:Lpe/hf/black20/SplashActivity;

    .line 9
    .line 10
    const v2, 0x7f130021

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 24
    .line 25
    .line 26
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 27
    .line 28
    const-string v2, "MM/dd/yyyy HH:mm:ss"

    .line 29
    .line 30
    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v2, "04/06/2022 23:00:00"

    .line 34
    .line 35
    new-instance v3, Ljava/util/Date;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    new-instance v4, Ljava/util/Date;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v4, Ljava/util/Date;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 52
    .line 53
    .line 54
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 63
    .line 64
    .line 65
    move-result v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const-string v2, "----------------- Date incorrect"

    .line 67
    .line 68
    const-string v3, "XCIPTV_TAG"

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    :try_start_1
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Lpe/hf/black20/util/Methods;->Q(Landroid/content/ContextWrapper;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->h()V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    const-string v0, "Check your internet connection."

    .line 86
    .line 87
    invoke-static {v1, v0}, Lpe/hf/black20/util/Methods;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->l()V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 98
    .line 99
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v1, "Date and Time!"

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    const-string v1, "Please check Date and Time."

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    const-string v1, "OK"

    .line 117
    .line 118
    new-instance v2, LO5/i;

    .line 119
    .line 120
    const/4 v3, 0x2

    .line 121
    invoke-direct {v2, p0, v3}, LO5/i;-><init>(Ljava/lang/Object;I)V

    .line 122
    .line 123
    .line 124
    const/4 p0, -0x3

    .line 125
    invoke-virtual {v0, p0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    .line 130
    .line 131
    :catch_0
    :goto_0
    return-void
.end method

.method public static native papione()Ljava/lang/String;
.end method

.method public static native papitwo()Ljava/lang/String;
.end method


# virtual methods
.method public final b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SplashActivity -- onFailureJson - "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v0, "XCIPTV_TAG"

    .line 16
    .line 17
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string p2, "loginCheckXC"

    .line 24
    .line 25
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-nez p2, :cond_3

    .line 30
    .line 31
    const-string p2, "LicenseCheck"

    .line 32
    .line 33
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string p3, "SplashActivity loginCheckXC  - VolleyError error"

    .line 43
    .line 44
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget p1, p0, Lpe/hf/black20/SplashActivity;->j0:I

    .line 62
    .line 63
    add-int/lit8 p1, p1, 0x1

    .line 64
    .line 65
    iput p1, p0, Lpe/hf/black20/SplashActivity;->j0:I

    .line 66
    .line 67
    const/4 p2, 0x2

    .line 68
    if-ne p1, p2, :cond_1

    .line 69
    .line 70
    invoke-static {}, Lpe/hf/black20/SplashActivity;->papitwo()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lpe/hf/black20/SplashActivity;->n0:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->h()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const/4 p2, 0x3

    .line 81
    if-ne p1, p2, :cond_4

    .line 82
    .line 83
    const-string p1, "SplashActivity - All license servers failed"

    .line 84
    .line 85
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    const-string p1, "SplashActivity -- License Check VolleyGETStringRequest Error, loading cached data"

    .line 89
    .line 90
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->k()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_2

    .line 98
    .line 99
    const-string p2, "SplashActivity - Loading cached data"

    .line 100
    .line 101
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lpe/hf/black20/SplashActivity;->n(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    const-string p1, "SplashActivity - Unable to load cached data. Sending to login"

    .line 109
    .line 110
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->l()V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string p3, "SplashActivity LoginCheckXC  - VolleyError error"

    .line 120
    .line 121
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->l()V

    .line 139
    .line 140
    .line 141
    :cond_4
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "active"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v10, "XCIPTV_TAG"

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "SplashActivity - Found maintenance -----"

    .line 16
    .line 17
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/content/Intent;

    .line 21
    .line 22
    const-class v1, Lpe/hf/black20/MaintenanceActivity;

    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "message"

    .line 28
    .line 29
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const-string v1, "expire"

    .line 33
    .line 34
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_6

    .line 44
    .line 45
    :cond_0
    const-string v0, "SplashActivity - No maintenance -----"

    .line 46
    .line 47
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 51
    .line 52
    const-string v1, "xciptv_profile"

    .line 53
    .line 54
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v2, 0x0

    .line 59
    const-string v3, "otr"

    .line 60
    .line 61
    const-string v4, "m3u"

    .line 62
    .line 63
    const-string v5, "ezserver"

    .line 64
    .line 65
    const-string v6, "ORT_PROFILE"

    .line 66
    .line 67
    const-string v7, "xtreamcodes"

    .line 68
    .line 69
    const-string v8, "ORT_WHICH_PANEL"

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v9, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 78
    .line 79
    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-virtual {v0, v6, v9}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 87
    .line 88
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v9, "(XC)"

    .line 93
    .line 94
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_1

    .line 99
    .line 100
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0, v8, v7}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 109
    .line 110
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string v9, "(EZS)"

    .line 115
    .line 116
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_2

    .line 121
    .line 122
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0, v8, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 131
    .line 132
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const-string v9, "(M3U)"

    .line 137
    .line 138
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_3

    .line 143
    .line 144
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0, v8, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_3
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 153
    .line 154
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const-string v1, "(OTR)"

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_4

    .line 165
    .line 166
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0, v8, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 171
    .line 172
    .line 173
    :cond_4
    :goto_0
    const-string v0, "SplashActivity - Perform Login"

    .line 174
    .line 175
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->I:Lc7/a;

    .line 179
    .line 180
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    const-string v9, "Default (XC)"

    .line 185
    .line 186
    invoke-virtual {v1, v6, v9}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Lc7/a;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const-string v1, "no"

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_5

    .line 201
    .line 202
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->l()V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_6

    .line 206
    .line 207
    :cond_5
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 208
    .line 209
    iget-object v0, v0, Lh7/i;->c:Ljava/lang/String;

    .line 210
    .line 211
    const-string v1, "signed-out"

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_6

    .line 218
    .line 219
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->I:Lc7/a;

    .line 220
    .line 221
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    :try_start_0
    const-string v0, "user_history"

    .line 226
    .line 227
    const-string v3, "username = ?"

    .line 228
    .line 229
    filled-new-array {v1}, [Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v2, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->l()V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_6

    .line 243
    .line 244
    :catchall_0
    move-exception v0

    .line 245
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 246
    .line 247
    .line 248
    throw v0

    .line 249
    :cond_6
    invoke-static {v8, v7, v7}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_9

    .line 254
    .line 255
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 256
    .line 257
    iget-object v0, v0, Lh7/i;->c:Ljava/lang/String;

    .line 258
    .line 259
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    if-eqz v0, :cond_8

    .line 264
    .line 265
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 266
    .line 267
    iget-object v0, v0, Lh7/i;->d:Ljava/lang/String;

    .line 268
    .line 269
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    if-nez v0, :cond_7

    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_7
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->m()V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_6

    .line 280
    .line 281
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->l()V

    .line 282
    .line 283
    .line 284
    goto/16 :goto_6

    .line 285
    .line 286
    :cond_9
    invoke-static {v8, v7, v5}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    const/4 v1, 0x0

    .line 291
    if-eqz v0, :cond_c

    .line 292
    .line 293
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 294
    .line 295
    iget-object v0, v0, Lh7/i;->c:Ljava/lang/String;

    .line 296
    .line 297
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    if-eqz v0, :cond_b

    .line 302
    .line 303
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 304
    .line 305
    iget-object v0, v0, Lh7/i;->d:Ljava/lang/String;

    .line 306
    .line 307
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    if-nez v0, :cond_a

    .line 312
    .line 313
    goto :goto_2

    .line 314
    :cond_a
    new-instance v0, Lb7/J1;

    .line 315
    .line 316
    invoke-direct {v0, p0, v2}, Lb7/J1;-><init>(Lpe/hf/black20/SplashActivity;Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    new-array v1, v1, [Ljava/lang/Void;

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 322
    .line 323
    .line 324
    goto/16 :goto_6

    .line 325
    .line 326
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->l()V

    .line 327
    .line 328
    .line 329
    goto/16 :goto_6

    .line 330
    .line 331
    :cond_c
    invoke-static {v8, v7, v4}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    if-eqz v0, :cond_d

    .line 336
    .line 337
    new-instance v0, Lb7/J1;

    .line 338
    .line 339
    invoke-direct {v0, p0}, Lb7/J1;-><init>(Lpe/hf/black20/SplashActivity;)V

    .line 340
    .line 341
    .line 342
    new-array v1, v1, [Ljava/lang/Void;

    .line 343
    .line 344
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 345
    .line 346
    .line 347
    goto/16 :goto_6

    .line 348
    .line 349
    :cond_d
    invoke-static {v8, v7, v3}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-eqz v0, :cond_11

    .line 354
    .line 355
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 356
    .line 357
    iget-object v0, v0, Lh7/i;->c:Ljava/lang/String;

    .line 358
    .line 359
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    if-eqz v0, :cond_10

    .line 364
    .line 365
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 366
    .line 367
    iget-object v0, v0, Lh7/i;->d:Ljava/lang/String;

    .line 368
    .line 369
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    if-nez v0, :cond_e

    .line 374
    .line 375
    goto/16 :goto_4

    .line 376
    .line 377
    :cond_e
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 378
    .line 379
    const-string v3, "otr_deviceid"

    .line 380
    .line 381
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    if-eqz v0, :cond_f

    .line 386
    .line 387
    const-string v0, "SplashActivity - OTR Device ID found. Perform OTRLogin()"

    .line 388
    .line 389
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 393
    .line 394
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    const-string v2, "version"

    .line 403
    .line 404
    const-string v3, "name"

    .line 405
    .line 406
    const-string v4, "7.0-v"

    .line 407
    .line 408
    iget-object v5, p0, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 409
    .line 410
    iget-object v5, v5, Lh7/i;->e:Ljava/lang/String;

    .line 411
    .line 412
    invoke-static {v5}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    iput-object v5, p0, Lpe/hf/black20/SplashActivity;->Y:Ljava/lang/String;

    .line 417
    .line 418
    iget-object v5, p0, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 419
    .line 420
    iget-object v5, v5, Lh7/i;->c:Ljava/lang/String;

    .line 421
    .line 422
    invoke-static {v5}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    iput-object v5, p0, Lpe/hf/black20/SplashActivity;->W:Ljava/lang/String;

    .line 427
    .line 428
    iget-object v5, p0, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 429
    .line 430
    iget-object v5, v5, Lh7/i;->d:Ljava/lang/String;

    .line 431
    .line 432
    invoke-static {v5}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    iput-object v5, p0, Lpe/hf/black20/SplashActivity;->X:Ljava/lang/String;

    .line 437
    .line 438
    new-instance v5, Lorg/json/JSONObject;

    .line 439
    .line 440
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 441
    .line 442
    .line 443
    new-instance v6, Lorg/json/JSONObject;

    .line 444
    .line 445
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 446
    .line 447
    .line 448
    new-instance v7, Lorg/json/JSONObject;

    .line 449
    .line 450
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 451
    .line 452
    .line 453
    const v8, 0x7f130021

    .line 454
    .line 455
    .line 456
    :try_start_1
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v8

    .line 460
    invoke-virtual {v6, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    .line 462
    .line 463
    new-instance v8, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    const/16 v4, 0x7d1

    .line 469
    .line 470
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    .line 483
    .line 484
    const-string v4, "android"

    .line 485
    .line 486
    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 487
    .line 488
    .line 489
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 490
    .line 491
    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    .line 493
    .line 494
    const-string v2, "arch"

    .line 495
    .line 496
    const-string v3, "os.arch"

    .line 497
    .line 498
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    .line 504
    .line 505
    const-string v2, "ram_total"

    .line 506
    .line 507
    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 508
    .line 509
    .line 510
    const-string v2, "ram_free"

    .line 511
    .line 512
    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 513
    .line 514
    .line 515
    const-string v1, "id"

    .line 516
    .line 517
    invoke-virtual {v7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    .line 519
    .line 520
    const-string v0, "os"

    .line 521
    .line 522
    invoke-virtual {v7, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    .line 524
    .line 525
    const-string v0, "project"

    .line 526
    .line 527
    invoke-virtual {v7, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 528
    .line 529
    .line 530
    const-string v0, "cpu_brand"

    .line 531
    .line 532
    const-string v1, ""

    .line 533
    .line 534
    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 535
    .line 536
    .line 537
    goto :goto_3

    .line 538
    :catch_0
    const-string v0, "SplashActivity - OTR Login - JSONException Error"

    .line 539
    .line 540
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .line 542
    .line 543
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->l()V

    .line 544
    .line 545
    .line 546
    :goto_3
    const-string v0, "SplashActivity -- OTRClientDevice()"

    .line 547
    .line 548
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .line 550
    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 554
    .line 555
    .line 556
    iget-object v1, p0, Lpe/hf/black20/SplashActivity;->Y:Ljava/lang/String;

    .line 557
    .line 558
    const-string v2, "/panel_pro/api/client/login"

    .line 559
    .line 560
    invoke-static {v0, v1, v2}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v6

    .line 564
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/i6;

    .line 565
    .line 566
    const-string v5, "loginCheckOTR"

    .line 567
    .line 568
    iget-object v8, p0, Lpe/hf/black20/SplashActivity;->W:Ljava/lang/String;

    .line 569
    .line 570
    iget-object v9, p0, Lpe/hf/black20/SplashActivity;->X:Ljava/lang/String;

    .line 571
    .line 572
    const/4 v2, 0x1

    .line 573
    move-object v3, p0

    .line 574
    move-object v4, p0

    .line 575
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/i6;-><init>(ILandroid/app/Activity;Lg7/c;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 576
    .line 577
    .line 578
    goto :goto_6

    .line 579
    :catch_1
    const-string v0, "SplashActivity - OTR Panel Client Devices - VolleyGETStringRequest Error"

    .line 580
    .line 581
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    .line 583
    .line 584
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->l()V

    .line 585
    .line 586
    .line 587
    goto :goto_6

    .line 588
    :cond_f
    const-string v0, "SplashActivity - OTR Device ID not found. Sending to Login"

    .line 589
    .line 590
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .line 592
    .line 593
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->l()V

    .line 594
    .line 595
    .line 596
    goto :goto_6

    .line 597
    :cond_10
    :goto_4
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->l()V

    .line 598
    .line 599
    .line 600
    goto :goto_6

    .line 601
    :cond_11
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 602
    .line 603
    iget-object v0, v0, Lh7/i;->c:Ljava/lang/String;

    .line 604
    .line 605
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    if-eqz v0, :cond_13

    .line 610
    .line 611
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 612
    .line 613
    iget-object v0, v0, Lh7/i;->d:Ljava/lang/String;

    .line 614
    .line 615
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    if-nez v0, :cond_12

    .line 620
    .line 621
    goto :goto_5

    .line 622
    :cond_12
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->m()V

    .line 623
    .line 624
    .line 625
    goto :goto_6

    .line 626
    :cond_13
    :goto_5
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->l()V

    .line 627
    .line 628
    .line 629
    :goto_6
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->G:Lpe/hf/black20/SplashActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    const-class v1, Lpe/hf/black20/ORPlayerMainActivity;

    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 24
    .line 25
    const-class v1, Lpe/hf/black20/CategoriesActivity;

    .line 26
    .line 27
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public final e(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SplashActivity - onFailureJson - "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v0, "XCIPTV_TAG"

    .line 16
    .line 17
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string p2, "loginCheckOTR"

    .line 24
    .line 25
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p3, "SplashActivity - LoginCheckOTR  - VolleyError error"

    .line 35
    .line 36
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->l()V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "loginCheckXC"

    .line 5
    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "SplashActivity -- loginCheckXC"

    .line 11
    .line 12
    const-string v2, "XCIPTV_TAG"

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-string v0, "LicenseCheck"

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lpe/hf/black20/SplashActivity;->n(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lpe/hf/black20/SplashActivity;->o(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_1
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public final g(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "loginCheckOTR"

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
    invoke-virtual {p0, p1}, Lpe/hf/black20/SplashActivity;->p(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    const-string p1, "XCIPTV_TAG"

    .line 18
    .line 19
    const-string p2, "SplashActivity -- loginCheckOTR"

    .line 20
    .line 21
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    const v0, 0x7f130021

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, " "

    .line 9
    .line 10
    const-string v2, ""

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lpe/hf/black20/SplashActivity;->G:Lpe/hf/black20/SplashActivity;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "XCIPTV"

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const-string v0, "pe.hf.black20"

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const-string v0, "XCIPTV_TAG"

    .line 39
    .line 40
    const-string v1, "SplashActivity - XCIPTV Player trying to load cache"

    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->k()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    const-string v2, "SplashActivity - XCIPTV Player loading cache"

    .line 52
    .line 53
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Lpe/hf/black20/SplashActivity;->n(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const-string v1, "SplashActivity - XCIPTV Player not loading cache"

    .line 61
    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->i()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->i()V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 9

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    const-string v1, "XCIPTV_TAG"

    .line 4
    .line 5
    const-string v2, "SplashActivity - License Check Running-----------"

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const v2, 0x7f130021

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, " "

    .line 18
    .line 19
    const-string v5, ""

    .line 20
    .line 21
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    sget-object v5, Lpe/hf/black20/util/Config;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v5}, Lpe/hf/black20/util/Methods;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v6, p0, Lpe/hf/black20/SplashActivity;->G:Lpe/hf/black20/SplashActivity;

    .line 51
    .line 52
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-static {v5, v4}, Ld2/v;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 61
    .line 62
    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const/4 v8, 0x2

    .line 67
    invoke-static {v5, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-static {v2, v4}, Ld2/v;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v2, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v6, v4}, Ld2/v;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v4, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    :try_start_0
    invoke-static {v5, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 108
    :catch_0
    nop

    .line 109
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    iget-object v6, p0, Lpe/hf/black20/SplashActivity;->n0:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v6, "ApiIPTV.php?tag=licV4&l="

    .line 120
    .line 121
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    sget-object v6, Lpe/hf/black20/util/Config;->a:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v6}, Lpe/hf/black20/util/Methods;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v6, "&an="

    .line 134
    .line 135
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v3, "&el="

    .line 142
    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v3, "&ea="

    .line 147
    .line 148
    const-string v6, "&eb="

    .line 149
    .line 150
    invoke-static {v0, v5, v3, v2, v6}, Lt/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget-object v2, p0, Lpe/hf/black20/SplashActivity;->n0:Ljava/lang/String;

    .line 161
    .line 162
    const-string v3, "ottrun.com"

    .line 163
    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    const/4 v3, 0x1

    .line 169
    if-nez v2, :cond_1

    .line 170
    .line 171
    iget-object v2, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 172
    .line 173
    const-string v4, "ivl"

    .line 174
    .line 175
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    const/4 v5, 0x0

    .line 180
    if-eqz v2, :cond_0

    .line 181
    .line 182
    iget-object v2, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 183
    .line 184
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    add-int/2addr v2, v3

    .line 189
    goto :goto_1

    .line 190
    :cond_0
    const/4 v2, 0x0

    .line 191
    :goto_1
    iget-object v6, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 192
    .line 193
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    invoke-interface {v6, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 198
    .line 199
    .line 200
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 201
    .line 202
    .line 203
    const/16 v4, 0x32

    .line 204
    .line 205
    if-le v2, v4, :cond_1

    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 208
    .line 209
    .line 210
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 211
    .line 212
    .line 213
    :cond_1
    :try_start_1
    new-instance v2, Ll/x;

    .line 214
    .line 215
    const-string v4, "LicenseCheck"

    .line 216
    .line 217
    invoke-direct {v2, p0, p0, v4, v0}, Ll/x;-><init>(Landroid/app/Activity;Lpe/hf/black20/util/d;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :catch_1
    nop

    .line 222
    const-string v0, "SplashActivity -- License Check VolleyGETStringRequest Error"

    .line 223
    .line 224
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    iget v0, p0, Lpe/hf/black20/SplashActivity;->j0:I

    .line 228
    .line 229
    add-int/2addr v0, v3

    .line 230
    iput v0, p0, Lpe/hf/black20/SplashActivity;->j0:I

    .line 231
    .line 232
    if-ne v0, v8, :cond_2

    .line 233
    .line 234
    invoke-static {}, Lpe/hf/black20/SplashActivity;->papitwo()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iput-object v0, p0, Lpe/hf/black20/SplashActivity;->n0:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->h()V

    .line 241
    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_2
    const/4 v2, 0x3

    .line 245
    if-ne v0, v2, :cond_3

    .line 246
    .line 247
    const-string v0, "SplashActivity - All license servers failed"

    .line 248
    .line 249
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->l()V

    .line 253
    .line 254
    .line 255
    :cond_3
    :goto_2
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "cached_login_response"

    .line 8
    .line 9
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    const-string p1, "cache_timestamp"

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "cached_login_response"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 13
    .line 14
    const-string v3, "cache_timestamp"

    .line 15
    .line 16
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    const-wide/32 v7, 0x240c8400

    .line 36
    .line 37
    .line 38
    sub-long/2addr v5, v3

    .line 39
    cmp-long v0, v5, v7

    .line 40
    .line 41
    if-gez v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 44
    .line 45
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :cond_1
    :goto_0
    return-object v2
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->G:Lpe/hf/black20/SplashActivity;

    .line 2
    .line 3
    const-string v1, "pe.hf.black20"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "tvvodseries_dl_time"

    .line 15
    .line 16
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 17
    .line 18
    .line 19
    const-string v1, "epg_dl_time"

    .line 20
    .line 21
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lpe/hf/black20/util/Methods;->a:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    new-instance v0, Ljava/io/File;

    .line 30
    .line 31
    sget-object v1, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "/files"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->C(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :catch_0
    new-instance v0, Landroid/content/Intent;

    .line 54
    .line 55
    const-class v1, Lpe/hf/black20/LoginActivity;

    .line 56
    .line 57
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final m()V
    .locals 7

    .line 1
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 2
    .line 3
    iget-object v0, v0, Lh7/i;->e:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lpe/hf/black20/SplashActivity;->Y:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 12
    .line 13
    iget-object v0, v0, Lh7/i;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lpe/hf/black20/SplashActivity;->W:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 22
    .line 23
    iget-object v0, v0, Lh7/i;->d:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lpe/hf/black20/SplashActivity;->X:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v1, p0, Lpe/hf/black20/SplashActivity;->W:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v2, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 34
    .line 35
    const-string v3, "send_udid"

    .line 36
    .line 37
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const-string v4, "&password="

    .line 42
    .line 43
    const-string v5, "/player_api.php?username="

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    iget-object v2, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v3, "yes"

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v3, p0, Lpe/hf/black20/SplashActivity;->Y:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v2, v3, v5, v1, v4}, Lt/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, "&uid="

    .line 76
    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 81
    .line 82
    const-string v1, "did"

    .line 83
    .line 84
    invoke-static {v0, v1, v6, v2}, Lcom/google/protobuf/U2;->h(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    iget-object v3, p0, Lpe/hf/black20/SplashActivity;->Y:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v2, v3, v5, v1, v4}, Lt/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    iget-object v3, p0, Lpe/hf/black20/SplashActivity;->Y:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v2, v3, v5, v1, v4}, Lt/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    :goto_0
    :try_start_0
    new-instance v1, Ll/x;

    .line 125
    .line 126
    const-string v2, "loginCheckXC"

    .line 127
    .line 128
    invoke-direct {v1, p0, p0, v2, v0}, Ll/x;-><init>(Landroid/app/Activity;Lpe/hf/black20/util/d;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :catch_0
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->l()V

    .line 133
    .line 134
    .line 135
    const-string v0, "XCIPTV_TAG"

    .line 136
    .line 137
    const-string v1, "SplashActivity --loginCheckXC  VolleyGETStringRequest Error"

    .line 138
    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    :goto_1
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 54

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "exo_hw"

    .line 4
    .line 5
    const-string v3, "mnt_expire"

    .line 6
    .line 7
    const-string v4, "mnt_status"

    .line 8
    .line 9
    const-string v5, "mnt_message"

    .line 10
    .line 11
    const-string v6, "vpn_login_view"

    .line 12
    .line 13
    const-string v7, "send_udid"

    .line 14
    .line 15
    const-string v8, "load_last_channel"

    .line 16
    .line 17
    const-string v9, "stream_type"

    .line 18
    .line 19
    const-string v10, "whichplayer_catchup"

    .line 20
    .line 21
    const-string v11, "whichplayer_series"

    .line 22
    .line 23
    const-string v12, "whichplayer_vod"

    .line 24
    .line 25
    const-string v13, "whichplayer_tv"

    .line 26
    .line 27
    const-string v14, "epg_mode"

    .line 28
    .line 29
    const-string v0, "max_epg_file_size"

    .line 30
    .line 31
    const-string v15, "hide_auto_conn_vpn"

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    const-string v15, "hide_recording"

    .line 36
    .line 37
    move-object/from16 v17, v15

    .line 38
    .line 39
    const-string v15, "hide_other_login_type"

    .line 40
    .line 41
    move-object/from16 v18, v15

    .line 42
    .line 43
    const-string v15, "last_volume"

    .line 44
    .line 45
    move-object/from16 v19, v15

    .line 46
    .line 47
    const-string v15, "btn_fav3"

    .line 48
    .line 49
    move-object/from16 v20, v2

    .line 50
    .line 51
    const-string v2, "socket_url"

    .line 52
    .line 53
    move-object/from16 v21, v3

    .line 54
    .line 55
    const-string v3, "portal5"

    .line 56
    .line 57
    move-object/from16 v22, v4

    .line 58
    .line 59
    const-string v4, "portal4"

    .line 60
    .line 61
    move-object/from16 v23, v5

    .line 62
    .line 63
    const-string v5, "portal3"

    .line 64
    .line 65
    move-object/from16 v24, v6

    .line 66
    .line 67
    const-string v6, "portal2"

    .line 68
    .line 69
    move-object/from16 v25, v7

    .line 70
    .line 71
    const-string v7, "reset_all_settings"

    .line 72
    .line 73
    move-object/from16 v26, v8

    .line 74
    .line 75
    const-string v8, "mqtt_url"

    .line 76
    .line 77
    move-object/from16 v27, v9

    .line 78
    .line 79
    const-string v9, "portal_series"

    .line 80
    .line 81
    move-object/from16 v28, v10

    .line 82
    .line 83
    const-string v10, "portal_vod"

    .line 84
    .line 85
    move-object/from16 v29, v11

    .line 86
    .line 87
    const-string v11, "all_cat"

    .line 88
    .line 89
    move-object/from16 v30, v11

    .line 90
    .line 91
    const-string v11, "show_expire"

    .line 92
    .line 93
    move-object/from16 v31, v12

    .line 94
    .line 95
    const-string v12, "portal"

    .line 96
    .line 97
    move-object/from16 v32, v13

    .line 98
    .line 99
    const-string v13, ""

    .line 100
    .line 101
    move-object/from16 v33, v15

    .line 102
    .line 103
    const-string v15, "agent"

    .line 104
    .line 105
    move-object/from16 v34, v15

    .line 106
    .line 107
    const-string v15, "panel"

    .line 108
    .line 109
    move-object/from16 v35, v2

    .line 110
    .line 111
    const-string v2, "-v7.0-2001"

    .line 112
    .line 113
    move-object/from16 v36, v2

    .line 114
    .line 115
    const-string v2, "MQTT URL - "

    .line 116
    .line 117
    move-object/from16 v37, v2

    .line 118
    .line 119
    const-string v2, "PANEL 5 "

    .line 120
    .line 121
    move-object/from16 v38, v8

    .line 122
    .line 123
    const-string v8, "PANEL 5 "

    .line 124
    .line 125
    move-object/from16 v39, v2

    .line 126
    .line 127
    const-string v2, "PANEL 4 "

    .line 128
    .line 129
    move-object/from16 v40, v8

    .line 130
    .line 131
    const-string v8, "PANEL 4 "

    .line 132
    .line 133
    move-object/from16 v41, v2

    .line 134
    .line 135
    const-string v2, "PANEL 3 "

    .line 136
    .line 137
    move-object/from16 v42, v8

    .line 138
    .line 139
    const-string v8, "PANEL 3 "

    .line 140
    .line 141
    move-object/from16 v43, v2

    .line 142
    .line 143
    const-string v2, "PANEL 2 "

    .line 144
    .line 145
    move-object/from16 v44, v8

    .line 146
    .line 147
    const-string v8, "PANEL 2 "

    .line 148
    .line 149
    move-object/from16 v45, v2

    .line 150
    .line 151
    const-string v2, "PANEL 1 "

    .line 152
    .line 153
    move-object/from16 v46, v8

    .line 154
    .line 155
    const-string v8, "PANEL 1 "

    .line 156
    .line 157
    move-object/from16 v47, v2

    .line 158
    .line 159
    const-string v2, "---------------panel------"

    .line 160
    .line 161
    move-object/from16 v48, v8

    .line 162
    .line 163
    const-string v8, "XCIPTV_TAG"

    .line 164
    .line 165
    move-object/from16 v49, v2

    .line 166
    .line 167
    const-string v2, "SplashActivity - processLicenseCheckResponse-------"

    .line 168
    .line 169
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    iget-object v2, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 173
    .line 174
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    move-object/from16 v50, v9

    .line 179
    .line 180
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lpe/hf/black20/SplashActivity;->j(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    new-instance v9, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_6

    .line 184
    .line 185
    move-object/from16 v51, v10

    .line 186
    .line 187
    :try_start_1
    const-string v10, "ISO-8859-1"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4

    .line 188
    .line 189
    move-object/from16 v52, v3

    .line 190
    .line 191
    move-object/from16 v3, p1

    .line 192
    .line 193
    :try_start_2
    invoke-virtual {v3, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    const-string v10, "UTF-8"

    .line 198
    .line 199
    invoke-direct {v9, v3, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 200
    .line 201
    .line 202
    new-instance v3, Lorg/json/JSONObject;

    .line 203
    .line 204
    invoke-direct {v3, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 208
    .line 209
    const-string v9, "success"

    .line 210
    .line 211
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->U:Ljava/lang/String;

    .line 216
    .line 217
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 218
    .line 219
    const-string v9, "status"

    .line 220
    .line 221
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->V:Ljava/lang/String;

    .line 226
    .line 227
    const v3, 0x7f130021

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->z0:Ljava/lang/String;

    .line 235
    .line 236
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 237
    .line 238
    const-string v9, "cid"

    .line 239
    .line 240
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->A0:Ljava/lang/String;

    .line 245
    .line 246
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 247
    .line 248
    const-string v9, "ip"

    .line 249
    .line 250
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_0

    .line 255
    .line 256
    const-string v3, "public_ip_address"

    .line 257
    .line 258
    iget-object v9, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 259
    .line 260
    const-string v10, "ip"

    .line 261
    .line 262
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    invoke-interface {v2, v3, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 267
    .line 268
    .line 269
    goto :goto_1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    :goto_0
    move-object/from16 v53, v4

    .line 272
    .line 273
    goto/16 :goto_5

    .line 274
    .line 275
    :catch_1
    move-exception v0

    .line 276
    goto :goto_0

    .line 277
    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    iget-object v9, v1, Lpe/hf/black20/SplashActivity;->z0:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    iget-object v9, v1, Lpe/hf/black20/SplashActivity;->A0:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->y0:Ljava/lang/String;

    .line 297
    .line 298
    const-string v9, " "

    .line 299
    .line 300
    invoke-virtual {v3, v9, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->y0:Ljava/lang/String;

    .line 305
    .line 306
    new-instance v3, Lorg/json/JSONObject;

    .line 307
    .line 308
    iget-object v9, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 309
    .line 310
    const-string v10, "app"

    .line 311
    .line 312
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v9

    .line 316
    invoke-static {v9}, Lpe/hf/black20/util/Methods;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v9

    .line 320
    new-instance v10, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 323
    .line 324
    .line 325
    move-object/from16 v53, v4

    .line 326
    .line 327
    :try_start_3
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->y0:Ljava/lang/String;

    .line 328
    .line 329
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    const-string v4, "app"

    .line 333
    .line 334
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    invoke-static {v9, v4}, Ld2/v;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->o0:Lorg/json/JSONObject;

    .line 349
    .line 350
    new-instance v3, Lorg/json/JSONObject;

    .line 351
    .line 352
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 353
    .line 354
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    invoke-static {v4}, Lpe/hf/black20/util/Methods;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    new-instance v9, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    iget-object v10, v1, Lpe/hf/black20/SplashActivity;->y0:Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v9

    .line 379
    invoke-static {v4, v9}, Ld2/v;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 387
    .line 388
    new-instance v3, Lorg/json/JSONObject;

    .line 389
    .line 390
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 391
    .line 392
    const-string v9, "urls"

    .line 393
    .line 394
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    invoke-static {v4}, Lpe/hf/black20/util/Methods;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    new-instance v9, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .line 406
    .line 407
    iget-object v10, v1, Lpe/hf/black20/SplashActivity;->y0:Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v10, "urls"

    .line 413
    .line 414
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v9

    .line 421
    invoke-static {v4, v9}, Ld2/v;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v4

    .line 425
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->q0:Lorg/json/JSONObject;

    .line 429
    .line 430
    new-instance v3, Lorg/json/JSONObject;

    .line 431
    .line 432
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 433
    .line 434
    const-string v9, "button"

    .line 435
    .line 436
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    invoke-static {v4}, Lpe/hf/black20/util/Methods;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    new-instance v9, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .line 448
    .line 449
    iget-object v10, v1, Lpe/hf/black20/SplashActivity;->y0:Ljava/lang/String;

    .line 450
    .line 451
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    const-string v10, "buttons"

    .line 455
    .line 456
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v9

    .line 463
    invoke-static {v4, v9}, Ld2/v;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 471
    .line 472
    new-instance v3, Lorg/json/JSONObject;

    .line 473
    .line 474
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 475
    .line 476
    const-string v9, "settings"

    .line 477
    .line 478
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    invoke-static {v4}, Lpe/hf/black20/util/Methods;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    new-instance v9, Ljava/lang/StringBuilder;

    .line 487
    .line 488
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .line 490
    .line 491
    iget-object v10, v1, Lpe/hf/black20/SplashActivity;->y0:Ljava/lang/String;

    .line 492
    .line 493
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    const-string v10, "sett"

    .line 497
    .line 498
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v9

    .line 505
    invoke-static {v4, v9}, Ld2/v;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 513
    .line 514
    new-instance v3, Lorg/json/JSONObject;

    .line 515
    .line 516
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 517
    .line 518
    const-string v9, "ort_settings"

    .line 519
    .line 520
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v4

    .line 524
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->w0:Lorg/json/JSONObject;

    .line 528
    .line 529
    new-instance v3, Lorg/json/JSONObject;

    .line 530
    .line 531
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 532
    .line 533
    .line 534
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->v0:Lorg/json/JSONObject;

    .line 535
    .line 536
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 537
    .line 538
    const-string v4, "players"

    .line 539
    .line 540
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->v0:Lorg/json/JSONObject;

    .line 545
    .line 546
    new-instance v3, Lorg/json/JSONObject;

    .line 547
    .line 548
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 549
    .line 550
    .line 551
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->x0:Lorg/json/JSONObject;

    .line 552
    .line 553
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 554
    .line 555
    const-string v4, "maintenance"

    .line 556
    .line 557
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 558
    .line 559
    .line 560
    move-result-object v3

    .line 561
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->x0:Lorg/json/JSONObject;

    .line 562
    .line 563
    new-instance v3, Lorg/json/JSONObject;

    .line 564
    .line 565
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 566
    .line 567
    .line 568
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->r0:Lorg/json/JSONObject;

    .line 569
    .line 570
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 571
    .line 572
    const-string v4, "support"

    .line 573
    .line 574
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 575
    .line 576
    .line 577
    move-result-object v3

    .line 578
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->r0:Lorg/json/JSONObject;

    .line 579
    .line 580
    new-instance v3, Lorg/json/JSONObject;

    .line 581
    .line 582
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 583
    .line 584
    .line 585
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->s0:Lorg/json/JSONObject;

    .line 586
    .line 587
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 588
    .line 589
    const-string v4, "others"

    .line 590
    .line 591
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 592
    .line 593
    .line 594
    move-result v3

    .line 595
    if-eqz v3, :cond_5

    .line 596
    .line 597
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 598
    .line 599
    const-string v4, "others"

    .line 600
    .line 601
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    iput-object v3, v1, Lpe/hf/black20/SplashActivity;->s0:Lorg/json/JSONObject;

    .line 606
    .line 607
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 608
    .line 609
    .line 610
    move-result-object v3

    .line 611
    const-string v4, "bg_epg_update"

    .line 612
    .line 613
    iget-object v9, v1, Lpe/hf/black20/SplashActivity;->s0:Lorg/json/JSONObject;

    .line 614
    .line 615
    const-string v10, "bg_epg_update"

    .line 616
    .line 617
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v9

    .line 621
    invoke-virtual {v3, v4, v9}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 622
    .line 623
    .line 624
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->s0:Lorg/json/JSONObject;

    .line 625
    .line 626
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 627
    .line 628
    .line 629
    move-result v3

    .line 630
    if-eqz v3, :cond_3

    .line 631
    .line 632
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->s0:Lorg/json/JSONObject;

    .line 633
    .line 634
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    const-string v4, "yes"

    .line 639
    .line 640
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    move-result v3
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    .line 644
    const-string v4, "reset_all_settings_seq"

    .line 645
    .line 646
    if-eqz v3, :cond_2

    .line 647
    .line 648
    :try_start_4
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 649
    .line 650
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 651
    .line 652
    .line 653
    move-result v3

    .line 654
    if-eqz v3, :cond_1

    .line 655
    .line 656
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->s0:Lorg/json/JSONObject;

    .line 657
    .line 658
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 663
    .line 664
    .line 665
    move-result v3

    .line 666
    iget-object v9, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 667
    .line 668
    const/4 v10, 0x0

    .line 669
    invoke-interface {v9, v4, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v9

    .line 673
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 674
    .line 675
    .line 676
    move-result v9

    .line 677
    if-le v3, v9, :cond_2

    .line 678
    .line 679
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->G:Lpe/hf/black20/SplashActivity;

    .line 680
    .line 681
    invoke-static {v3}, Lpe/hf/black20/util/Methods;->V(Lpe/hf/black20/SplashActivity;)V

    .line 682
    .line 683
    .line 684
    const-wide/16 v9, 0x7d0

    .line 685
    .line 686
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 687
    .line 688
    .line 689
    goto :goto_2

    .line 690
    :catch_2
    move-exception v0

    .line 691
    goto :goto_5

    .line 692
    :catch_3
    move-exception v0

    .line 693
    goto :goto_5

    .line 694
    :cond_1
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->G:Lpe/hf/black20/SplashActivity;

    .line 695
    .line 696
    invoke-static {v3}, Lpe/hf/black20/util/Methods;->V(Lpe/hf/black20/SplashActivity;)V

    .line 697
    .line 698
    .line 699
    const-wide/16 v9, 0x7d0

    .line 700
    .line 701
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 702
    .line 703
    .line 704
    :cond_2
    :goto_2
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->s0:Lorg/json/JSONObject;

    .line 705
    .line 706
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v3

    .line 710
    invoke-interface {v2, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 711
    .line 712
    .line 713
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->s0:Lorg/json/JSONObject;

    .line 714
    .line 715
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v3

    .line 719
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 720
    .line 721
    .line 722
    :cond_3
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->s0:Lorg/json/JSONObject;

    .line 723
    .line 724
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 725
    .line 726
    .line 727
    move-result v3

    .line 728
    if-eqz v3, :cond_5

    .line 729
    .line 730
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->s0:Lorg/json/JSONObject;

    .line 731
    .line 732
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v3

    .line 736
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 737
    .line 738
    .line 739
    goto :goto_6

    .line 740
    :catch_4
    move-exception v0

    .line 741
    :goto_3
    move-object/from16 v52, v3

    .line 742
    .line 743
    goto/16 :goto_0

    .line 744
    .line 745
    :catch_5
    move-exception v0

    .line 746
    goto :goto_3

    .line 747
    :catch_6
    move-exception v0

    .line 748
    :goto_4
    move-object/from16 v52, v3

    .line 749
    .line 750
    move-object/from16 v53, v4

    .line 751
    .line 752
    move-object/from16 v51, v10

    .line 753
    .line 754
    goto :goto_5

    .line 755
    :catch_7
    move-exception v0

    .line 756
    goto :goto_4

    .line 757
    :goto_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    .line 763
    .line 764
    iget v0, v1, Lpe/hf/black20/SplashActivity;->j0:I

    .line 765
    .line 766
    const/4 v3, 0x1

    .line 767
    add-int/2addr v0, v3

    .line 768
    iput v0, v1, Lpe/hf/black20/SplashActivity;->j0:I

    .line 769
    .line 770
    const/4 v3, 0x2

    .line 771
    if-ne v0, v3, :cond_4

    .line 772
    .line 773
    invoke-static {}, Lpe/hf/black20/SplashActivity;->papitwo()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    iput-object v0, v1, Lpe/hf/black20/SplashActivity;->n0:Ljava/lang/String;

    .line 778
    .line 779
    invoke-virtual/range {p0 .. p0}, Lpe/hf/black20/SplashActivity;->h()V

    .line 780
    .line 781
    .line 782
    goto :goto_6

    .line 783
    :cond_4
    const/4 v3, 0x3

    .line 784
    if-ne v0, v3, :cond_5

    .line 785
    .line 786
    const-string v0, "SplashActivity - All Portals Login Failed-------"

    .line 787
    .line 788
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    .line 790
    .line 791
    invoke-virtual/range {p0 .. p0}, Lpe/hf/black20/SplashActivity;->l()V

    .line 792
    .line 793
    .line 794
    :cond_5
    :goto_6
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->U:Ljava/lang/String;

    .line 795
    .line 796
    const-string v3, "1"

    .line 797
    .line 798
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 799
    .line 800
    .line 801
    move-result v0

    .line 802
    if-eqz v0, :cond_45

    .line 803
    .line 804
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->V:Ljava/lang/String;

    .line 805
    .line 806
    const-string v3, "ACTIVE"

    .line 807
    .line 808
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 809
    .line 810
    .line 811
    move-result v0

    .line 812
    if-eqz v0, :cond_45

    .line 813
    .line 814
    :try_start_5
    const-string v0, "customerid"

    .line 815
    .line 816
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->A0:Ljava/lang/String;

    .line 817
    .line 818
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 819
    .line 820
    .line 821
    const-string v0, "appid"

    .line 822
    .line 823
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->o0:Lorg/json/JSONObject;

    .line 824
    .line 825
    const-string v4, "id"

    .line 826
    .line 827
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v3

    .line 831
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 832
    .line 833
    .line 834
    const-string v0, "appname"

    .line 835
    .line 836
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->o0:Lorg/json/JSONObject;

    .line 837
    .line 838
    const-string v4, "appname"

    .line 839
    .line 840
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v3

    .line 844
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 845
    .line 846
    .line 847
    const-string v0, "expire"

    .line 848
    .line 849
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->o0:Lorg/json/JSONObject;

    .line 850
    .line 851
    const-string v4, "expire"

    .line 852
    .line 853
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v3

    .line 857
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 858
    .line 859
    .line 860
    const-string v0, "login_type"

    .line 861
    .line 862
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->o0:Lorg/json/JSONObject;

    .line 863
    .line 864
    const-string v4, "login_type"

    .line 865
    .line 866
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v3

    .line 870
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 871
    .line 872
    .line 873
    const-string v0, "version_code"

    .line 874
    .line 875
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->o0:Lorg/json/JSONObject;

    .line 876
    .line 877
    const-string v4, "version_code"

    .line 878
    .line 879
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v3

    .line 883
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 884
    .line 885
    .line 886
    const-string v0, "filter_status"

    .line 887
    .line 888
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->o0:Lorg/json/JSONObject;

    .line 889
    .line 890
    const-string v4, "filter_status"

    .line 891
    .line 892
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v3

    .line 896
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 897
    .line 898
    .line 899
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->o0:Lorg/json/JSONObject;

    .line 900
    .line 901
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    invoke-interface {v2, v14, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 906
    .line 907
    .line 908
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 909
    .line 910
    .line 911
    move-result-object v0

    .line 912
    const-string v3, "ORT_LIVE_TV_EPG_MODE"

    .line 913
    .line 914
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->o0:Lorg/json/JSONObject;

    .line 915
    .line 916
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v4

    .line 920
    invoke-virtual {v0, v3, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 921
    .line 922
    .line 923
    const-string v0, "apkautoupdate"

    .line 924
    .line 925
    iget-object v3, v1, Lpe/hf/black20/SplashActivity;->o0:Lorg/json/JSONObject;

    .line 926
    .line 927
    const-string v4, "apkautoupdate"

    .line 928
    .line 929
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v3

    .line 933
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 934
    .line 935
    .line 936
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->o0:Lorg/json/JSONObject;

    .line 937
    .line 938
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 943
    .line 944
    .line 945
    move-result v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_c

    .line 946
    const-string v3, "no"

    .line 947
    .line 948
    if-nez v0, :cond_7

    .line 949
    .line 950
    :try_start_6
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->o0:Lorg/json/JSONObject;

    .line 951
    .line 952
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 953
    .line 954
    .line 955
    move-result-object v0

    .line 956
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 957
    .line 958
    .line 959
    move-result v0

    .line 960
    if-nez v0, :cond_7

    .line 961
    .line 962
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->o0:Lorg/json/JSONObject;

    .line 963
    .line 964
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v0

    .line 968
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 969
    .line 970
    .line 971
    move-result v0

    .line 972
    if-nez v0, :cond_6

    .line 973
    .line 974
    goto :goto_7

    .line 975
    :cond_6
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->o0:Lorg/json/JSONObject;

    .line 976
    .line 977
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v0

    .line 981
    invoke-interface {v2, v11, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 982
    .line 983
    .line 984
    goto :goto_8

    .line 985
    :cond_7
    :goto_7
    invoke-interface {v2, v11, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 986
    .line 987
    .line 988
    :goto_8
    const-string v0, "version"

    .line 989
    .line 990
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->m0:Ljava/lang/String;

    .line 991
    .line 992
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 993
    .line 994
    .line 995
    const-string v0, "versioncode"

    .line 996
    .line 997
    iget v4, v1, Lpe/hf/black20/SplashActivity;->l0:I

    .line 998
    .line 999
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v4

    .line 1003
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1004
    .line 1005
    .line 1006
    const-string v0, "support_email"

    .line 1007
    .line 1008
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->r0:Lorg/json/JSONObject;

    .line 1009
    .line 1010
    const-string v7, "support_email"

    .line 1011
    .line 1012
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v4

    .line 1016
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1017
    .line 1018
    .line 1019
    const-string v0, "support_phone"

    .line 1020
    .line 1021
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->r0:Lorg/json/JSONObject;

    .line 1022
    .line 1023
    const-string v7, "support_phone"

    .line 1024
    .line 1025
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v4

    .line 1029
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1030
    .line 1031
    .line 1032
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1033
    .line 1034
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v0

    .line 1038
    invoke-interface {v2, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1039
    .line 1040
    .line 1041
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1042
    .line 1043
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    invoke-interface {v2, v12, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1048
    .line 1049
    .line 1050
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1051
    .line 1052
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v0

    .line 1056
    invoke-interface {v2, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1057
    .line 1058
    .line 1059
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1060
    .line 1061
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v0

    .line 1065
    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1066
    .line 1067
    .line 1068
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1069
    .line 1070
    move-object/from16 v4, v53

    .line 1071
    .line 1072
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v0

    .line 1076
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1077
    .line 1078
    .line 1079
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1080
    .line 1081
    move-object/from16 v7, v52

    .line 1082
    .line 1083
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    invoke-interface {v2, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1088
    .line 1089
    .line 1090
    const-string v0, "portal_name"

    .line 1091
    .line 1092
    iget-object v9, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1093
    .line 1094
    const-string v10, "portal_name"

    .line 1095
    .line 1096
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v9

    .line 1100
    invoke-interface {v2, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1101
    .line 1102
    .line 1103
    const-string v0, "portal2_name"

    .line 1104
    .line 1105
    iget-object v9, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1106
    .line 1107
    const-string v10, "portal2_name"

    .line 1108
    .line 1109
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v9

    .line 1113
    invoke-interface {v2, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1114
    .line 1115
    .line 1116
    const-string v0, "portal3_name"

    .line 1117
    .line 1118
    iget-object v9, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1119
    .line 1120
    const-string v10, "portal3_name"

    .line 1121
    .line 1122
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v9

    .line 1126
    invoke-interface {v2, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1127
    .line 1128
    .line 1129
    const-string v0, "portal4_name"

    .line 1130
    .line 1131
    iget-object v9, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1132
    .line 1133
    const-string v10, "portal4_name"

    .line 1134
    .line 1135
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v9

    .line 1139
    invoke-interface {v2, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1140
    .line 1141
    .line 1142
    const-string v0, "portal5_name"

    .line 1143
    .line 1144
    iget-object v9, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1145
    .line 1146
    const-string v10, "portal5_name"

    .line 1147
    .line 1148
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v9

    .line 1152
    invoke-interface {v2, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1153
    .line 1154
    .line 1155
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1156
    .line 1157
    move-object/from16 v9, v51

    .line 1158
    .line 1159
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v0

    .line 1163
    invoke-interface {v2, v9, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1164
    .line 1165
    .line 1166
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1167
    .line 1168
    move-object/from16 v10, v50

    .line 1169
    .line 1170
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v0

    .line 1174
    invoke-interface {v2, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1175
    .line 1176
    .line 1177
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1178
    .line 1179
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v0

    .line 1183
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1184
    .line 1185
    .line 1186
    move-result v0

    .line 1187
    if-eqz v0, :cond_8

    .line 1188
    .line 1189
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1190
    .line 1191
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v0

    .line 1195
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1196
    .line 1197
    .line 1198
    move-result v0

    .line 1199
    if-nez v0, :cond_9

    .line 1200
    .line 1201
    :cond_8
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v0

    .line 1205
    const-string v11, "ORT_VOD_PORTAL"

    .line 1206
    .line 1207
    iget-object v14, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1208
    .line 1209
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v9

    .line 1213
    invoke-virtual {v0, v11, v9}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 1214
    .line 1215
    .line 1216
    :cond_9
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1217
    .line 1218
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v0

    .line 1222
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1223
    .line 1224
    .line 1225
    move-result v0

    .line 1226
    if-eqz v0, :cond_a

    .line 1227
    .line 1228
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1229
    .line 1230
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v0

    .line 1234
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1235
    .line 1236
    .line 1237
    move-result v0

    .line 1238
    if-nez v0, :cond_b

    .line 1239
    .line 1240
    :cond_a
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    const-string v9, "ORT_SERIES_PORTAL"

    .line 1245
    .line 1246
    iget-object v11, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1247
    .line 1248
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v10

    .line 1252
    invoke-virtual {v0, v9, v10}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 1253
    .line 1254
    .line 1255
    :cond_b
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1256
    .line 1257
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v0

    .line 1261
    const-string v9, "xtreamcodes"

    .line 1262
    .line 1263
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1264
    .line 1265
    .line 1266
    move-result v0

    .line 1267
    if-eqz v0, :cond_c

    .line 1268
    .line 1269
    const-string v0, "(XC)"

    .line 1270
    .line 1271
    goto :goto_9

    .line 1272
    :cond_c
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1273
    .line 1274
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v0

    .line 1278
    const-string v9, "ezserver"

    .line 1279
    .line 1280
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1281
    .line 1282
    .line 1283
    move-result v0

    .line 1284
    if-eqz v0, :cond_d

    .line 1285
    .line 1286
    const-string v0, "(EZS)"

    .line 1287
    .line 1288
    goto :goto_9

    .line 1289
    :cond_d
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1290
    .line 1291
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v0

    .line 1295
    const-string v9, "m3u"

    .line 1296
    .line 1297
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1298
    .line 1299
    .line 1300
    move-result v0

    .line 1301
    if-eqz v0, :cond_e

    .line 1302
    .line 1303
    const-string v0, "(M3U)"

    .line 1304
    .line 1305
    goto :goto_9

    .line 1306
    :cond_e
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1307
    .line 1308
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v0

    .line 1312
    const-string v9, "otr"

    .line 1313
    .line 1314
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1315
    .line 1316
    .line 1317
    move-result v0

    .line 1318
    if-eqz v0, :cond_f

    .line 1319
    .line 1320
    const-string v0, "(OTR)"

    .line 1321
    .line 1322
    goto :goto_9

    .line 1323
    :cond_f
    const-string v0, "(XC)"

    .line 1324
    .line 1325
    :goto_9
    sget-object v9, Lpe/hf/black20/util/Config;->b:Ljava/lang/String;

    .line 1326
    .line 1327
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1328
    .line 1329
    .line 1330
    move-result v9
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_c

    .line 1331
    const-string v10, "0"

    .line 1332
    .line 1333
    if-eqz v9, :cond_15

    .line 1334
    .line 1335
    :try_start_7
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1336
    .line 1337
    move-object/from16 v11, v49

    .line 1338
    .line 1339
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1340
    .line 1341
    .line 1342
    iget-object v11, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1343
    .line 1344
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v11

    .line 1348
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    .line 1350
    .line 1351
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v9

    .line 1355
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    .line 1357
    .line 1358
    const-string v9, "whichPanel"

    .line 1359
    .line 1360
    iget-object v11, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1361
    .line 1362
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v11

    .line 1366
    invoke-interface {v2, v9, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1367
    .line 1368
    .line 1369
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v9

    .line 1373
    const-string v11, "ORT_WHICH_PANEL"

    .line 1374
    .line 1375
    iget-object v14, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1376
    .line 1377
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v14

    .line 1381
    invoke-virtual {v9, v11, v14}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 1382
    .line 1383
    .line 1384
    iget-object v9, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1385
    .line 1386
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v9

    .line 1390
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1391
    .line 1392
    .line 1393
    move-result v9

    .line 1394
    if-eqz v9, :cond_10

    .line 1395
    .line 1396
    iget-object v9, v1, Lpe/hf/black20/SplashActivity;->I:Lc7/a;

    .line 1397
    .line 1398
    move-object/from16 v11, v48

    .line 1399
    .line 1400
    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v11

    .line 1404
    invoke-virtual {v9, v11}, Lc7/a;->c0(Ljava/lang/String;)V

    .line 1405
    .line 1406
    .line 1407
    goto :goto_a

    .line 1408
    :cond_10
    iget-object v9, v1, Lpe/hf/black20/SplashActivity;->I:Lc7/a;

    .line 1409
    .line 1410
    move-object/from16 v11, v47

    .line 1411
    .line 1412
    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v11

    .line 1416
    iget-object v14, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1417
    .line 1418
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v12

    .line 1422
    invoke-static {v12}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v12

    .line 1426
    invoke-virtual {v9, v11, v12}, Lc7/a;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    .line 1428
    .line 1429
    :goto_a
    iget-object v9, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1430
    .line 1431
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v9

    .line 1435
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1436
    .line 1437
    .line 1438
    move-result v9

    .line 1439
    if-eqz v9, :cond_11

    .line 1440
    .line 1441
    iget-object v6, v1, Lpe/hf/black20/SplashActivity;->I:Lc7/a;

    .line 1442
    .line 1443
    move-object/from16 v9, v46

    .line 1444
    .line 1445
    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v9

    .line 1449
    invoke-virtual {v6, v9}, Lc7/a;->c0(Ljava/lang/String;)V

    .line 1450
    .line 1451
    .line 1452
    goto :goto_b

    .line 1453
    :cond_11
    iget-object v9, v1, Lpe/hf/black20/SplashActivity;->I:Lc7/a;

    .line 1454
    .line 1455
    move-object/from16 v11, v45

    .line 1456
    .line 1457
    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v11

    .line 1461
    iget-object v12, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1462
    .line 1463
    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v6

    .line 1467
    invoke-static {v6}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v6

    .line 1471
    invoke-virtual {v9, v11, v6}, Lc7/a;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    .line 1473
    .line 1474
    :goto_b
    iget-object v6, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1475
    .line 1476
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v6

    .line 1480
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1481
    .line 1482
    .line 1483
    move-result v6

    .line 1484
    if-eqz v6, :cond_12

    .line 1485
    .line 1486
    iget-object v5, v1, Lpe/hf/black20/SplashActivity;->I:Lc7/a;

    .line 1487
    .line 1488
    move-object/from16 v6, v44

    .line 1489
    .line 1490
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v6

    .line 1494
    invoke-virtual {v5, v6}, Lc7/a;->c0(Ljava/lang/String;)V

    .line 1495
    .line 1496
    .line 1497
    goto :goto_c

    .line 1498
    :cond_12
    iget-object v6, v1, Lpe/hf/black20/SplashActivity;->I:Lc7/a;

    .line 1499
    .line 1500
    move-object/from16 v9, v43

    .line 1501
    .line 1502
    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v9

    .line 1506
    iget-object v11, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1507
    .line 1508
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v5

    .line 1512
    invoke-static {v5}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v5

    .line 1516
    invoke-virtual {v6, v9, v5}, Lc7/a;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    .line 1518
    .line 1519
    :goto_c
    iget-object v5, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1520
    .line 1521
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v5

    .line 1525
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1526
    .line 1527
    .line 1528
    move-result v5

    .line 1529
    if-eqz v5, :cond_13

    .line 1530
    .line 1531
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->I:Lc7/a;

    .line 1532
    .line 1533
    move-object/from16 v5, v42

    .line 1534
    .line 1535
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v5

    .line 1539
    invoke-virtual {v4, v5}, Lc7/a;->c0(Ljava/lang/String;)V

    .line 1540
    .line 1541
    .line 1542
    goto :goto_d

    .line 1543
    :cond_13
    iget-object v5, v1, Lpe/hf/black20/SplashActivity;->I:Lc7/a;

    .line 1544
    .line 1545
    move-object/from16 v6, v41

    .line 1546
    .line 1547
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v6

    .line 1551
    iget-object v9, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1552
    .line 1553
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v4

    .line 1557
    invoke-static {v4}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v4

    .line 1561
    invoke-virtual {v5, v6, v4}, Lc7/a;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    .line 1563
    .line 1564
    :goto_d
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1565
    .line 1566
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v4

    .line 1570
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1571
    .line 1572
    .line 1573
    move-result v4

    .line 1574
    if-eqz v4, :cond_14

    .line 1575
    .line 1576
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->I:Lc7/a;

    .line 1577
    .line 1578
    move-object/from16 v5, v40

    .line 1579
    .line 1580
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v0

    .line 1584
    invoke-virtual {v4, v0}, Lc7/a;->c0(Ljava/lang/String;)V

    .line 1585
    .line 1586
    .line 1587
    goto :goto_e

    .line 1588
    :cond_14
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->I:Lc7/a;

    .line 1589
    .line 1590
    move-object/from16 v5, v39

    .line 1591
    .line 1592
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v0

    .line 1596
    iget-object v5, v1, Lpe/hf/black20/SplashActivity;->p0:Lorg/json/JSONObject;

    .line 1597
    .line 1598
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1599
    .line 1600
    .line 1601
    move-result-object v5

    .line 1602
    invoke-static {v5}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v5

    .line 1606
    invoke-virtual {v4, v0, v5}, Lc7/a;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    .line 1608
    .line 1609
    :cond_15
    :goto_e
    const-string v0, "apkurl"

    .line 1610
    .line 1611
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->q0:Lorg/json/JSONObject;

    .line 1612
    .line 1613
    const-string v5, "apkurl"

    .line 1614
    .line 1615
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v4

    .line 1619
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1620
    .line 1621
    .line 1622
    const-string v0, "backupurl"

    .line 1623
    .line 1624
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->q0:Lorg/json/JSONObject;

    .line 1625
    .line 1626
    const-string v5, "backupurl"

    .line 1627
    .line 1628
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v4

    .line 1632
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1633
    .line 1634
    .line 1635
    const-string v0, "logurl"

    .line 1636
    .line 1637
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->q0:Lorg/json/JSONObject;

    .line 1638
    .line 1639
    const-string v5, "logurl"

    .line 1640
    .line 1641
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v4

    .line 1645
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1646
    .line 1647
    .line 1648
    const-string v0, "activation_url"

    .line 1649
    .line 1650
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->q0:Lorg/json/JSONObject;

    .line 1651
    .line 1652
    const-string v5, "activation_url"

    .line 1653
    .line 1654
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v4

    .line 1658
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1659
    .line 1660
    .line 1661
    const-string v0, "epg_url"

    .line 1662
    .line 1663
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->q0:Lorg/json/JSONObject;

    .line 1664
    .line 1665
    const-string v5, "epg_url"

    .line 1666
    .line 1667
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v4

    .line 1671
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1672
    .line 1673
    .line 1674
    move-object/from16 v4, v38

    .line 1675
    .line 1676
    invoke-interface {v2, v4, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1677
    .line 1678
    .line 1679
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->q0:Lorg/json/JSONObject;

    .line 1680
    .line 1681
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1682
    .line 1683
    .line 1684
    move-result v0

    .line 1685
    if-eqz v0, :cond_16

    .line 1686
    .line 1687
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->q0:Lorg/json/JSONObject;

    .line 1688
    .line 1689
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v0

    .line 1693
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1694
    .line 1695
    .line 1696
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1697
    .line 1698
    move-object/from16 v5, v37

    .line 1699
    .line 1700
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1701
    .line 1702
    .line 1703
    iget-object v5, v1, Lpe/hf/black20/SplashActivity;->q0:Lorg/json/JSONObject;

    .line 1704
    .line 1705
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v4

    .line 1709
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    .line 1711
    .line 1712
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v0

    .line 1716
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    .line 1718
    .line 1719
    :cond_16
    const-string v0, "ovpn_url"

    .line 1720
    .line 1721
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->q0:Lorg/json/JSONObject;

    .line 1722
    .line 1723
    const-string v5, "ovpn_url"

    .line 1724
    .line 1725
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v4

    .line 1729
    invoke-static {v4}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 1730
    .line 1731
    .line 1732
    move-result-object v4

    .line 1733
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1734
    .line 1735
    .line 1736
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->q0:Lorg/json/JSONObject;

    .line 1737
    .line 1738
    move-object/from16 v4, v35

    .line 1739
    .line 1740
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 1741
    .line 1742
    .line 1743
    move-result v0

    .line 1744
    if-eqz v0, :cond_17

    .line 1745
    .line 1746
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->q0:Lorg/json/JSONObject;

    .line 1747
    .line 1748
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1749
    .line 1750
    .line 1751
    move-result-object v0

    .line 1752
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1753
    .line 1754
    .line 1755
    goto :goto_f

    .line 1756
    :cond_17
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1757
    .line 1758
    .line 1759
    :goto_f
    const-string v0, "btn_live"

    .line 1760
    .line 1761
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 1762
    .line 1763
    const-string v5, "btn_live"

    .line 1764
    .line 1765
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1766
    .line 1767
    .line 1768
    move-result-object v4

    .line 1769
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1770
    .line 1771
    .line 1772
    const-string v0, "btn_live2"

    .line 1773
    .line 1774
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 1775
    .line 1776
    const-string v5, "btn_live2"

    .line 1777
    .line 1778
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v4

    .line 1782
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1783
    .line 1784
    .line 1785
    const-string v0, "btn_live3"

    .line 1786
    .line 1787
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 1788
    .line 1789
    const-string v5, "btn_live3"

    .line 1790
    .line 1791
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1792
    .line 1793
    .line 1794
    move-result-object v4

    .line 1795
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1796
    .line 1797
    .line 1798
    const-string v0, "btn_live4"

    .line 1799
    .line 1800
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 1801
    .line 1802
    const-string v5, "btn_live4"

    .line 1803
    .line 1804
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1805
    .line 1806
    .line 1807
    move-result-object v4

    .line 1808
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1809
    .line 1810
    .line 1811
    const-string v0, "btn_live5"

    .line 1812
    .line 1813
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 1814
    .line 1815
    const-string v5, "btn_live5"

    .line 1816
    .line 1817
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v4

    .line 1821
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1822
    .line 1823
    .line 1824
    const-string v0, "btn_vod"

    .line 1825
    .line 1826
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 1827
    .line 1828
    const-string v5, "btn_vod"

    .line 1829
    .line 1830
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1831
    .line 1832
    .line 1833
    move-result-object v4

    .line 1834
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1835
    .line 1836
    .line 1837
    const-string v0, "btn_vod2"

    .line 1838
    .line 1839
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 1840
    .line 1841
    const-string v5, "btn_vod2"

    .line 1842
    .line 1843
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1844
    .line 1845
    .line 1846
    move-result-object v4

    .line 1847
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1848
    .line 1849
    .line 1850
    const-string v0, "btn_vod3"

    .line 1851
    .line 1852
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 1853
    .line 1854
    const-string v5, "btn_vod3"

    .line 1855
    .line 1856
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1857
    .line 1858
    .line 1859
    move-result-object v4

    .line 1860
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1861
    .line 1862
    .line 1863
    const-string v0, "btn_vod4"

    .line 1864
    .line 1865
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 1866
    .line 1867
    const-string v5, "btn_vod4"

    .line 1868
    .line 1869
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1870
    .line 1871
    .line 1872
    move-result-object v4

    .line 1873
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1874
    .line 1875
    .line 1876
    const-string v0, "btn_vod5"

    .line 1877
    .line 1878
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 1879
    .line 1880
    const-string v5, "btn_vod5"

    .line 1881
    .line 1882
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v4

    .line 1886
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1887
    .line 1888
    .line 1889
    const-string v0, "btn_epg"

    .line 1890
    .line 1891
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 1892
    .line 1893
    const-string v5, "btn_epg"

    .line 1894
    .line 1895
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1896
    .line 1897
    .line 1898
    move-result-object v4

    .line 1899
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1900
    .line 1901
    .line 1902
    const-string v0, "btn_epg2"

    .line 1903
    .line 1904
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 1905
    .line 1906
    const-string v5, "btn_epg2"

    .line 1907
    .line 1908
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1909
    .line 1910
    .line 1911
    move-result-object v4

    .line 1912
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1913
    .line 1914
    .line 1915
    const-string v0, "btn_epg3"

    .line 1916
    .line 1917
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 1918
    .line 1919
    const-string v5, "btn_epg3"

    .line 1920
    .line 1921
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1922
    .line 1923
    .line 1924
    move-result-object v4

    .line 1925
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1926
    .line 1927
    .line 1928
    const-string v0, "btn_epg4"

    .line 1929
    .line 1930
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 1931
    .line 1932
    const-string v5, "btn_epg4"

    .line 1933
    .line 1934
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1935
    .line 1936
    .line 1937
    move-result-object v4

    .line 1938
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1939
    .line 1940
    .line 1941
    const-string v0, "btn_epg5"

    .line 1942
    .line 1943
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 1944
    .line 1945
    const-string v5, "btn_epg5"

    .line 1946
    .line 1947
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1948
    .line 1949
    .line 1950
    move-result-object v4

    .line 1951
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1952
    .line 1953
    .line 1954
    const-string v0, "btn_series"

    .line 1955
    .line 1956
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 1957
    .line 1958
    const-string v5, "btn_series"

    .line 1959
    .line 1960
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1961
    .line 1962
    .line 1963
    move-result-object v4

    .line 1964
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1965
    .line 1966
    .line 1967
    const-string v0, "btn_series2"

    .line 1968
    .line 1969
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 1970
    .line 1971
    const-string v5, "btn_series2"

    .line 1972
    .line 1973
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v4

    .line 1977
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1978
    .line 1979
    .line 1980
    const-string v0, "btn_series3"

    .line 1981
    .line 1982
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 1983
    .line 1984
    const-string v5, "btn_series3"

    .line 1985
    .line 1986
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1987
    .line 1988
    .line 1989
    move-result-object v4

    .line 1990
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1991
    .line 1992
    .line 1993
    const-string v0, "btn_series4"

    .line 1994
    .line 1995
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 1996
    .line 1997
    const-string v5, "btn_series4"

    .line 1998
    .line 1999
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2000
    .line 2001
    .line 2002
    move-result-object v4

    .line 2003
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2004
    .line 2005
    .line 2006
    const-string v0, "btn_series5"

    .line 2007
    .line 2008
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2009
    .line 2010
    const-string v5, "btn_series5"

    .line 2011
    .line 2012
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2013
    .line 2014
    .line 2015
    move-result-object v4

    .line 2016
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2017
    .line 2018
    .line 2019
    const-string v0, "btn_radio"

    .line 2020
    .line 2021
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2022
    .line 2023
    const-string v5, "btn_radio"

    .line 2024
    .line 2025
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2026
    .line 2027
    .line 2028
    move-result-object v4

    .line 2029
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2030
    .line 2031
    .line 2032
    const-string v0, "btn_radio2"

    .line 2033
    .line 2034
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2035
    .line 2036
    const-string v5, "btn_radio2"

    .line 2037
    .line 2038
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2039
    .line 2040
    .line 2041
    move-result-object v4

    .line 2042
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2043
    .line 2044
    .line 2045
    const-string v0, "btn_radio3"

    .line 2046
    .line 2047
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2048
    .line 2049
    const-string v5, "btn_radio3"

    .line 2050
    .line 2051
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2052
    .line 2053
    .line 2054
    move-result-object v4

    .line 2055
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2056
    .line 2057
    .line 2058
    const-string v0, "btn_radio4"

    .line 2059
    .line 2060
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2061
    .line 2062
    const-string v5, "btn_radio4"

    .line 2063
    .line 2064
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2065
    .line 2066
    .line 2067
    move-result-object v4

    .line 2068
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2069
    .line 2070
    .line 2071
    const-string v0, "btn_radio5"

    .line 2072
    .line 2073
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2074
    .line 2075
    const-string v5, "btn_radio5"

    .line 2076
    .line 2077
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2078
    .line 2079
    .line 2080
    move-result-object v4

    .line 2081
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2082
    .line 2083
    .line 2084
    const-string v0, "btn_catchup"

    .line 2085
    .line 2086
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2087
    .line 2088
    const-string v5, "btn_catchup"

    .line 2089
    .line 2090
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2091
    .line 2092
    .line 2093
    move-result-object v4

    .line 2094
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2095
    .line 2096
    .line 2097
    const-string v0, "btn_catchup2"

    .line 2098
    .line 2099
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2100
    .line 2101
    const-string v5, "btn_catchup2"

    .line 2102
    .line 2103
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2104
    .line 2105
    .line 2106
    move-result-object v4

    .line 2107
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2108
    .line 2109
    .line 2110
    const-string v0, "btn_catchup3"

    .line 2111
    .line 2112
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2113
    .line 2114
    const-string v5, "btn_catchup3"

    .line 2115
    .line 2116
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2117
    .line 2118
    .line 2119
    move-result-object v4

    .line 2120
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2121
    .line 2122
    .line 2123
    const-string v0, "btn_catchup4"

    .line 2124
    .line 2125
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2126
    .line 2127
    const-string v5, "btn_catchup4"

    .line 2128
    .line 2129
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2130
    .line 2131
    .line 2132
    move-result-object v4

    .line 2133
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2134
    .line 2135
    .line 2136
    const-string v0, "btn_catchup5"

    .line 2137
    .line 2138
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2139
    .line 2140
    const-string v5, "btn_catchup5"

    .line 2141
    .line 2142
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2143
    .line 2144
    .line 2145
    move-result-object v4

    .line 2146
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2147
    .line 2148
    .line 2149
    const-string v0, "btn_account"

    .line 2150
    .line 2151
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2152
    .line 2153
    const-string v5, "btn_account"

    .line 2154
    .line 2155
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2156
    .line 2157
    .line 2158
    move-result-object v4

    .line 2159
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2160
    .line 2161
    .line 2162
    const-string v0, "btn_account2"

    .line 2163
    .line 2164
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2165
    .line 2166
    const-string v5, "btn_account2"

    .line 2167
    .line 2168
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2169
    .line 2170
    .line 2171
    move-result-object v4

    .line 2172
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2173
    .line 2174
    .line 2175
    const-string v0, "btn_account3"

    .line 2176
    .line 2177
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2178
    .line 2179
    const-string v5, "btn_account3"

    .line 2180
    .line 2181
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2182
    .line 2183
    .line 2184
    move-result-object v4

    .line 2185
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2186
    .line 2187
    .line 2188
    const-string v0, "btn_pr"

    .line 2189
    .line 2190
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2191
    .line 2192
    const-string v5, "btn_pr"

    .line 2193
    .line 2194
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2195
    .line 2196
    .line 2197
    move-result-object v4

    .line 2198
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2199
    .line 2200
    .line 2201
    const-string v0, "btn_rec"

    .line 2202
    .line 2203
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2204
    .line 2205
    const-string v5, "btn_rec"

    .line 2206
    .line 2207
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2208
    .line 2209
    .line 2210
    move-result-object v4

    .line 2211
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2212
    .line 2213
    .line 2214
    const-string v0, "btn_vpn"

    .line 2215
    .line 2216
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2217
    .line 2218
    const-string v5, "btn_vpn"

    .line 2219
    .line 2220
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2221
    .line 2222
    .line 2223
    move-result-object v4

    .line 2224
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2225
    .line 2226
    .line 2227
    const-string v0, "btn_update"

    .line 2228
    .line 2229
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2230
    .line 2231
    const-string v5, "btn_update"

    .line 2232
    .line 2233
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2234
    .line 2235
    .line 2236
    move-result-object v4

    .line 2237
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2238
    .line 2239
    .line 2240
    const-string v0, "btn_noti"

    .line 2241
    .line 2242
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2243
    .line 2244
    const-string v5, "btn_noti"

    .line 2245
    .line 2246
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2247
    .line 2248
    .line 2249
    move-result-object v4

    .line 2250
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2251
    .line 2252
    .line 2253
    const-string v0, "btn_fav"

    .line 2254
    .line 2255
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2256
    .line 2257
    const-string v5, "btn_fav"

    .line 2258
    .line 2259
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2260
    .line 2261
    .line 2262
    move-result-object v4

    .line 2263
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2264
    .line 2265
    .line 2266
    const-string v0, "btn_fav2"

    .line 2267
    .line 2268
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2269
    .line 2270
    const-string v5, "btn_fav2"

    .line 2271
    .line 2272
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2273
    .line 2274
    .line 2275
    move-result-object v4

    .line 2276
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2277
    .line 2278
    .line 2279
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2280
    .line 2281
    move-object/from16 v4, v33

    .line 2282
    .line 2283
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2284
    .line 2285
    .line 2286
    move-result-object v0

    .line 2287
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2288
    .line 2289
    .line 2290
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2291
    .line 2292
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2293
    .line 2294
    .line 2295
    move-result-object v0

    .line 2296
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2297
    .line 2298
    .line 2299
    const-string v0, "ms"

    .line 2300
    .line 2301
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2302
    .line 2303
    const-string v5, "ms"

    .line 2304
    .line 2305
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2306
    .line 2307
    .line 2308
    move-result-object v4

    .line 2309
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2310
    .line 2311
    .line 2312
    const-string v0, "ms2"

    .line 2313
    .line 2314
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2315
    .line 2316
    const-string v5, "ms2"

    .line 2317
    .line 2318
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2319
    .line 2320
    .line 2321
    move-result-object v4

    .line 2322
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2323
    .line 2324
    .line 2325
    const-string v0, "ms3"

    .line 2326
    .line 2327
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2328
    .line 2329
    const-string v5, "ms3"

    .line 2330
    .line 2331
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2332
    .line 2333
    .line 2334
    move-result-object v4

    .line 2335
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2336
    .line 2337
    .line 2338
    const-string v0, "btn_signup"

    .line 2339
    .line 2340
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2341
    .line 2342
    const-string v5, "btn_signup"

    .line 2343
    .line 2344
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2345
    .line 2346
    .line 2347
    move-result-object v4

    .line 2348
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2349
    .line 2350
    .line 2351
    const-string v0, "btn_login_account"

    .line 2352
    .line 2353
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2354
    .line 2355
    const-string v5, "btn_login_account"

    .line 2356
    .line 2357
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2358
    .line 2359
    .line 2360
    move-result-object v4

    .line 2361
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2362
    .line 2363
    .line 2364
    const-string v0, "btn_login_settings"

    .line 2365
    .line 2366
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->t0:Lorg/json/JSONObject;

    .line 2367
    .line 2368
    const-string v5, "btn_login_settings"

    .line 2369
    .line 2370
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2371
    .line 2372
    .line 2373
    move-result-object v4

    .line 2374
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2375
    .line 2376
    .line 2377
    const-string v0, "player"

    .line 2378
    .line 2379
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->v0:Lorg/json/JSONObject;

    .line 2380
    .line 2381
    const-string v5, "player"

    .line 2382
    .line 2383
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2384
    .line 2385
    .line 2386
    move-result-object v4

    .line 2387
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2388
    .line 2389
    .line 2390
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 2391
    .line 2392
    move-object/from16 v4, v32

    .line 2393
    .line 2394
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 2395
    .line 2396
    .line 2397
    move-result v0
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_c

    .line 2398
    const-string v5, "VLC"

    .line 2399
    .line 2400
    const-string v6, "EXO"

    .line 2401
    .line 2402
    if-nez v0, :cond_19

    .line 2403
    .line 2404
    :try_start_8
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->v0:Lorg/json/JSONObject;

    .line 2405
    .line 2406
    const-string v7, "player_tv"

    .line 2407
    .line 2408
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2409
    .line 2410
    .line 2411
    move-result-object v0

    .line 2412
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2413
    .line 2414
    .line 2415
    move-result v0

    .line 2416
    if-eqz v0, :cond_18

    .line 2417
    .line 2418
    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2419
    .line 2420
    .line 2421
    goto :goto_10

    .line 2422
    :cond_18
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2423
    .line 2424
    .line 2425
    :cond_19
    :goto_10
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 2426
    .line 2427
    move-object/from16 v4, v31

    .line 2428
    .line 2429
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 2430
    .line 2431
    .line 2432
    move-result v0

    .line 2433
    if-nez v0, :cond_1b

    .line 2434
    .line 2435
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->v0:Lorg/json/JSONObject;

    .line 2436
    .line 2437
    const-string v7, "player_vod"

    .line 2438
    .line 2439
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2440
    .line 2441
    .line 2442
    move-result-object v0

    .line 2443
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2444
    .line 2445
    .line 2446
    move-result v0

    .line 2447
    if-eqz v0, :cond_1a

    .line 2448
    .line 2449
    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2450
    .line 2451
    .line 2452
    goto :goto_11

    .line 2453
    :cond_1a
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2454
    .line 2455
    .line 2456
    :cond_1b
    :goto_11
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 2457
    .line 2458
    move-object/from16 v4, v29

    .line 2459
    .line 2460
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 2461
    .line 2462
    .line 2463
    move-result v0

    .line 2464
    if-nez v0, :cond_1d

    .line 2465
    .line 2466
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->v0:Lorg/json/JSONObject;

    .line 2467
    .line 2468
    const-string v7, "player_series"

    .line 2469
    .line 2470
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2471
    .line 2472
    .line 2473
    move-result-object v0

    .line 2474
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2475
    .line 2476
    .line 2477
    move-result v0

    .line 2478
    if-eqz v0, :cond_1c

    .line 2479
    .line 2480
    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2481
    .line 2482
    .line 2483
    goto :goto_12

    .line 2484
    :cond_1c
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2485
    .line 2486
    .line 2487
    :cond_1d
    :goto_12
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 2488
    .line 2489
    move-object/from16 v4, v28

    .line 2490
    .line 2491
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 2492
    .line 2493
    .line 2494
    move-result v0

    .line 2495
    if-nez v0, :cond_1f

    .line 2496
    .line 2497
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->v0:Lorg/json/JSONObject;

    .line 2498
    .line 2499
    const-string v7, "player_catchup"

    .line 2500
    .line 2501
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2502
    .line 2503
    .line 2504
    move-result-object v0

    .line 2505
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2506
    .line 2507
    .line 2508
    move-result v0

    .line 2509
    if-eqz v0, :cond_1e

    .line 2510
    .line 2511
    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2512
    .line 2513
    .line 2514
    goto :goto_13

    .line 2515
    :cond_1e
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2516
    .line 2517
    .line 2518
    :cond_1f
    :goto_13
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->v0:Lorg/json/JSONObject;

    .line 2519
    .line 2520
    move-object/from16 v4, v27

    .line 2521
    .line 2522
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2523
    .line 2524
    .line 2525
    move-result-object v0

    .line 2526
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2527
    .line 2528
    .line 2529
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->v0:Lorg/json/JSONObject;

    .line 2530
    .line 2531
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2532
    .line 2533
    .line 2534
    move-result-object v0

    .line 2535
    iput-object v0, v1, Lpe/hf/black20/SplashActivity;->T:Ljava/lang/String;

    .line 2536
    .line 2537
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 2538
    .line 2539
    const-string v4, "streamFormat"

    .line 2540
    .line 2541
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 2542
    .line 2543
    .line 2544
    move-result v0

    .line 2545
    if-eqz v0, :cond_20

    .line 2546
    .line 2547
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->T:Ljava/lang/String;

    .line 2548
    .line 2549
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 2550
    .line 2551
    .line 2552
    move-result v0

    .line 2553
    if-nez v0, :cond_21

    .line 2554
    .line 2555
    :cond_20
    const-string v0, "streamFormat"

    .line 2556
    .line 2557
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->T:Ljava/lang/String;

    .line 2558
    .line 2559
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2560
    .line 2561
    .line 2562
    :cond_21
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2563
    .line 2564
    move-object/from16 v4, v30

    .line 2565
    .line 2566
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2567
    .line 2568
    .line 2569
    move-result-object v0

    .line 2570
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 2571
    .line 2572
    .line 2573
    move-result v0

    .line 2574
    if-nez v0, :cond_23

    .line 2575
    .line 2576
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2577
    .line 2578
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2579
    .line 2580
    .line 2581
    move-result-object v0

    .line 2582
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2583
    .line 2584
    .line 2585
    move-result v0

    .line 2586
    if-nez v0, :cond_23

    .line 2587
    .line 2588
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2589
    .line 2590
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2591
    .line 2592
    .line 2593
    move-result-object v0

    .line 2594
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 2595
    .line 2596
    .line 2597
    move-result v0

    .line 2598
    if-nez v0, :cond_22

    .line 2599
    .line 2600
    goto :goto_14

    .line 2601
    :cond_22
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2602
    .line 2603
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2604
    .line 2605
    .line 2606
    move-result-object v0

    .line 2607
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2608
    .line 2609
    .line 2610
    goto :goto_15

    .line 2611
    :cond_23
    :goto_14
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2612
    .line 2613
    .line 2614
    :goto_15
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2615
    .line 2616
    move-object/from16 v4, v34

    .line 2617
    .line 2618
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2619
    .line 2620
    .line 2621
    move-result-object v0

    .line 2622
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 2623
    .line 2624
    .line 2625
    move-result v0

    .line 2626
    if-nez v0, :cond_25

    .line 2627
    .line 2628
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2629
    .line 2630
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2631
    .line 2632
    .line 2633
    move-result-object v0

    .line 2634
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2635
    .line 2636
    .line 2637
    move-result v0

    .line 2638
    if-nez v0, :cond_25

    .line 2639
    .line 2640
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2641
    .line 2642
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2643
    .line 2644
    .line 2645
    move-result-object v0

    .line 2646
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 2647
    .line 2648
    .line 2649
    move-result v0

    .line 2650
    if-eqz v0, :cond_25

    .line 2651
    .line 2652
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2653
    .line 2654
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2655
    .line 2656
    .line 2657
    move-result-object v0

    .line 2658
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2659
    .line 2660
    .line 2661
    move-result v0

    .line 2662
    if-eqz v0, :cond_24

    .line 2663
    .line 2664
    goto :goto_16

    .line 2665
    :cond_24
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2666
    .line 2667
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2668
    .line 2669
    .line 2670
    move-result-object v0

    .line 2671
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2672
    .line 2673
    .line 2674
    goto :goto_17

    .line 2675
    :cond_25
    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2676
    .line 2677
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2678
    .line 2679
    .line 2680
    sget-object v5, Lpe/hf/black20/util/OTRApp;->G:Landroid/content/Context;

    .line 2681
    .line 2682
    const v6, 0x7f130021

    .line 2683
    .line 2684
    .line 2685
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2686
    .line 2687
    .line 2688
    move-result-object v5

    .line 2689
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2690
    .line 2691
    .line 2692
    move-object/from16 v5, v36

    .line 2693
    .line 2694
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2695
    .line 2696
    .line 2697
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2698
    .line 2699
    .line 2700
    move-result-object v0

    .line 2701
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2702
    .line 2703
    .line 2704
    :goto_17
    const-string v0, "message_enabled"

    .line 2705
    .line 2706
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2707
    .line 2708
    const-string v5, "message_enabled"

    .line 2709
    .line 2710
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2711
    .line 2712
    .line 2713
    move-result-object v4

    .line 2714
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2715
    .line 2716
    .line 2717
    const-string v0, "announcement_enabled"

    .line 2718
    .line 2719
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2720
    .line 2721
    const-string v5, "announcement_enabled"

    .line 2722
    .line 2723
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2724
    .line 2725
    .line 2726
    move-result-object v4

    .line 2727
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2728
    .line 2729
    .line 2730
    const-string v0, "updateuserinfo_enabled"

    .line 2731
    .line 2732
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2733
    .line 2734
    const-string v5, "updateuserinfo_enabled"

    .line 2735
    .line 2736
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2737
    .line 2738
    .line 2739
    move-result-object v4

    .line 2740
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2741
    .line 2742
    .line 2743
    const-string v0, "whatsupcheck_enabled"

    .line 2744
    .line 2745
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2746
    .line 2747
    const-string v5, "whatsupcheck_enabled"

    .line 2748
    .line 2749
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2750
    .line 2751
    .line 2752
    move-result-object v4

    .line 2753
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2754
    .line 2755
    .line 2756
    const-string v0, "login_logo"

    .line 2757
    .line 2758
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2759
    .line 2760
    const-string v5, "login_logo"

    .line 2761
    .line 2762
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2763
    .line 2764
    .line 2765
    move-result-object v4

    .line 2766
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2767
    .line 2768
    .line 2769
    const-string v0, "settings_app"

    .line 2770
    .line 2771
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2772
    .line 2773
    const-string v5, "settings_app"

    .line 2774
    .line 2775
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2776
    .line 2777
    .line 2778
    move-result-object v4

    .line 2779
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2780
    .line 2781
    .line 2782
    const-string v0, "settings_account"

    .line 2783
    .line 2784
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2785
    .line 2786
    const-string v5, "settings_account"

    .line 2787
    .line 2788
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2789
    .line 2790
    .line 2791
    move-result-object v4

    .line 2792
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2793
    .line 2794
    .line 2795
    const-string v0, "logs"

    .line 2796
    .line 2797
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2798
    .line 2799
    const-string v5, "logs"

    .line 2800
    .line 2801
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2802
    .line 2803
    .line 2804
    move-result-object v4

    .line 2805
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2806
    .line 2807
    .line 2808
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 2809
    .line 2810
    const-string v4, "language"

    .line 2811
    .line 2812
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 2813
    .line 2814
    .line 2815
    move-result v0

    .line 2816
    if-nez v0, :cond_26

    .line 2817
    .line 2818
    const-string v0, "language"

    .line 2819
    .line 2820
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2821
    .line 2822
    const-string v5, "app_language"

    .line 2823
    .line 2824
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2825
    .line 2826
    .line 2827
    move-result-object v4

    .line 2828
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2829
    .line 2830
    .line 2831
    :cond_26
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 2832
    .line 2833
    move-object/from16 v4, v26

    .line 2834
    .line 2835
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 2836
    .line 2837
    .line 2838
    move-result v0

    .line 2839
    if-nez v0, :cond_27

    .line 2840
    .line 2841
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2842
    .line 2843
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2844
    .line 2845
    .line 2846
    move-result-object v0

    .line 2847
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2848
    .line 2849
    .line 2850
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 2851
    .line 2852
    .line 2853
    move-result-object v0

    .line 2854
    const-string v4, "ORT_isLoadLastLiveTVChannel"

    .line 2855
    .line 2856
    iget-object v5, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 2857
    .line 2858
    const-string v6, "last_profile"

    .line 2859
    .line 2860
    const/4 v7, 0x0

    .line 2861
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2862
    .line 2863
    .line 2864
    move-result-object v5

    .line 2865
    invoke-virtual {v0, v4, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 2866
    .line 2867
    .line 2868
    :cond_27
    const-string v0, "admob_banner_id"

    .line 2869
    .line 2870
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2871
    .line 2872
    const-string v5, "admob_banner_id"

    .line 2873
    .line 2874
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2875
    .line 2876
    .line 2877
    move-result-object v4

    .line 2878
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2879
    .line 2880
    .line 2881
    const-string v0, "admob_interstitial_id"

    .line 2882
    .line 2883
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2884
    .line 2885
    const-string v5, "admob_interstitial_id"

    .line 2886
    .line 2887
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2888
    .line 2889
    .line 2890
    move-result-object v4

    .line 2891
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2892
    .line 2893
    .line 2894
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2895
    .line 2896
    move-object/from16 v4, v25

    .line 2897
    .line 2898
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 2899
    .line 2900
    .line 2901
    move-result v0

    .line 2902
    if-eqz v0, :cond_28

    .line 2903
    .line 2904
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2905
    .line 2906
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2907
    .line 2908
    .line 2909
    move-result-object v0

    .line 2910
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2911
    .line 2912
    .line 2913
    :cond_28
    const-string v0, "show_cat_count"

    .line 2914
    .line 2915
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2916
    .line 2917
    const-string v5, "show_cat_count"

    .line 2918
    .line 2919
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2920
    .line 2921
    .line 2922
    move-result-object v4

    .line 2923
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2924
    .line 2925
    .line 2926
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2927
    .line 2928
    move-object/from16 v4, v24

    .line 2929
    .line 2930
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 2931
    .line 2932
    .line 2933
    move-result v0

    .line 2934
    if-eqz v0, :cond_29

    .line 2935
    .line 2936
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2937
    .line 2938
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2939
    .line 2940
    .line 2941
    move-result-object v0

    .line 2942
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2943
    .line 2944
    .line 2945
    :cond_29
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 2946
    .line 2947
    const-string v4, "theme"

    .line 2948
    .line 2949
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2950
    .line 2951
    .line 2952
    move-result-object v0

    .line 2953
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 2954
    .line 2955
    .line 2956
    move-result v4

    .line 2957
    const/16 v5, 0x64

    .line 2958
    .line 2959
    if-eq v4, v5, :cond_2a

    .line 2960
    .line 2961
    packed-switch v4, :pswitch_data_0

    .line 2962
    .line 2963
    .line 2964
    goto :goto_18

    .line 2965
    :pswitch_0
    const-string v4, "4"

    .line 2966
    .line 2967
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2968
    .line 2969
    .line 2970
    move-result v0

    .line 2971
    if-eqz v0, :cond_2b

    .line 2972
    .line 2973
    const/4 v0, 0x4

    .line 2974
    goto :goto_19

    .line 2975
    :pswitch_1
    const-string v4, "3"

    .line 2976
    .line 2977
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2978
    .line 2979
    .line 2980
    move-result v0

    .line 2981
    if-eqz v0, :cond_2b

    .line 2982
    .line 2983
    const/4 v0, 0x3

    .line 2984
    goto :goto_19

    .line 2985
    :pswitch_2
    const-string v4, "2"

    .line 2986
    .line 2987
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2988
    .line 2989
    .line 2990
    move-result v0

    .line 2991
    if-eqz v0, :cond_2b

    .line 2992
    .line 2993
    const/4 v0, 0x2

    .line 2994
    goto :goto_19

    .line 2995
    :pswitch_3
    const-string v4, "1"

    .line 2996
    .line 2997
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2998
    .line 2999
    .line 3000
    move-result v0

    .line 3001
    if-eqz v0, :cond_2b

    .line 3002
    .line 3003
    const/4 v0, 0x1

    .line 3004
    goto :goto_19

    .line 3005
    :cond_2a
    const-string v4, "d"

    .line 3006
    .line 3007
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3008
    .line 3009
    .line 3010
    move-result v0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_c

    .line 3011
    if-eqz v0, :cond_2b

    .line 3012
    .line 3013
    const/4 v0, 0x0

    .line 3014
    goto :goto_19

    .line 3015
    :cond_2b
    :goto_18
    const/4 v0, -0x1

    .line 3016
    :goto_19
    const-string v4, "ORT_THEME"

    .line 3017
    .line 3018
    if-eqz v0, :cond_30

    .line 3019
    .line 3020
    const/4 v5, 0x1

    .line 3021
    if-eq v0, v5, :cond_2f

    .line 3022
    .line 3023
    const/4 v5, 0x2

    .line 3024
    if-eq v0, v5, :cond_2e

    .line 3025
    .line 3026
    const/4 v5, 0x3

    .line 3027
    if-eq v0, v5, :cond_2d

    .line 3028
    .line 3029
    const/4 v5, 0x4

    .line 3030
    if-eq v0, v5, :cond_2c

    .line 3031
    .line 3032
    goto :goto_1a

    .line 3033
    :cond_2c
    :try_start_9
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 3034
    .line 3035
    .line 3036
    move-result-object v0

    .line 3037
    const-string v5, "theme_1"

    .line 3038
    .line 3039
    invoke-virtual {v0, v4, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 3040
    .line 3041
    .line 3042
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 3043
    .line 3044
    const-string v4, "new_layout"

    .line 3045
    .line 3046
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 3047
    .line 3048
    .line 3049
    move-result v0

    .line 3050
    if-nez v0, :cond_31

    .line 3051
    .line 3052
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->u0:Lorg/json/JSONObject;

    .line 3053
    .line 3054
    const-string v4, "theme"

    .line 3055
    .line 3056
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3057
    .line 3058
    .line 3059
    move-result-object v0

    .line 3060
    const-string v4, "4"

    .line 3061
    .line 3062
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3063
    .line 3064
    .line 3065
    move-result v0

    .line 3066
    if-eqz v0, :cond_31

    .line 3067
    .line 3068
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 3069
    .line 3070
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 3071
    .line 3072
    .line 3073
    move-result-object v0

    .line 3074
    const-string v4, "new_layout"

    .line 3075
    .line 3076
    const-string v5, "yes"

    .line 3077
    .line 3078
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3079
    .line 3080
    .line 3081
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3082
    .line 3083
    .line 3084
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3085
    .line 3086
    .line 3087
    goto :goto_1a

    .line 3088
    :cond_2d
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 3089
    .line 3090
    .line 3091
    move-result-object v0

    .line 3092
    const-string v5, "theme_3"

    .line 3093
    .line 3094
    invoke-virtual {v0, v4, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 3095
    .line 3096
    .line 3097
    goto :goto_1a

    .line 3098
    :cond_2e
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 3099
    .line 3100
    .line 3101
    move-result-object v0

    .line 3102
    const-string v5, "theme_2"

    .line 3103
    .line 3104
    invoke-virtual {v0, v4, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 3105
    .line 3106
    .line 3107
    goto :goto_1a

    .line 3108
    :cond_2f
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 3109
    .line 3110
    .line 3111
    move-result-object v0

    .line 3112
    const-string v5, "theme_1"

    .line 3113
    .line 3114
    invoke-virtual {v0, v4, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 3115
    .line 3116
    .line 3117
    goto :goto_1a

    .line 3118
    :cond_30
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 3119
    .line 3120
    .line 3121
    move-result-object v0

    .line 3122
    const-string v5, "theme_d"

    .line 3123
    .line 3124
    invoke-virtual {v0, v4, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 3125
    .line 3126
    .line 3127
    :cond_31
    :goto_1a
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->x0:Lorg/json/JSONObject;

    .line 3128
    .line 3129
    move-object/from16 v4, v23

    .line 3130
    .line 3131
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3132
    .line 3133
    .line 3134
    move-result-object v0

    .line 3135
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3136
    .line 3137
    .line 3138
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->x0:Lorg/json/JSONObject;

    .line 3139
    .line 3140
    move-object/from16 v5, v22

    .line 3141
    .line 3142
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3143
    .line 3144
    .line 3145
    move-result-object v0

    .line 3146
    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3147
    .line 3148
    .line 3149
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->x0:Lorg/json/JSONObject;

    .line 3150
    .line 3151
    move-object/from16 v6, v21

    .line 3152
    .line 3153
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3154
    .line 3155
    .line 3156
    move-result-object v0

    .line 3157
    invoke-interface {v2, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3158
    .line 3159
    .line 3160
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->x0:Lorg/json/JSONObject;

    .line 3161
    .line 3162
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3163
    .line 3164
    .line 3165
    move-result-object v0

    .line 3166
    iget-object v5, v1, Lpe/hf/black20/SplashActivity;->x0:Lorg/json/JSONObject;

    .line 3167
    .line 3168
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3169
    .line 3170
    .line 3171
    move-result-object v4

    .line 3172
    iget-object v5, v1, Lpe/hf/black20/SplashActivity;->x0:Lorg/json/JSONObject;

    .line 3173
    .line 3174
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3175
    .line 3176
    .line 3177
    move-result-object v5

    .line 3178
    invoke-virtual {v1, v0, v4, v5}, Lpe/hf/black20/SplashActivity;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_c

    .line 3179
    .line 3180
    .line 3181
    :try_start_a
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 3182
    .line 3183
    move-object/from16 v4, v20

    .line 3184
    .line 3185
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 3186
    .line 3187
    .line 3188
    move-result v0

    .line 3189
    if-nez v0, :cond_32

    .line 3190
    .line 3191
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->w0:Lorg/json/JSONObject;

    .line 3192
    .line 3193
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3194
    .line 3195
    .line 3196
    move-result-object v0

    .line 3197
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3198
    .line 3199
    .line 3200
    :cond_32
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 3201
    .line 3202
    const-string v4, "vlc_hw"

    .line 3203
    .line 3204
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 3205
    .line 3206
    .line 3207
    move-result v0

    .line 3208
    if-nez v0, :cond_33

    .line 3209
    .line 3210
    const-string v0, "vlc_hw"

    .line 3211
    .line 3212
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->w0:Lorg/json/JSONObject;

    .line 3213
    .line 3214
    const-string v5, "vlc_hw"

    .line 3215
    .line 3216
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3217
    .line 3218
    .line 3219
    move-result-object v4

    .line 3220
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3221
    .line 3222
    .line 3223
    :cond_33
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 3224
    .line 3225
    move-object/from16 v4, v19

    .line 3226
    .line 3227
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 3228
    .line 3229
    .line 3230
    move-result v0

    .line 3231
    if-nez v0, :cond_34

    .line 3232
    .line 3233
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->w0:Lorg/json/JSONObject;

    .line 3234
    .line 3235
    const-string v5, "last_volume_exo"

    .line 3236
    .line 3237
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3238
    .line 3239
    .line 3240
    move-result-object v0

    .line 3241
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3242
    .line 3243
    .line 3244
    :cond_34
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 3245
    .line 3246
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 3247
    .line 3248
    .line 3249
    move-result v0

    .line 3250
    if-nez v0, :cond_35

    .line 3251
    .line 3252
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->w0:Lorg/json/JSONObject;

    .line 3253
    .line 3254
    const-string v5, "last_volume_vlc"

    .line 3255
    .line 3256
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3257
    .line 3258
    .line 3259
    move-result-object v0

    .line 3260
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3261
    .line 3262
    .line 3263
    :cond_35
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 3264
    .line 3265
    const-string v4, "plyer_exo_buffer"

    .line 3266
    .line 3267
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 3268
    .line 3269
    .line 3270
    move-result v0

    .line 3271
    if-nez v0, :cond_36

    .line 3272
    .line 3273
    const-string v0, "plyer_exo_buffer"

    .line 3274
    .line 3275
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->w0:Lorg/json/JSONObject;

    .line 3276
    .line 3277
    const-string v5, "plyer_exo_buffer"

    .line 3278
    .line 3279
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3280
    .line 3281
    .line 3282
    move-result-object v4

    .line 3283
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3284
    .line 3285
    .line 3286
    :cond_36
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 3287
    .line 3288
    const-string v4, "plyer_vlc_buffer"

    .line 3289
    .line 3290
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 3291
    .line 3292
    .line 3293
    move-result v0

    .line 3294
    if-nez v0, :cond_37

    .line 3295
    .line 3296
    const-string v0, "plyer_vlc_buffer"

    .line 3297
    .line 3298
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->w0:Lorg/json/JSONObject;

    .line 3299
    .line 3300
    const-string v5, "plyer_vlc_buffer"

    .line 3301
    .line 3302
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3303
    .line 3304
    .line 3305
    move-result-object v4

    .line 3306
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3307
    .line 3308
    .line 3309
    :cond_37
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 3310
    .line 3311
    const-string v4, "video_resize_exo"

    .line 3312
    .line 3313
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 3314
    .line 3315
    .line 3316
    move-result v0

    .line 3317
    if-nez v0, :cond_38

    .line 3318
    .line 3319
    const-string v0, "video_resize_exo"

    .line 3320
    .line 3321
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->w0:Lorg/json/JSONObject;

    .line 3322
    .line 3323
    const-string v5, "video_resize_exo"

    .line 3324
    .line 3325
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3326
    .line 3327
    .line 3328
    move-result-object v4

    .line 3329
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3330
    .line 3331
    .line 3332
    :cond_38
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 3333
    .line 3334
    const-string v4, "video_resize_vlc"

    .line 3335
    .line 3336
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 3337
    .line 3338
    .line 3339
    move-result v0

    .line 3340
    if-nez v0, :cond_39

    .line 3341
    .line 3342
    const-string v0, "video_resize_vlc"

    .line 3343
    .line 3344
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->w0:Lorg/json/JSONObject;

    .line 3345
    .line 3346
    const-string v5, "video_resize_vlc"

    .line 3347
    .line 3348
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3349
    .line 3350
    .line 3351
    move-result-object v4

    .line 3352
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3353
    .line 3354
    .line 3355
    :cond_39
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 3356
    .line 3357
    const-string v4, "video_subtiltes_exo"

    .line 3358
    .line 3359
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 3360
    .line 3361
    .line 3362
    move-result v0

    .line 3363
    if-nez v0, :cond_3a

    .line 3364
    .line 3365
    const-string v0, "video_subtiltes_exo"

    .line 3366
    .line 3367
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->w0:Lorg/json/JSONObject;

    .line 3368
    .line 3369
    const-string v5, "video_subtiltes_exo"

    .line 3370
    .line 3371
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3372
    .line 3373
    .line 3374
    move-result-object v4

    .line 3375
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3376
    .line 3377
    .line 3378
    :cond_3a
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 3379
    .line 3380
    const-string v4, "video_subtiltes_vlc"

    .line 3381
    .line 3382
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 3383
    .line 3384
    .line 3385
    move-result v0

    .line 3386
    if-nez v0, :cond_3b

    .line 3387
    .line 3388
    const-string v0, "video_subtiltes_vlc"

    .line 3389
    .line 3390
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->w0:Lorg/json/JSONObject;

    .line 3391
    .line 3392
    const-string v5, "video_subtiltes_vlc"

    .line 3393
    .line 3394
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3395
    .line 3396
    .line 3397
    move-result-object v4

    .line 3398
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_8

    .line 3399
    .line 3400
    .line 3401
    :catch_8
    :cond_3b
    :try_start_b
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 3402
    .line 3403
    const-string v4, "did"

    .line 3404
    .line 3405
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 3406
    .line 3407
    .line 3408
    move-result v0

    .line 3409
    if-nez v0, :cond_3c

    .line 3410
    .line 3411
    const/16 v0, 0x8

    .line 3412
    .line 3413
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->e(I)Ljava/lang/String;

    .line 3414
    .line 3415
    .line 3416
    move-result-object v0

    .line 3417
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 3418
    .line 3419
    .line 3420
    move-result-object v0

    .line 3421
    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    .line 3422
    .line 3423
    .line 3424
    move-result-object v0

    .line 3425
    const-string v4, "did"

    .line 3426
    .line 3427
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 3428
    .line 3429
    .line 3430
    move-result-object v0

    .line 3431
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3432
    .line 3433
    .line 3434
    :cond_3c
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 3435
    .line 3436
    const-string v4, "admobconfig"

    .line 3437
    .line 3438
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 3439
    .line 3440
    .line 3441
    move-result v0
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_c

    .line 3442
    if-eqz v0, :cond_3d

    .line 3443
    .line 3444
    :try_start_c
    new-instance v0, Lorg/json/JSONObject;

    .line 3445
    .line 3446
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 3447
    .line 3448
    const-string v5, "admobconfig"

    .line 3449
    .line 3450
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3451
    .line 3452
    .line 3453
    move-result-object v4

    .line 3454
    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3455
    .line 3456
    .line 3457
    const-string v4, "AdMob_enabled"

    .line 3458
    .line 3459
    const-string v5, "admob_enabled"

    .line 3460
    .line 3461
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3462
    .line 3463
    .line 3464
    move-result-object v0

    .line 3465
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_9

    .line 3466
    .line 3467
    .line 3468
    goto :goto_1b

    .line 3469
    :catch_9
    :try_start_d
    const-string v0, "AdMob_enabled"

    .line 3470
    .line 3471
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3472
    .line 3473
    .line 3474
    goto :goto_1b

    .line 3475
    :cond_3d
    const-string v0, "AdMob_enabled"

    .line 3476
    .line 3477
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3478
    .line 3479
    .line 3480
    :goto_1b
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 3481
    .line 3482
    const-string v4, "freestar"

    .line 3483
    .line 3484
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 3485
    .line 3486
    .line 3487
    move-result v0

    .line 3488
    if-eqz v0, :cond_3e

    .line 3489
    .line 3490
    const-string v0, "Freestar_enabled"

    .line 3491
    .line 3492
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 3493
    .line 3494
    const-string v5, "freestar"

    .line 3495
    .line 3496
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3497
    .line 3498
    .line 3499
    move-result-object v4

    .line 3500
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3501
    .line 3502
    .line 3503
    goto :goto_1c

    .line 3504
    :cond_3e
    const-string v0, "Freestar_enabled"

    .line 3505
    .line 3506
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3507
    .line 3508
    .line 3509
    :goto_1c
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 3510
    .line 3511
    const-string v4, "prebid"

    .line 3512
    .line 3513
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 3514
    .line 3515
    .line 3516
    move-result v0
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_c

    .line 3517
    if-eqz v0, :cond_3f

    .line 3518
    .line 3519
    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    .line 3520
    .line 3521
    iget-object v4, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 3522
    .line 3523
    const-string v5, "prebid"

    .line 3524
    .line 3525
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3526
    .line 3527
    .line 3528
    move-result-object v4

    .line 3529
    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3530
    .line 3531
    .line 3532
    const-string v4, "Prebid_enabled"

    .line 3533
    .line 3534
    const-string v5, "prebid_enabled"

    .line 3535
    .line 3536
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3537
    .line 3538
    .line 3539
    move-result-object v5

    .line 3540
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3541
    .line 3542
    .line 3543
    const-string v4, "Prebid_Host"

    .line 3544
    .line 3545
    const-string v5, "Host"

    .line 3546
    .line 3547
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3548
    .line 3549
    .line 3550
    move-result-object v5

    .line 3551
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3552
    .line 3553
    .line 3554
    const-string v4, "Prebid_AdUnitId"

    .line 3555
    .line 3556
    const-string v5, "AdUnitId"

    .line 3557
    .line 3558
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3559
    .line 3560
    .line 3561
    move-result-object v5

    .line 3562
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3563
    .line 3564
    .line 3565
    const-string v4, "Prebid_AccountId"

    .line 3566
    .line 3567
    const-string v5, "AccountId"

    .line 3568
    .line 3569
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3570
    .line 3571
    .line 3572
    move-result-object v5

    .line 3573
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3574
    .line 3575
    .line 3576
    const-string v4, "Prebid_Banner"

    .line 3577
    .line 3578
    const-string v5, "Banner"

    .line 3579
    .line 3580
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3581
    .line 3582
    .line 3583
    move-result-object v0

    .line 3584
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_a

    .line 3585
    .line 3586
    .line 3587
    goto :goto_1d

    .line 3588
    :catch_a
    :try_start_f
    const-string v0, "Prebid_enabled"

    .line 3589
    .line 3590
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3591
    .line 3592
    .line 3593
    goto :goto_1d

    .line 3594
    :cond_3f
    const-string v0, "Prebid_enabled"

    .line 3595
    .line 3596
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3597
    .line 3598
    .line 3599
    :goto_1d
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->s0:Lorg/json/JSONObject;

    .line 3600
    .line 3601
    move-object/from16 v4, v18

    .line 3602
    .line 3603
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 3604
    .line 3605
    .line 3606
    move-result v0

    .line 3607
    if-eqz v0, :cond_40

    .line 3608
    .line 3609
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->s0:Lorg/json/JSONObject;

    .line 3610
    .line 3611
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3612
    .line 3613
    .line 3614
    move-result-object v0

    .line 3615
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3616
    .line 3617
    .line 3618
    goto :goto_1e

    .line 3619
    :cond_40
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3620
    .line 3621
    .line 3622
    :goto_1e
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->s0:Lorg/json/JSONObject;

    .line 3623
    .line 3624
    move-object/from16 v4, v17

    .line 3625
    .line 3626
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 3627
    .line 3628
    .line 3629
    move-result v0

    .line 3630
    if-eqz v0, :cond_41

    .line 3631
    .line 3632
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->s0:Lorg/json/JSONObject;

    .line 3633
    .line 3634
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3635
    .line 3636
    .line 3637
    move-result-object v0

    .line 3638
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3639
    .line 3640
    .line 3641
    goto :goto_1f

    .line 3642
    :cond_41
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3643
    .line 3644
    .line 3645
    :goto_1f
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->s0:Lorg/json/JSONObject;

    .line 3646
    .line 3647
    move-object/from16 v4, v16

    .line 3648
    .line 3649
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 3650
    .line 3651
    .line 3652
    move-result v0

    .line 3653
    if-eqz v0, :cond_42

    .line 3654
    .line 3655
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->s0:Lorg/json/JSONObject;

    .line 3656
    .line 3657
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3658
    .line 3659
    .line 3660
    move-result-object v0

    .line 3661
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3662
    .line 3663
    .line 3664
    goto :goto_20

    .line 3665
    :cond_42
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3666
    .line 3667
    .line 3668
    :goto_20
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3669
    .line 3670
    .line 3671
    iget-object v0, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 3672
    .line 3673
    const-string v2, "vastconfig"

    .line 3674
    .line 3675
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 3676
    .line 3677
    .line 3678
    move-result v0
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_c

    .line 3679
    if-eqz v0, :cond_44

    .line 3680
    .line 3681
    :try_start_10
    new-instance v0, Lorg/json/JSONObject;

    .line 3682
    .line 3683
    iget-object v2, v1, Lpe/hf/black20/SplashActivity;->f0:Lorg/json/JSONObject;

    .line 3684
    .line 3685
    const-string v3, "vastconfig"

    .line 3686
    .line 3687
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3688
    .line 3689
    .line 3690
    move-result-object v2

    .line 3691
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3692
    .line 3693
    .line 3694
    const-string v2, "vast_enabled"

    .line 3695
    .line 3696
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 3697
    .line 3698
    .line 3699
    move-result v2

    .line 3700
    if-eqz v2, :cond_43

    .line 3701
    .line 3702
    iget-object v2, v1, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 3703
    .line 3704
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 3705
    .line 3706
    .line 3707
    move-result-object v2

    .line 3708
    const-string v3, "vadse"

    .line 3709
    .line 3710
    const-string v4, "vast_enabled"

    .line 3711
    .line 3712
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3713
    .line 3714
    .line 3715
    move-result-object v4

    .line 3716
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3717
    .line 3718
    .line 3719
    const-string v3, "mri"

    .line 3720
    .line 3721
    const-string v4, "mid_roll_interval"

    .line 3722
    .line 3723
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3724
    .line 3725
    .line 3726
    move-result-object v4

    .line 3727
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3728
    .line 3729
    .line 3730
    const-string v3, "vmri"

    .line 3731
    .line 3732
    const-string v4, "vod_mid_roll_interval"

    .line 3733
    .line 3734
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3735
    .line 3736
    .line 3737
    move-result-object v4

    .line 3738
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3739
    .line 3740
    .line 3741
    const-string v3, "smri"

    .line 3742
    .line 3743
    const-string v4, "series_mid_roll_interval"

    .line 3744
    .line 3745
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3746
    .line 3747
    .line 3748
    move-result-object v4

    .line 3749
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3750
    .line 3751
    .line 3752
    const-string v3, "prsa"

    .line 3753
    .line 3754
    const-string v4, "post_roll_start_at"

    .line 3755
    .line 3756
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3757
    .line 3758
    .line 3759
    move-result-object v4

    .line 3760
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3761
    .line 3762
    .line 3763
    const-string v3, "vpru"

    .line 3764
    .line 3765
    const-string v4, "vod_pre_roll_url"

    .line 3766
    .line 3767
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3768
    .line 3769
    .line 3770
    move-result-object v4

    .line 3771
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3772
    .line 3773
    .line 3774
    const-string v3, "vmru"

    .line 3775
    .line 3776
    const-string v4, "vod_mid_roll_url"

    .line 3777
    .line 3778
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3779
    .line 3780
    .line 3781
    move-result-object v4

    .line 3782
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3783
    .line 3784
    .line 3785
    const-string v3, "vporu"

    .line 3786
    .line 3787
    const-string v4, "vod_post_roll_url"

    .line 3788
    .line 3789
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3790
    .line 3791
    .line 3792
    move-result-object v4

    .line 3793
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3794
    .line 3795
    .line 3796
    const-string v3, "spru"

    .line 3797
    .line 3798
    const-string v4, "series_pre_roll_url"

    .line 3799
    .line 3800
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3801
    .line 3802
    .line 3803
    move-result-object v4

    .line 3804
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3805
    .line 3806
    .line 3807
    const-string v3, "smru"

    .line 3808
    .line 3809
    const-string v4, "series_mid_roll_url"

    .line 3810
    .line 3811
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3812
    .line 3813
    .line 3814
    move-result-object v4

    .line 3815
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3816
    .line 3817
    .line 3818
    const-string v3, "sporu"

    .line 3819
    .line 3820
    const-string v4, "series_post_roll_url"

    .line 3821
    .line 3822
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3823
    .line 3824
    .line 3825
    move-result-object v0

    .line 3826
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3827
    .line 3828
    .line 3829
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3830
    .line 3831
    .line 3832
    goto :goto_21

    .line 3833
    :cond_43
    invoke-virtual/range {p0 .. p0}, Lpe/hf/black20/SplashActivity;->q()V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_b

    .line 3834
    .line 3835
    .line 3836
    goto :goto_21

    .line 3837
    :catch_b
    :try_start_11
    invoke-virtual/range {p0 .. p0}, Lpe/hf/black20/SplashActivity;->q()V

    .line 3838
    .line 3839
    .line 3840
    goto :goto_21

    .line 3841
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lpe/hf/black20/SplashActivity;->q()V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_c

    .line 3842
    .line 3843
    .line 3844
    goto :goto_21

    .line 3845
    :catch_c
    invoke-virtual/range {p0 .. p0}, Lpe/hf/black20/SplashActivity;->l()V

    .line 3846
    .line 3847
    .line 3848
    goto :goto_21

    .line 3849
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lpe/hf/black20/SplashActivity;->l()V

    .line 3850
    .line 3851
    .line 3852
    :goto_21
    return-void

    .line 3853
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ljava/lang/String;)V
    .locals 13

    .line 1
    const-string v0, "status_acc"

    .line 2
    .line 3
    const-string v1, "1"

    .line 4
    .line 5
    const-string v2, "status"

    .line 6
    .line 7
    :try_start_0
    new-instance v3, Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "ISO-8859-1"

    .line 10
    .line 11
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v4, "UTF-8"

    .line 16
    .line 17
    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lorg/json/JSONObject;

    .line 21
    .line 22
    invoke-direct {p1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lpe/hf/black20/SplashActivity;->c0:Lorg/json/JSONObject;

    .line 26
    .line 27
    new-instance p1, Lorg/json/JSONObject;

    .line 28
    .line 29
    iget-object v3, p0, Lpe/hf/black20/SplashActivity;->c0:Lorg/json/JSONObject;

    .line 30
    .line 31
    const-string v4, "user_info"

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-direct {p1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lpe/hf/black20/SplashActivity;->d0:Lorg/json/JSONObject;

    .line 41
    .line 42
    const-string v3, "auth"

    .line 43
    .line 44
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lpe/hf/black20/SplashActivity;->S:Ljava/lang/String;

    .line 49
    .line 50
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->d0:Lorg/json/JSONObject;

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lpe/hf/black20/SplashActivity;->M:Ljava/lang/String;

    .line 57
    .line 58
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->S:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const-string v3, "timezone"

    .line 65
    .line 66
    const-string v4, "created_at"

    .line 67
    .line 68
    const-string v5, "active_cons"

    .line 69
    .line 70
    const-string v6, "Active"

    .line 71
    .line 72
    const-string v7, "max_connections"

    .line 73
    .line 74
    const-string v8, "is_trial"

    .line 75
    .line 76
    const-string v9, "exp_date"

    .line 77
    .line 78
    const-string v10, "message"

    .line 79
    .line 80
    if-eqz p1, :cond_0

    .line 81
    .line 82
    :try_start_1
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->M:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_0

    .line 89
    .line 90
    new-instance p1, Lorg/json/JSONObject;

    .line 91
    .line 92
    iget-object v11, p0, Lpe/hf/black20/SplashActivity;->c0:Lorg/json/JSONObject;

    .line 93
    .line 94
    const-string v12, "server_info"

    .line 95
    .line 96
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    invoke-direct {p1, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Lpe/hf/black20/SplashActivity;->e0:Lorg/json/JSONObject;

    .line 104
    .line 105
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->d0:Lorg/json/JSONObject;

    .line 106
    .line 107
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iput-object p1, p0, Lpe/hf/black20/SplashActivity;->L:Ljava/lang/String;

    .line 112
    .line 113
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->d0:Lorg/json/JSONObject;

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iput-object p1, p0, Lpe/hf/black20/SplashActivity;->M:Ljava/lang/String;

    .line 120
    .line 121
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->d0:Lorg/json/JSONObject;

    .line 122
    .line 123
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iput-object p1, p0, Lpe/hf/black20/SplashActivity;->N:Ljava/lang/String;

    .line 128
    .line 129
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->d0:Lorg/json/JSONObject;

    .line 130
    .line 131
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Lpe/hf/black20/SplashActivity;->O:Ljava/lang/String;

    .line 136
    .line 137
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->d0:Lorg/json/JSONObject;

    .line 138
    .line 139
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iput-object p1, p0, Lpe/hf/black20/SplashActivity;->P:Ljava/lang/String;

    .line 144
    .line 145
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->d0:Lorg/json/JSONObject;

    .line 146
    .line 147
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iput-object p1, p0, Lpe/hf/black20/SplashActivity;->Q:Ljava/lang/String;

    .line 152
    .line 153
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->d0:Lorg/json/JSONObject;

    .line 154
    .line 155
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iput-object p1, p0, Lpe/hf/black20/SplashActivity;->R:Ljava/lang/String;

    .line 160
    .line 161
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->e0:Lorg/json/JSONObject;

    .line 162
    .line 163
    const-string v2, "url"

    .line 164
    .line 165
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->e0:Lorg/json/JSONObject;

    .line 169
    .line 170
    const-string v2, "port"

    .line 171
    .line 172
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->e0:Lorg/json/JSONObject;

    .line 176
    .line 177
    const-string v2, "https_port"

    .line 178
    .line 179
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->e0:Lorg/json/JSONObject;

    .line 183
    .line 184
    const-string v2, "server_protocol"

    .line 185
    .line 186
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->e0:Lorg/json/JSONObject;

    .line 190
    .line 191
    const-string v2, "rtmp_port"

    .line 192
    .line 193
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->e0:Lorg/json/JSONObject;

    .line 197
    .line 198
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    iput-object p1, p0, Lpe/hf/black20/SplashActivity;->Z:Ljava/lang/String;

    .line 203
    .line 204
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->e0:Lorg/json/JSONObject;

    .line 205
    .line 206
    const-string v2, "timestamp_now"

    .line 207
    .line 208
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->e0:Lorg/json/JSONObject;

    .line 212
    .line 213
    const-string v2, "time_now"

    .line 214
    .line 215
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    :cond_0
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->S:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-eqz p1, :cond_3

    .line 225
    .line 226
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->M:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    if-eqz p1, :cond_2

    .line 233
    .line 234
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 235
    .line 236
    iget-object p1, p1, Lh7/i;->e:Ljava/lang/String;

    .line 237
    .line 238
    invoke-static {p1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    iget-object v1, p0, Lpe/hf/black20/SplashActivity;->Y:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-nez p1, :cond_1

    .line 249
    .line 250
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    const-string v1, "ORT_PORTAL_CHANGE"

    .line 255
    .line 256
    const-string v2, "yes"

    .line 257
    .line 258
    invoke-virtual {p1, v1, v2}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 259
    .line 260
    .line 261
    :cond_1
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->I:Lc7/a;

    .line 262
    .line 263
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    const-string v2, "ORT_PROFILE"

    .line 268
    .line 269
    const-string v6, "Default (XC)"

    .line 270
    .line 271
    invoke-virtual {v1, v2, v6}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    iget-object v2, p0, Lpe/hf/black20/SplashActivity;->W:Ljava/lang/String;

    .line 276
    .line 277
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    iget-object v6, p0, Lpe/hf/black20/SplashActivity;->X:Ljava/lang/String;

    .line 282
    .line 283
    invoke-static {v6}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    iget-object v11, p0, Lpe/hf/black20/SplashActivity;->Y:Ljava/lang/String;

    .line 288
    .line 289
    invoke-static {v11}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v11

    .line 293
    invoke-virtual {p1, v1, v2, v6, v11}, Lc7/a;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 297
    .line 298
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    iget-object v1, p0, Lpe/hf/black20/SplashActivity;->L:Ljava/lang/String;

    .line 303
    .line 304
    invoke-interface {p1, v10, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 305
    .line 306
    .line 307
    iget-object v1, p0, Lpe/hf/black20/SplashActivity;->M:Ljava/lang/String;

    .line 308
    .line 309
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 310
    .line 311
    .line 312
    iget-object v1, p0, Lpe/hf/black20/SplashActivity;->N:Ljava/lang/String;

    .line 313
    .line 314
    invoke-interface {p1, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 315
    .line 316
    .line 317
    iget-object v1, p0, Lpe/hf/black20/SplashActivity;->O:Ljava/lang/String;

    .line 318
    .line 319
    invoke-interface {p1, v8, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 320
    .line 321
    .line 322
    iget-object v1, p0, Lpe/hf/black20/SplashActivity;->P:Ljava/lang/String;

    .line 323
    .line 324
    invoke-interface {p1, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 325
    .line 326
    .line 327
    iget-object v1, p0, Lpe/hf/black20/SplashActivity;->Q:Ljava/lang/String;

    .line 328
    .line 329
    invoke-interface {p1, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 330
    .line 331
    .line 332
    iget-object v1, p0, Lpe/hf/black20/SplashActivity;->R:Ljava/lang/String;

    .line 333
    .line 334
    invoke-interface {p1, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 335
    .line 336
    .line 337
    iget-object v1, p0, Lpe/hf/black20/SplashActivity;->Z:Ljava/lang/String;

    .line 338
    .line 339
    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 340
    .line 341
    .line 342
    iget-object v1, p0, Lpe/hf/black20/SplashActivity;->L:Ljava/lang/String;

    .line 343
    .line 344
    invoke-interface {p1, v10, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 345
    .line 346
    .line 347
    iget-object v1, p0, Lpe/hf/black20/SplashActivity;->O:Ljava/lang/String;

    .line 348
    .line 349
    invoke-interface {p1, v8, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 350
    .line 351
    .line 352
    iget-object v1, p0, Lpe/hf/black20/SplashActivity;->R:Ljava/lang/String;

    .line 353
    .line 354
    invoke-interface {p1, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 355
    .line 356
    .line 357
    iget-object v1, p0, Lpe/hf/black20/SplashActivity;->N:Ljava/lang/String;

    .line 358
    .line 359
    invoke-interface {p1, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 360
    .line 361
    .line 362
    iget-object v1, p0, Lpe/hf/black20/SplashActivity;->M:Ljava/lang/String;

    .line 363
    .line 364
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 365
    .line 366
    .line 367
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 368
    .line 369
    const-string v1, "MM/dd/yyyy HH:mm:ss"

    .line 370
    .line 371
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    const-string v1, "last_login_check"

    .line 375
    .line 376
    new-instance v2, Ljava/util/Date;

    .line 377
    .line 378
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 386
    .line 387
    .line 388
    const-string v0, "is_last_login_success"

    .line 389
    .line 390
    const-string v1, "no"

    .line 391
    .line 392
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 393
    .line 394
    .line 395
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 396
    .line 397
    .line 398
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 399
    .line 400
    .line 401
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->d()V

    .line 402
    .line 403
    .line 404
    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->l()V

    .line 406
    .line 407
    .line 408
    goto :goto_0

    .line 409
    :cond_3
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->l()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 410
    .line 411
    .line 412
    goto :goto_0

    .line 413
    :catch_0
    const-string p1, "0"

    .line 414
    .line 415
    iput-object p1, p0, Lpe/hf/black20/SplashActivity;->S:Ljava/lang/String;

    .line 416
    .line 417
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->l()V

    .line 418
    .line 419
    .line 420
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 5
    .line 6
    .line 7
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    const v2, 0x7f0e004f

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 14
    .line 15
    .line 16
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v3, 0x1c

    .line 19
    .line 20
    if-lt v2, v3, :cond_0

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v4}, LN/d0;->s(Landroid/view/WindowManager$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    const v4, 0x7f0b028a

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Landroid/widget/ImageView;

    .line 48
    .line 49
    iget-object v5, v0, Lpe/hf/black20/SplashActivity;->G:Lpe/hf/black20/SplashActivity;

    .line 50
    .line 51
    invoke-static {v5}, Lpe/hf/black20/util/Methods;->R(Landroid/content/Context;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_1

    .line 56
    .line 57
    const v6, 0x7f0805f0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const v6, 0x7f08053b

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const-string v6, "ORT_isLoadLastLiveTVChannel"

    .line 75
    .line 76
    invoke-virtual {v4, v6, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 77
    .line 78
    .line 79
    sput-boolean v1, Lpe/hf/black20/CategoriesActivity;->I0:Z

    .line 80
    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    const-string v4, "XCIPTV_TAG"

    .line 89
    .line 90
    const-string v7, "SplashActivity Started"

    .line 91
    .line 92
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    new-instance v7, Landroid/util/DisplayMetrics;

    .line 96
    .line 97
    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 98
    .line 99
    .line 100
    const/16 v8, 0x1e

    .line 101
    .line 102
    if-lt v2, v8, :cond_2

    .line 103
    .line 104
    invoke-static/range {p0 .. p0}, Lb7/Z;->l(Lpe/hf/black20/SplashActivity;)Landroid/view/Display;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-virtual {v8, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-virtual {v8, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-virtual {v8, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 132
    .line 133
    .line 134
    :goto_1
    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 135
    .line 136
    const-string v8, "pe.hf.black20"

    .line 137
    .line 138
    invoke-virtual {v5, v8, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    iput-object v8, v0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 143
    .line 144
    new-instance v8, Lc7/a;

    .line 145
    .line 146
    invoke-direct {v8, v0, v1}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 147
    .line 148
    .line 149
    iput-object v8, v0, Lpe/hf/black20/SplashActivity;->I:Lc7/a;

    .line 150
    .line 151
    new-instance v8, Lc7/d;

    .line 152
    .line 153
    invoke-direct {v8, v5}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 154
    .line 155
    .line 156
    const v8, 0x7f0b0290

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    check-cast v8, Landroid/widget/ImageView;

    .line 164
    .line 165
    iput-object v8, v0, Lpe/hf/black20/SplashActivity;->h0:Landroid/widget/ImageView;

    .line 166
    .line 167
    const v8, 0x7f0b02a7

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    check-cast v8, Landroid/widget/ImageView;

    .line 175
    .line 176
    iput-object v8, v0, Lpe/hf/black20/SplashActivity;->k0:Landroid/widget/ImageView;

    .line 177
    .line 178
    const/16 v9, 0x8

    .line 179
    .line 180
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    const v8, 0x7f0b02d7

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    check-cast v8, Landroid/widget/FrameLayout;

    .line 191
    .line 192
    iput-object v8, v0, Lpe/hf/black20/SplashActivity;->g0:Landroid/widget/FrameLayout;

    .line 193
    .line 194
    const v8, 0x7f0b03da

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    check-cast v8, Landroid/widget/ProgressBar;

    .line 202
    .line 203
    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    const v8, 0x7f0b02df

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    check-cast v8, Landroid/widget/FrameLayout;

    .line 214
    .line 215
    iput-object v8, v0, Lpe/hf/black20/SplashActivity;->K:Landroid/widget/FrameLayout;

    .line 216
    .line 217
    const v8, 0x7f0b054a

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    check-cast v8, Landroid/widget/TextView;

    .line 225
    .line 226
    iget-object v8, v0, Lpe/hf/black20/SplashActivity;->K:Landroid/widget/FrameLayout;

    .line 227
    .line 228
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    invoke-virtual {v8, v10, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 244
    .line 245
    iput-object v10, v0, Lpe/hf/black20/SplashActivity;->m0:Ljava/lang/String;

    .line 246
    .line 247
    if-lt v2, v3, :cond_3

    .line 248
    .line 249
    invoke-static {v8}, Lm/d;->d(Landroid/content/pm/PackageInfo;)J

    .line 250
    .line 251
    .line 252
    move-result-wide v2

    .line 253
    goto :goto_2

    .line 254
    :cond_3
    iget v2, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 255
    .line 256
    int-to-long v2, v2

    .line 257
    :goto_2
    long-to-int v3, v2

    .line 258
    iput v3, v0, Lpe/hf/black20/SplashActivity;->l0:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :catch_0
    const-string v2, "SplashActivity - Unable to get Version Code and Version"

    .line 262
    .line 263
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    :goto_3
    iget-object v2, v0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 267
    .line 268
    const-string v3, "xciptv_profile"

    .line 269
    .line 270
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    const-string v8, "yes"

    .line 275
    .line 276
    const-string v10, "ORT_WHICH_PANEL"

    .line 277
    .line 278
    const-string v11, "Default (XC)"

    .line 279
    .line 280
    const/4 v12, 0x0

    .line 281
    const-string v13, "ORT_PROFILE"

    .line 282
    .line 283
    if-eqz v2, :cond_5

    .line 284
    .line 285
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    iget-object v14, v0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 290
    .line 291
    invoke-interface {v14, v3, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-virtual {v2, v13, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 296
    .line 297
    .line 298
    iget-object v2, v0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 299
    .line 300
    const-string v3, "whichPanel"

    .line 301
    .line 302
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-eqz v2, :cond_4

    .line 307
    .line 308
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    iget-object v14, v0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 313
    .line 314
    invoke-interface {v14, v3, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-virtual {v2, v10, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 319
    .line 320
    .line 321
    :cond_4
    iget-object v2, v0, Lpe/hf/black20/SplashActivity;->I:Lc7/a;

    .line 322
    .line 323
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    invoke-virtual {v3, v13, v11}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    invoke-virtual {v2, v3}, Lc7/a;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    if-eqz v2, :cond_5

    .line 340
    .line 341
    iget-object v2, v0, Lpe/hf/black20/SplashActivity;->I:Lc7/a;

    .line 342
    .line 343
    invoke-static {v13, v11, v2}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    iput-object v2, v0, Lpe/hf/black20/SplashActivity;->J:Lh7/i;

    .line 348
    .line 349
    :cond_5
    sget-object v2, Lpe/hf/black20/util/Config;->b:Ljava/lang/String;

    .line 350
    .line 351
    const-string v3, "no"

    .line 352
    .line 353
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-eqz v2, :cond_6

    .line 358
    .line 359
    iget-object v2, v0, Lpe/hf/black20/SplashActivity;->h0:Landroid/widget/ImageView;

    .line 360
    .line 361
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    .line 363
    .line 364
    :cond_6
    iget-object v2, v0, Lpe/hf/black20/SplashActivity;->g0:Landroid/widget/FrameLayout;

    .line 365
    .line 366
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 371
    .line 372
    int-to-double v14, v7

    .line 373
    const-wide/high16 v16, 0x401b000000000000L    # 6.75

    .line 374
    .line 375
    div-double v14, v14, v16

    .line 376
    .line 377
    double-to-int v7, v14

    .line 378
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 379
    .line 380
    iget-object v7, v0, Lpe/hf/black20/SplashActivity;->g0:Landroid/widget/FrameLayout;

    .line 381
    .line 382
    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    .line 384
    .line 385
    const-string v2, "uimode"

    .line 386
    .line 387
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    check-cast v2, Landroid/app/UiModeManager;

    .line 392
    .line 393
    invoke-virtual {v2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    const/4 v7, 0x4

    .line 398
    const-string v9, "TV"

    .line 399
    .line 400
    const-string v14, "ORT_DEVICE_TYPE"

    .line 401
    .line 402
    if-ne v2, v7, :cond_7

    .line 403
    .line 404
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    invoke-virtual {v2, v14, v9}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 409
    .line 410
    .line 411
    const-string v2, "SplashActivity - Running on a TV Device"

    .line 412
    .line 413
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .line 415
    .line 416
    goto :goto_4

    .line 417
    :cond_7
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    const-string v7, "NON-TV"

    .line 422
    .line 423
    invoke-virtual {v2, v14, v7}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 424
    .line 425
    .line 426
    const-string v2, "SplashActivity - Running on a non-TV Device"

    .line 427
    .line 428
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    :goto_4
    iget-object v2, v0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 432
    .line 433
    const-string v7, "parental_contorl"

    .line 434
    .line 435
    invoke-interface {v2, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    const-string v15, "0000"

    .line 440
    .line 441
    const-string v1, "ORT_PARENTAL_CONTROL"

    .line 442
    .line 443
    if-eqz v2, :cond_8

    .line 444
    .line 445
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    move-object/from16 p1, v6

    .line 450
    .line 451
    iget-object v6, v0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 452
    .line 453
    invoke-interface {v6, v7, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v6

    .line 457
    invoke-virtual {v2, v1, v6}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 458
    .line 459
    .line 460
    goto :goto_5

    .line 461
    :cond_8
    move-object/from16 p1, v6

    .line 462
    .line 463
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    invoke-virtual {v2, v1, v15}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 468
    .line 469
    .line 470
    :goto_5
    invoke-static {}, Lpe/hf/black20/SplashActivity;->papione()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    iput-object v2, v0, Lpe/hf/black20/SplashActivity;->n0:Ljava/lang/String;

    .line 475
    .line 476
    invoke-static {v5}, Lpe/hf/black20/util/Methods;->Q(Landroid/content/ContextWrapper;)Z

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    if-eqz v2, :cond_9

    .line 481
    .line 482
    new-instance v2, Landroid/os/Handler;

    .line 483
    .line 484
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 485
    .line 486
    .line 487
    new-instance v5, Lcom/google/android/gms/internal/cast/X;

    .line 488
    .line 489
    const/16 v6, 0x18

    .line 490
    .line 491
    invoke-direct {v5, v0, v6}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 492
    .line 493
    .line 494
    const-wide/16 v6, 0x7d0

    .line 495
    .line 496
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 497
    .line 498
    .line 499
    const-string v2, "SplashActivity - Network Available"

    .line 500
    .line 501
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .line 503
    .line 504
    goto :goto_6

    .line 505
    :cond_9
    const v2, 0x7f13016a

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    invoke-static {v5, v2}, Lpe/hf/black20/util/Methods;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    :goto_6
    iget-object v2, v0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 516
    .line 517
    const-string v4, "auto_start"

    .line 518
    .line 519
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 520
    .line 521
    .line 522
    move-result v2

    .line 523
    if-nez v2, :cond_a

    .line 524
    .line 525
    iget-object v2, v0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 526
    .line 527
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 532
    .line 533
    .line 534
    move-result-object v5

    .line 535
    const-string v6, "ORT_AUTO_START_AFTER_REBOOT"

    .line 536
    .line 537
    invoke-virtual {v5, v6, v3}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v5

    .line 541
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 542
    .line 543
    .line 544
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 545
    .line 546
    .line 547
    :cond_a
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    const-string v4, "ORT_WHICH_CAT"

    .line 552
    .line 553
    invoke-virtual {v2, v4, v9}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 554
    .line 555
    .line 556
    const-string v4, "ORT_CAT_NAME"

    .line 557
    .line 558
    const-string v5, ""

    .line 559
    .line 560
    invoke-virtual {v2, v4, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v2, v1, v15}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 564
    .line 565
    .line 566
    const-string v1, "ORT_PARENTAL_CONTROL_STATUS"

    .line 567
    .line 568
    const-string v4, "locked"

    .line 569
    .line 570
    invoke-virtual {v2, v1, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 571
    .line 572
    .line 573
    const-string v1, "ORT_WHICH_PLAYER"

    .line 574
    .line 575
    const-string v4, "EXO"

    .line 576
    .line 577
    invoke-virtual {v2, v1, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v2, v14, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 581
    .line 582
    .line 583
    const-string v1, "ORT_PORTAL_CHANGE"

    .line 584
    .line 585
    invoke-virtual {v2, v1, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 586
    .line 587
    .line 588
    const-string v1, "ORT_FOOTER_LOGO"

    .line 589
    .line 590
    invoke-virtual {v2, v1, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v2, v13, v11}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 594
    .line 595
    .line 596
    const-string v1, "ORT_PROFILE_ID"

    .line 597
    .line 598
    invoke-virtual {v2, v1, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 599
    .line 600
    .line 601
    const-string v1, "ORT_PROFILE_SERVER"

    .line 602
    .line 603
    invoke-virtual {v2, v1, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 604
    .line 605
    .line 606
    const-string v1, "ORT_PROFILE_USERNAME"

    .line 607
    .line 608
    invoke-virtual {v2, v1, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 609
    .line 610
    .line 611
    const-string v1, "ORT_PROFILE_PASSWORD"

    .line 612
    .line 613
    invoke-virtual {v2, v1, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 614
    .line 615
    .line 616
    const-string v1, "ORT_SERIES_PORTAL"

    .line 617
    .line 618
    invoke-virtual {v2, v1, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 619
    .line 620
    .line 621
    const-string v1, "ORT_VOD_PORTAL"

    .line 622
    .line 623
    invoke-virtual {v2, v1, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 624
    .line 625
    .line 626
    const-string v1, "ORT_LIVE_TV_EPG_MODE"

    .line 627
    .line 628
    invoke-virtual {v2, v1, v8}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 629
    .line 630
    .line 631
    const-string v1, "ORT_SLEEP_MODE"

    .line 632
    .line 633
    const-string v4, "on"

    .line 634
    .line 635
    invoke-virtual {v2, v1, v4}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 636
    .line 637
    .line 638
    const-string v4, "ORT_LIVETV_MEDIACONTORL"

    .line 639
    .line 640
    const-string v6, "off"

    .line 641
    .line 642
    invoke-virtual {v2, v4, v6}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 643
    .line 644
    .line 645
    const-string v4, "ORT_TIME_FORMAT"

    .line 646
    .line 647
    const-string v6, "12"

    .line 648
    .line 649
    invoke-virtual {v2, v4, v6}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 650
    .line 651
    .line 652
    const-string v6, "xtreamcodes"

    .line 653
    .line 654
    invoke-virtual {v2, v10, v6}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 655
    .line 656
    .line 657
    const-string v6, "ORT_LAST_PROGRAM_REMINDER_ID"

    .line 658
    .line 659
    const-string v7, "0"

    .line 660
    .line 661
    invoke-virtual {v2, v6, v7}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 662
    .line 663
    .line 664
    const-string v6, "ORT_LAST_PROFILE"

    .line 665
    .line 666
    invoke-virtual {v2, v6, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 667
    .line 668
    .line 669
    const-string v6, "ORT_LAST_CHANNEL_NAME"

    .line 670
    .line 671
    invoke-virtual {v2, v6, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 672
    .line 673
    .line 674
    const-string v6, "ORT_LAST_CATEGORY_NAME"

    .line 675
    .line 676
    invoke-virtual {v2, v6, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 677
    .line 678
    .line 679
    const-string v6, "ORT_LAST_CATEGORY_ID"

    .line 680
    .line 681
    invoke-virtual {v2, v6, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 682
    .line 683
    .line 684
    const-string v6, "ORT_LAST_STREAM_ID"

    .line 685
    .line 686
    invoke-virtual {v2, v6, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 687
    .line 688
    .line 689
    const-string v6, "ORT_LAST_STREAM_URL"

    .line 690
    .line 691
    invoke-virtual {v2, v6, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 692
    .line 693
    .line 694
    const-string v6, "ORT_LAST_CHANNEL_POS"

    .line 695
    .line 696
    invoke-virtual {v2, v6, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 697
    .line 698
    .line 699
    const-string v6, "ORT_LAST_CATEGORY_POS"

    .line 700
    .line 701
    invoke-virtual {v2, v6, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 702
    .line 703
    .line 704
    const-string v6, "ORT_USER_ONLINE_STATUS"

    .line 705
    .line 706
    invoke-virtual {v2, v6, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 707
    .line 708
    .line 709
    const-string v3, "ORT_lastProgramReminderID"

    .line 710
    .line 711
    invoke-virtual {v2, v3, v7}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 712
    .line 713
    .line 714
    const-string v3, "ORT_PROGRAM_REMINDER_CHANNEL_POS"

    .line 715
    .line 716
    const/4 v6, 0x0

    .line 717
    invoke-virtual {v2, v6, v3}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 718
    .line 719
    .line 720
    const-string v3, "ORT_PROCESS_STATUS"

    .line 721
    .line 722
    invoke-virtual {v2, v6, v3}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 723
    .line 724
    .line 725
    const-string v3, "ORT_SELECTED_POS"

    .line 726
    .line 727
    const v7, 0x499602d2

    .line 728
    .line 729
    .line 730
    invoke-virtual {v2, v7, v3}, LQ5/a;->f(ILjava/lang/String;)LQ5/a;

    .line 731
    .line 732
    .line 733
    const-string v3, "ORT_SPLASH_LOGO"

    .line 734
    .line 735
    const/4 v7, 0x1

    .line 736
    invoke-virtual {v2, v3, v7}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 737
    .line 738
    .line 739
    const-string v8, "ORT_isRecordingRunning"

    .line 740
    .line 741
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 742
    .line 743
    .line 744
    const-string v8, "ORT_isCategoriesActivityVisible"

    .line 745
    .line 746
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 747
    .line 748
    .line 749
    const-string v8, "ORT_isChannelListActivityVisible"

    .line 750
    .line 751
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 752
    .line 753
    .line 754
    const-string v8, "ORT_isPlayStreamEPGActivityVisible"

    .line 755
    .line 756
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 757
    .line 758
    .line 759
    const-string v8, "ORT_isRecordsActivityVisible"

    .line 760
    .line 761
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 762
    .line 763
    .line 764
    const-string v8, "ORT_isChannelPickerActivityVisible"

    .line 765
    .line 766
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 767
    .line 768
    .line 769
    const-string v8, "ORT_isOpenVPNActivityVisible"

    .line 770
    .line 771
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 772
    .line 773
    .line 774
    const-string v8, "ORT_isUsersHistoryActivityVisible"

    .line 775
    .line 776
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 777
    .line 778
    .line 779
    const-string v8, "ORT_isSettingsMenuActivityVisible"

    .line 780
    .line 781
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 782
    .line 783
    .line 784
    const-string v8, "ORT_isParentalControlActivityVisible"

    .line 785
    .line 786
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 787
    .line 788
    .line 789
    const-string v8, "ORT_isBackupActivityVisible"

    .line 790
    .line 791
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 792
    .line 793
    .line 794
    const-string v8, "ORT_isLoginActivityVisible"

    .line 795
    .line 796
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 797
    .line 798
    .line 799
    const-string v8, "ORT_isEPGActivityXMLTVVisible"

    .line 800
    .line 801
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 802
    .line 803
    .line 804
    const-string v8, "ORT_isXCIPTVWebServerStarted"

    .line 805
    .line 806
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 807
    .line 808
    .line 809
    const-string v8, "ORT_isORPlayerHomeFragmentVisible"

    .line 810
    .line 811
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 812
    .line 813
    .line 814
    const-string v8, "ORT_isORPlayerTVFragmentVisible"

    .line 815
    .line 816
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 817
    .line 818
    .line 819
    const-string v8, "ORT_isORPlayerVODFragmentVisible"

    .line 820
    .line 821
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 822
    .line 823
    .line 824
    const-string v8, "ORT_isORPlayerSeriesFragmentVisible"

    .line 825
    .line 826
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 827
    .line 828
    .line 829
    const-string v8, "ORT_remoteLongPressORPlayerHomeFragment"

    .line 830
    .line 831
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 832
    .line 833
    .line 834
    const-string v8, "ORT_remoteLongPressORPlayerVODFragment"

    .line 835
    .line 836
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 837
    .line 838
    .line 839
    const-string v8, "ORT_remoteLongPressORPlayerSeriesFragment"

    .line 840
    .line 841
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 842
    .line 843
    .line 844
    const-string v8, "ORT_remoteLongPressORPlayerTVFragment"

    .line 845
    .line 846
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 847
    .line 848
    .line 849
    move-object/from16 v8, p1

    .line 850
    .line 851
    invoke-virtual {v2, v8, v6}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 852
    .line 853
    .line 854
    const-string v6, "ORT_isUpdateUserInfoRequired"

    .line 855
    .line 856
    invoke-virtual {v2, v6, v7}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 857
    .line 858
    .line 859
    const-string v6, "ORT_isItRequiresToRunProgramReminderService"

    .line 860
    .line 861
    invoke-virtual {v2, v6, v7}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 862
    .line 863
    .line 864
    const-string v6, "ORT_isItRequiresToRunRecordingService"

    .line 865
    .line 866
    invoke-virtual {v2, v6, v7}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 867
    .line 868
    .line 869
    const-string v6, "ORT_isItRequiresToAnnouncementCheck"

    .line 870
    .line 871
    invoke-virtual {v2, v6, v7}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 872
    .line 873
    .line 874
    const-string v6, "ORT_isItRequiresToRunWhatsupCheck"

    .line 875
    .line 876
    invoke-virtual {v2, v6, v7}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 877
    .line 878
    .line 879
    const-string v6, "ORT_google_admob_enabled"

    .line 880
    .line 881
    invoke-virtual {v2, v6, v7}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 882
    .line 883
    .line 884
    const-string v6, "ORT_google_admob_fctl"

    .line 885
    .line 886
    const/4 v8, 0x0

    .line 887
    invoke-virtual {v2, v6, v8}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 888
    .line 889
    .line 890
    const-string v6, "ORT_isDemo"

    .line 891
    .line 892
    invoke-virtual {v2, v6, v8}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 893
    .line 894
    .line 895
    const-string v6, "ORT_program_reminder_program_details"

    .line 896
    .line 897
    invoke-virtual {v2, v6, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 898
    .line 899
    .line 900
    const-string v6, "ORT_program_reminder_Direct_source"

    .line 901
    .line 902
    invoke-virtual {v2, v6, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 903
    .line 904
    .line 905
    const-string v6, "ORT_program_reminder_Stream_id"

    .line 906
    .line 907
    invoke-virtual {v2, v6, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 908
    .line 909
    .line 910
    const-string v6, "ORT_program_reminder_Channel_name"

    .line 911
    .line 912
    invoke-virtual {v2, v6, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 913
    .line 914
    .line 915
    const-string v6, "ORT_program_reminder_Category_id"

    .line 916
    .line 917
    invoke-virtual {v2, v6, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 918
    .line 919
    .line 920
    const-string v6, "ORT_program_reminder_Category_name"

    .line 921
    .line 922
    invoke-virtual {v2, v6, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 923
    .line 924
    .line 925
    const-string v5, "ORT_SHOW_HIDE_OPENVPN_PUBLIC_IP"

    .line 926
    .line 927
    const-string v6, "hideip"

    .line 928
    .line 929
    invoke-virtual {v2, v5, v6}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 930
    .line 931
    .line 932
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 933
    .line 934
    .line 935
    move-result-object v2

    .line 936
    invoke-virtual {v2, v3, v7}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 937
    .line 938
    .line 939
    move-result v2

    .line 940
    if-eqz v2, :cond_b

    .line 941
    .line 942
    iget-object v2, v0, Lpe/hf/black20/SplashActivity;->k0:Landroid/widget/ImageView;

    .line 943
    .line 944
    const/4 v3, 0x0

    .line 945
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 946
    .line 947
    .line 948
    :cond_b
    iget-object v2, v0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 949
    .line 950
    const-string v3, "sleep_mode"

    .line 951
    .line 952
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 953
    .line 954
    .line 955
    move-result v2

    .line 956
    if-eqz v2, :cond_c

    .line 957
    .line 958
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 959
    .line 960
    .line 961
    move-result-object v2

    .line 962
    iget-object v5, v0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 963
    .line 964
    invoke-interface {v5, v3, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v3

    .line 968
    invoke-virtual {v2, v1, v3}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 969
    .line 970
    .line 971
    :cond_c
    iget-object v1, v0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 972
    .line 973
    const-string v2, "time_format"

    .line 974
    .line 975
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 976
    .line 977
    .line 978
    move-result v1

    .line 979
    if-eqz v1, :cond_d

    .line 980
    .line 981
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 982
    .line 983
    .line 984
    move-result-object v1

    .line 985
    iget-object v3, v0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 986
    .line 987
    invoke-interface {v3, v2, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v2

    .line 991
    invoke-virtual {v1, v4, v2}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 992
    .line 993
    .line 994
    :cond_d
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->I:Lc7/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
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
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
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
    iget-object p1, p0, Lpe/hf/black20/SplashActivity;->G:Lpe/hf/black20/SplashActivity;

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

.method public final p(Lorg/json/JSONObject;)V
    .locals 13

    .line 1
    const-string v0, "0"

    .line 2
    .line 3
    const-string v1, "Default (OTR)"

    .line 4
    .line 5
    const-string v2, "ORT_PROFILE"

    .line 6
    .line 7
    const-string v3, "access_token"

    .line 8
    .line 9
    const-string v4, "data"

    .line 10
    .line 11
    const-string v5, ""

    .line 12
    .line 13
    iget-object v6, p0, Lpe/hf/black20/SplashActivity;->G:Lpe/hf/black20/SplashActivity;

    .line 14
    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v8, "LoginActivity -- result"

    .line 18
    .line 19
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    const-string v8, "XCIPTV_TAG"

    .line 30
    .line 31
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 35
    .line 36
    const-string v9, "MM/dd/yyyy HH:mm:ss"

    .line 37
    .line 38
    invoke-direct {v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const v9, 0x7f13011d

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    if-eqz v10, :cond_1

    .line 49
    .line 50
    const-string v10, "LoginActivity -- data found"

    .line 51
    .line 52
    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_0

    .line 64
    .line 65
    const-string v4, "LoginActivity -- access_token found"

    .line 66
    .line 67
    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    const-string v4, "refresh_token"

    .line 71
    .line 72
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object v3, p0, Lpe/hf/black20/SplashActivity;->I:Lc7/a;

    .line 81
    .line 82
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-virtual {v8, v2, v1}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    iget-object v10, p0, Lpe/hf/black20/SplashActivity;->W:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v10}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    iget-object v11, p0, Lpe/hf/black20/SplashActivity;->X:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v11}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    iget-object v12, p0, Lpe/hf/black20/SplashActivity;->Y:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v12}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    invoke-virtual {v3, v8, v10, v11, v12}, Lc7/a;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v3, "pe.hf.black20"

    .line 112
    .line 113
    const/4 v8, 0x0

    .line 114
    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    iput-object v3, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 119
    .line 120
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    const-string v8, "otr_refresh_token"

    .line 125
    .line 126
    invoke-static {v4}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-interface {v3, v8, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    .line 132
    .line 133
    const-string v4, "otr_access_token"

    .line 134
    .line 135
    invoke-static {p1}, Lpe/hf/black20/encryption/Encrypt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    .line 141
    .line 142
    const-string p1, "message"

    .line 143
    .line 144
    const-string v4, "No Messages"

    .line 145
    .line 146
    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    .line 148
    .line 149
    const-string p1, "status_acc"

    .line 150
    .line 151
    const-string v4, "ACTIVE"

    .line 152
    .line 153
    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    .line 155
    .line 156
    const-string p1, "exp_date"

    .line 157
    .line 158
    invoke-interface {v3, p1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    .line 160
    .line 161
    const-string p1, "is_trial"

    .line 162
    .line 163
    invoke-interface {v3, p1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    .line 165
    .line 166
    const-string p1, "active_cons"

    .line 167
    .line 168
    invoke-interface {v3, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    .line 170
    .line 171
    const-string p1, "created_at"

    .line 172
    .line 173
    invoke-interface {v3, p1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    .line 175
    .line 176
    const-string p1, "max_connections"

    .line 177
    .line 178
    invoke-interface {v3, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    .line 180
    .line 181
    const-string p1, "timezone"

    .line 182
    .line 183
    invoke-interface {v3, p1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    .line 185
    .line 186
    const-string p1, "xciptv_profile"

    .line 187
    .line 188
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0, v2, v1}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-interface {v3, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    .line 198
    .line 199
    const-string p1, "whichPanel"

    .line 200
    .line 201
    const-string v0, "otr"

    .line 202
    .line 203
    invoke-interface {v3, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 204
    .line 205
    .line 206
    const-string p1, "last_login_check"

    .line 207
    .line 208
    new-instance v0, Ljava/util/Date;

    .line 209
    .line 210
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-interface {v3, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    .line 219
    .line 220
    const-string p1, "is_last_login_success"

    .line 221
    .line 222
    const-string v0, "yes"

    .line 223
    .line 224
    invoke-interface {v3, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 225
    .line 226
    .line 227
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Lpe/hf/black20/SplashActivity;->d()V

    .line 231
    .line 232
    .line 233
    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-static {v6, p1}, Lpe/hf/black20/util/Methods;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-static {v6, p1}, Lpe/hf/black20/util/Methods;->l(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .line 248
    .line 249
    goto :goto_0

    .line 250
    :catch_0
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-static {v6, p1}, Lpe/hf/black20/util/Methods;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :goto_0
    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lpe/hf/black20/SplashActivity;->H:Landroid/content/SharedPreferences;

    .line 8
    .line 9
    const-string v2, "vadse"

    .line 10
    .line 11
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    const-string v1, "mri"

    .line 21
    .line 22
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    const-string v1, "prsa"

    .line 26
    .line 27
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    const-string v1, "vpru"

    .line 31
    .line 32
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    .line 34
    .line 35
    const-string v1, "vmru"

    .line 36
    .line 37
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    const-string v1, "vporu"

    .line 41
    .line 42
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    .line 45
    const-string v1, "spru"

    .line 46
    .line 47
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    .line 49
    .line 50
    const-string v1, "smru"

    .line 51
    .line 52
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    .line 54
    .line 55
    const-string v1, "sporu"

    .line 56
    .line 57
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    .line 59
    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method
