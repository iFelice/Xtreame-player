.class public final LJ3/e;
.super LJ3/f;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/Object;

.field public static final d:LJ3/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LJ3/e;->c:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, LJ3/e;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, LJ3/e;->d:LJ3/e;

    .line 14
    .line 15
    return-void
.end method

.method public static f(Landroid/content/Context;ILcom/google/android/gms/common/internal/z;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const v3, 0x1010309

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "Theme.Dialog.Alert"

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 40
    .line 41
    const/4 v1, 0x5

    .line 42
    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    if-nez v0, :cond_2

    .line 46
    .line 47
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/w;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 57
    .line 58
    .line 59
    if-eqz p3, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    if-eq p1, v4, :cond_6

    .line 69
    .line 70
    const/4 v1, 0x2

    .line 71
    if-eq p1, v1, :cond_5

    .line 72
    .line 73
    const/4 v1, 0x3

    .line 74
    if-eq p1, v1, :cond_4

    .line 75
    .line 76
    const v1, 0x104000a

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    const v1, 0x7f13006c

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    goto :goto_0

    .line 92
    :cond_5
    const v1, 0x7f130076

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    goto :goto_0

    .line 100
    :cond_6
    const v1, 0x7f13006f

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    :goto_0
    if-eqz p3, :cond_7

    .line 108
    .line 109
    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    .line 111
    .line 112
    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/w;->c(Landroid/content/Context;I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-eqz p0, :cond_8

    .line 117
    .line 118
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 119
    .line 120
    .line 121
    :cond_8
    const-string p0, "Creating dialog for Google Play services availability issue. ConnectionResult="

    .line 122
    .line 123
    invoke-static {p0, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string p2, "GoogleApiAvailability"

    .line 133
    .line 134
    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0
.end method

.method public static g(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3

    .line 1
    const-string v0, "Cannot display null dialog"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    instance-of v2, p0, LY/v;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    if-eqz v2, :cond_1

    .line 7
    .line 8
    check-cast p0, LY/v;

    .line 9
    .line 10
    iget-object p0, p0, LY/v;->X:Lf/S;

    .line 11
    .line 12
    invoke-virtual {p0}, Lf/S;->R()LY/K;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v2, LJ3/l;

    .line 17
    .line 18
    invoke-direct {v2}, LJ3/l;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, v2, LJ3/l;->S0:Landroid/app/Dialog;

    .line 31
    .line 32
    if-eqz p3, :cond_0

    .line 33
    .line 34
    iput-object p3, v2, LJ3/l;->T0:Landroid/content/DialogInterface$OnCancelListener;

    .line 35
    .line 36
    :cond_0
    invoke-virtual {v2, p0, p2}, LJ3/l;->U(LY/K;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-instance v2, LJ3/c;

    .line 45
    .line 46
    invoke-direct {v2}, Landroid/app/DialogFragment;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v0}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, v2, LJ3/c;->G:Landroid/app/Dialog;

    .line 59
    .line 60
    if-eqz p3, :cond_2

    .line 61
    .line 62
    iput-object p3, v2, LJ3/c;->H:Landroid/content/DialogInterface$OnCancelListener;

    .line 63
    .line 64
    :cond_2
    invoke-virtual {v2, p0, p2}, LJ3/c;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final b(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, LJ3/f;->b(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final c(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, LJ3/f;->c(Landroid/content/Context;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final e(Landroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    .line 1
    const-string v0, "d"

    .line 2
    .line 3
    invoke-super {p0, p2, p1, v0}, LJ3/f;->b(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/common/internal/x;

    .line 8
    .line 9
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/internal/x;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2, v1, p3}, LJ3/e;->f(Landroid/content/Context;ILcom/google/android/gms/common/internal/z;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string v0, "GooglePlayServicesErrorDialog"

    .line 20
    .line 21
    invoke-static {p1, p2, v0, p3}, LJ3/e;->g(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final h(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v5, p3

    .line 6
    .line 7
    const-string v2, "GMS core API Availability. ConnectionResult="

    .line 8
    .line 9
    const-string v3, ", tag=null"

    .line 10
    .line 11
    invoke-static {v2, v1, v3}, LA0/O;->y(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v4, "GoogleApiAvailability"

    .line 21
    .line 22
    invoke-static {v4, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    const/16 v2, 0x12

    .line 26
    .line 27
    const/4 v14, 0x1

    .line 28
    if-ne v1, v2, :cond_0

    .line 29
    .line 30
    new-instance v1, LJ3/m;

    .line 31
    .line 32
    move-object/from16 v15, p0

    .line 33
    .line 34
    invoke-direct {v1, v15, v0}, LJ3/m;-><init>(LJ3/e;Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    const-wide/32 v2, 0x1d4c0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v14, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    move-object/from16 v15, p0

    .line 45
    .line 46
    const/4 v2, 0x6

    .line 47
    if-nez v5, :cond_2

    .line 48
    .line 49
    if-ne v1, v2, :cond_1

    .line 50
    .line 51
    const-string v0, "GoogleApiAvailability"

    .line 52
    .line 53
    const-string v1, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    .line 54
    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void

    .line 59
    :cond_2
    if-ne v1, v2, :cond_3

    .line 60
    .line 61
    const-string v3, "common_google_play_services_resolution_required_title"

    .line 62
    .line 63
    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/w;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/common/internal/w;->c(Landroid/content/Context;I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    :goto_0
    const v4, 0x7f130073

    .line 73
    .line 74
    .line 75
    if-nez v3, :cond_4

    .line 76
    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    :cond_4
    if-eq v1, v2, :cond_6

    .line 86
    .line 87
    const/16 v2, 0x13

    .line 88
    .line 89
    if-ne v1, v2, :cond_5

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_5
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/common/internal/w;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    goto :goto_2

    .line 97
    :cond_6
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/w;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const-string v6, "common_google_play_services_resolution_required_text"

    .line 102
    .line 103
    invoke-static {v0, v6, v2}, Lcom/google/android/gms/common/internal/w;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    const-string v7, "notification"

    .line 112
    .line 113
    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-static {v7}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    move-object v13, v7

    .line 121
    check-cast v13, Landroid/app/NotificationManager;

    .line 122
    .line 123
    new-instance v12, LD/o;

    .line 124
    .line 125
    const/4 v7, 0x0

    .line 126
    invoke-direct {v12, v0, v7}, LD/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iput-boolean v14, v12, LD/o;->l:Z

    .line 130
    .line 131
    const/16 v8, 0x10

    .line 132
    .line 133
    invoke-virtual {v12, v8}, LD/o;->c(I)V

    .line 134
    .line 135
    .line 136
    invoke-static {v3}, LD/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    iput-object v3, v12, LD/o;->e:Ljava/lang/CharSequence;

    .line 141
    .line 142
    new-instance v3, LD/n;

    .line 143
    .line 144
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-static {v2}, LD/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    iput-object v8, v3, LD/n;->b:Ljava/lang/CharSequence;

    .line 152
    .line 153
    invoke-virtual {v12, v3}, LD/o;->e(LD/p;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    sget-object v8, Lf/b;->G:Ljava/lang/Boolean;

    .line 161
    .line 162
    if-nez v8, :cond_7

    .line 163
    .line 164
    const-string v8, "android.hardware.type.watch"

    .line 165
    .line 166
    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    sput-object v3, Lf/b;->G:Ljava/lang/Boolean;

    .line 175
    .line 176
    :cond_7
    sget-object v3, Lf/b;->G:Ljava/lang/Boolean;

    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    const/4 v11, 0x2

    .line 183
    if-eqz v3, :cond_9

    .line 184
    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 190
    .line 191
    iget-object v3, v12, LD/o;->q:Landroid/app/Notification;

    .line 192
    .line 193
    iput v2, v3, Landroid/app/Notification;->icon:I

    .line 194
    .line 195
    iput v11, v12, LD/o;->i:I

    .line 196
    .line 197
    invoke-static/range {p1 .. p1}, Lf/b;->v(Landroid/content/Context;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_8

    .line 202
    .line 203
    const v2, 0x7f13007b

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    iget-object v10, v12, LD/o;->b:Ljava/util/ArrayList;

    .line 211
    .line 212
    new-instance v9, LD/j;

    .line 213
    .line 214
    const-string v2, ""

    .line 215
    .line 216
    const v3, 0x7f0805dd

    .line 217
    .line 218
    .line 219
    invoke-static {v7, v2, v3}, Landroidx/core/graphics/drawable/IconCompat;->c(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    new-instance v6, Landroid/os/Bundle;

    .line 224
    .line 225
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 226
    .line 227
    .line 228
    const/16 v16, 0x0

    .line 229
    .line 230
    const/16 v17, 0x0

    .line 231
    .line 232
    const/4 v7, 0x0

    .line 233
    const/4 v8, 0x0

    .line 234
    const/16 v18, 0x1

    .line 235
    .line 236
    const/16 v19, 0x0

    .line 237
    .line 238
    const/16 v20, 0x1

    .line 239
    .line 240
    move-object v2, v9

    .line 241
    move-object/from16 v5, p3

    .line 242
    .line 243
    move-object v14, v9

    .line 244
    move/from16 v9, v18

    .line 245
    .line 246
    move-object/from16 v21, v10

    .line 247
    .line 248
    move/from16 v10, v19

    .line 249
    .line 250
    move/from16 v11, v20

    .line 251
    .line 252
    move-object/from16 v22, v12

    .line 253
    .line 254
    move/from16 v12, v16

    .line 255
    .line 256
    move-object/from16 v16, v13

    .line 257
    .line 258
    move/from16 v13, v17

    .line 259
    .line 260
    invoke-direct/range {v2 .. v13}, LD/j;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[LD/y;[LD/y;ZIZZZ)V

    .line 261
    .line 262
    .line 263
    move-object/from16 v2, v21

    .line 264
    .line 265
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-object/from16 v3, v22

    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_8
    move-object v3, v12

    .line 272
    move-object/from16 v16, v13

    .line 273
    .line 274
    iput-object v5, v3, LD/o;->g:Landroid/app/PendingIntent;

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_9
    move-object v3, v12

    .line 278
    move-object/from16 v16, v13

    .line 279
    .line 280
    iget-object v7, v3, LD/o;->q:Landroid/app/Notification;

    .line 281
    .line 282
    const v8, 0x108008a

    .line 283
    .line 284
    .line 285
    iput v8, v7, Landroid/app/Notification;->icon:I

    .line 286
    .line 287
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    iget-object v6, v3, LD/o;->q:Landroid/app/Notification;

    .line 292
    .line 293
    invoke-static {v4}, LD/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    iput-object v4, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 298
    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 300
    .line 301
    .line 302
    move-result-wide v6

    .line 303
    iget-object v4, v3, LD/o;->q:Landroid/app/Notification;

    .line 304
    .line 305
    iput-wide v6, v4, Landroid/app/Notification;->when:J

    .line 306
    .line 307
    iput-object v5, v3, LD/o;->g:Landroid/app/PendingIntent;

    .line 308
    .line 309
    invoke-static {v2}, LD/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    iput-object v2, v3, LD/o;->f:Ljava/lang/CharSequence;

    .line 314
    .line 315
    :goto_3
    invoke-static {}, LU2/m;->a()Z

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-nez v2, :cond_a

    .line 320
    .line 321
    move-object/from16 v7, v16

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_a
    invoke-static {}, LU2/m;->a()Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    invoke-static {v2}, Lcom/bumptech/glide/c;->k(Z)V

    .line 329
    .line 330
    .line 331
    sget-object v2, LJ3/e;->c:Ljava/lang/Object;

    .line 332
    .line 333
    monitor-enter v2

    .line 334
    :try_start_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    const-string v2, "com.google.android.gms.availability"

    .line 336
    .line 337
    invoke-static/range {v16 .. v16}, LE1/b0;->a(Landroid/app/NotificationManager;)Landroid/app/NotificationChannel;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    const v5, 0x7f130072

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    if-nez v4, :cond_b

    .line 353
    .line 354
    invoke-static {v0}, LE1/b0;->A(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    move-object/from16 v7, v16

    .line 359
    .line 360
    invoke-static {v7, v0}, Lcom/google/android/gms/internal/ads/Hf;->s(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 361
    .line 362
    .line 363
    goto :goto_4

    .line 364
    :cond_b
    move-object/from16 v7, v16

    .line 365
    .line 366
    invoke-static {v4}, LE1/b0;->n(Landroid/app/NotificationChannel;)Ljava/lang/CharSequence;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    invoke-virtual {v0, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 371
    .line 372
    .line 373
    move-result v5

    .line 374
    if-nez v5, :cond_c

    .line 375
    .line 376
    invoke-static {v4, v0}, LE1/b0;->p(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/ads/Hf;->s(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 380
    .line 381
    .line 382
    :cond_c
    :goto_4
    iput-object v2, v3, LD/o;->o:Ljava/lang/String;

    .line 383
    .line 384
    :goto_5
    invoke-virtual {v3}, LD/o;->a()Landroid/app/Notification;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    const/4 v2, 0x1

    .line 389
    if-eq v1, v2, :cond_d

    .line 390
    .line 391
    const/4 v2, 0x2

    .line 392
    if-eq v1, v2, :cond_d

    .line 393
    .line 394
    const/4 v2, 0x3

    .line 395
    if-eq v1, v2, :cond_d

    .line 396
    .line 397
    const v1, 0x9b6d

    .line 398
    .line 399
    .line 400
    goto :goto_6

    .line 401
    :cond_d
    sget-object v1, LJ3/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 402
    .line 403
    const/4 v2, 0x0

    .line 404
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 405
    .line 406
    .line 407
    const/16 v1, 0x28c4

    .line 408
    .line 409
    :goto_6
    invoke-virtual {v7, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 410
    .line 411
    .line 412
    return-void

    .line 413
    :catchall_0
    move-exception v0

    .line 414
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    throw v0
.end method

.method public final i(Landroid/app/Activity;LK3/h;ILK3/W;)V
    .locals 2

    .line 1
    const-string v0, "d"

    .line 2
    .line 3
    invoke-super {p0, p3, p1, v0}, LJ3/f;->b(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/common/internal/y;

    .line 8
    .line 9
    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/common/internal/y;-><init>(Landroid/content/Intent;LK3/h;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p3, v1, p4}, LJ3/e;->f(Landroid/content/Context;ILcom/google/android/gms/common/internal/z;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    .line 20
    .line 21
    invoke-static {p1, p2, p3, p4}, LJ3/e;->g(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
