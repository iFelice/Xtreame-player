.class public final Lcom/google/android/gms/internal/ads/Rb;
.super Lcom/google/android/gms/internal/ads/x;
.source "SourceFile"


# instance fields
.field public final J:Ljava/util/Map;

.field public final K:Landroid/app/Activity;

.field public final L:Ljava/lang/String;

.field public final M:J

.field public final N:J

.field public final O:Ljava/lang/String;

.field public final P:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ef;Ljava/util/Map;)V
    .locals 2

    .line 1
    const-string v0, "createCalendarEvent"

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Rb;->J:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->zzi()Landroid/app/Activity;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Rb;->K:Landroid/app/Activity;

    .line 15
    .line 16
    const-string p1, "description"

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Rb;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Rb;->L:Ljava/lang/String;

    .line 23
    .line 24
    const-string p1, "summary"

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Rb;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Rb;->O:Ljava/lang/String;

    .line 31
    .line 32
    const-string p1, "start_ticks"

    .line 33
    .line 34
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/String;

    .line 39
    .line 40
    const-wide/16 v0, -0x1

    .line 41
    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    :catch_0
    move-wide p1, v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/Rb;->M:J

    .line 51
    .line 52
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Rb;->J:Ljava/util/Map;

    .line 53
    .line 54
    const-string p2, "end_ticks"

    .line 55
    .line 56
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Ljava/lang/String;

    .line 61
    .line 62
    if-nez p1, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    :catch_1
    :goto_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Rb;->N:J

    .line 70
    .line 71
    const-string p1, "location"

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Rb;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Rb;->P:Ljava/lang/String;

    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final q(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Rb;->J:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string p1, ""

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/String;

    .line 23
    .line 24
    :goto_0
    return-object p1
.end method

.method public final zzc()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Rb;->K:Landroid/app/Activity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Activity context is not available."

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/x;->l(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 12
    .line 13
    iget-object v2, v1, Lk3/l;->c:Lo3/O;

    .line 14
    .line 15
    new-instance v2, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v3, "android.intent.action.INSERT"

    .line 18
    .line 19
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v3, "vnd.android.cursor.dir/event"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "Intent can not be null"

    .line 29
    .line 30
    invoke-static {v2, v3}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, 0x1

    .line 47
    xor-int/2addr v2, v3

    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    const-string v0, "This feature is not available on the device."

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/x;->l(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    invoke-static {v0}, Lo3/O;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/le;->b()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    const v2, 0x7f13017e

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-string v2, "Create calendar event"

    .line 77
    .line 78
    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 79
    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    const v2, 0x7f13017f

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    const-string v2, "Allow Ad to create a calendar event?"

    .line 92
    .line 93
    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 94
    .line 95
    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    const v2, 0x7f13017c

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    const-string v2, "Accept"

    .line 107
    .line 108
    :goto_2
    new-instance v5, Lcom/google/android/gms/internal/ads/Qb;

    .line 109
    .line 110
    invoke-direct {v5, p0, v4}, Lcom/google/android/gms/internal/ads/Qb;-><init>(Lcom/google/android/gms/internal/ads/Rb;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    .line 115
    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    const v2, 0x7f13017d

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    goto :goto_3

    .line 126
    :cond_5
    const-string v1, "Decline"

    .line 127
    .line 128
    :goto_3
    new-instance v2, Lcom/google/android/gms/internal/ads/Qb;

    .line 129
    .line 130
    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/ads/Qb;-><init>(Lcom/google/android/gms/internal/ads/Rb;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 141
    .line 142
    .line 143
    return-void
.end method
