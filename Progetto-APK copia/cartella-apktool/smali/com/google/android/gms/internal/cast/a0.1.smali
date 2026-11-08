.class public final Lcom/google/android/gms/internal/cast/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:LH3/b;


# instance fields
.field public final a:Lcom/google/android/gms/internal/cast/N;

.field public final b:Lcom/google/android/gms/internal/cast/c;

.field public final c:Lcom/google/android/gms/internal/cast/c0;

.field public final d:Lcom/google/android/gms/internal/cast/X;

.field public final e:LX3/d;

.field public final f:Landroid/content/SharedPreferences;

.field public g:Lcom/google/android/gms/internal/cast/b0;

.field public h:LD3/c;

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "ApplicationAnalytics"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, LH3/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/cast/a0;->j:LH3/b;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/N;Lcom/google/android/gms/internal/cast/c;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/a0;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/a0;->a:Lcom/google/android/gms/internal/cast/N;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/a0;->b:Lcom/google/android/gms/internal/cast/c;

    .line 9
    .line 10
    new-instance p1, Lcom/google/android/gms/internal/cast/c0;

    .line 11
    .line 12
    invoke-direct {p1, p5, p4}, Lcom/google/android/gms/internal/cast/c0;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/a0;->c:Lcom/google/android/gms/internal/cast/c0;

    .line 16
    .line 17
    new-instance p1, LX3/d;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const/4 p3, 0x1

    .line 24
    invoke-direct {p1, p2, p3}, LX3/d;-><init>(Landroid/os/Looper;I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/a0;->e:LX3/d;

    .line 28
    .line 29
    new-instance p1, Lcom/google/android/gms/internal/cast/X;

    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/a0;->d:Lcom/google/android/gms/internal/cast/X;

    .line 36
    .line 37
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/cast/a0;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 10
    .line 11
    const-string v0, "log session ended with error = %d"

    .line 12
    .line 13
    sget-object v2, Lcom/google/android/gms/internal/cast/a0;->j:LH3/b;

    .line 14
    .line 15
    invoke-virtual {v2, v0, v1}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/a0;->c()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/a0;->c:Lcom/google/android/gms/internal/cast/c0;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/cast/c0;->a(Lcom/google/android/gms/internal/cast/b0;I)Lcom/google/android/gms/internal/cast/s0;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/a0;->a:Lcom/google/android/gms/internal/cast/N;

    .line 30
    .line 31
    const/16 v1, 0xe4

    .line 32
    .line 33
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/cast/N;->a(Lcom/google/android/gms/internal/cast/s0;I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/a0;->e:LX3/d;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/a0;->d:Lcom/google/android/gms/internal/cast/X;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    iget-boolean p1, p0, Lcom/google/android/gms/internal/cast/a0;->i:Z

    .line 44
    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/cast/a0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/a0;->f:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object p0, v1, v2

    .line 16
    .line 17
    const-string v2, "Save the ApplicationAnalyticsSession to SharedPreferences %s"

    .line 18
    .line 19
    sget-object v3, Lcom/google/android/gms/internal/cast/b0;->k:LH3/b;

    .line 20
    .line 21
    invoke-virtual {v3, v2, v1}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/b0;->b:Ljava/lang/String;

    .line 29
    .line 30
    const-string v2, "application_id"

    .line 31
    .line 32
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/b0;->c:Ljava/lang/String;

    .line 36
    .line 37
    const-string v2, "receiver_metrics_id"

    .line 38
    .line 39
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 40
    .line 41
    .line 42
    iget-wide v1, v0, Lcom/google/android/gms/internal/cast/b0;->d:J

    .line 43
    .line 44
    const-string v3, "analytics_session_id"

    .line 45
    .line 46
    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 47
    .line 48
    .line 49
    iget v1, v0, Lcom/google/android/gms/internal/cast/b0;->e:I

    .line 50
    .line 51
    const-string v2, "event_sequence_number"

    .line 52
    .line 53
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/b0;->f:Ljava/lang/String;

    .line 57
    .line 58
    const-string v2, "receiver_session_id"

    .line 59
    .line 60
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    .line 62
    .line 63
    iget v1, v0, Lcom/google/android/gms/internal/cast/b0;->g:I

    .line 64
    .line 65
    const-string v2, "device_capabilities"

    .line 66
    .line 67
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/b0;->h:Ljava/lang/String;

    .line 71
    .line 72
    const-string v2, "device_model_name"

    .line 73
    .line 74
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    .line 76
    .line 77
    iget v1, v0, Lcom/google/android/gms/internal/cast/b0;->j:I

    .line 78
    .line 79
    const-string v2, "analytics_session_start_type"

    .line 80
    .line 81
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 82
    .line 83
    .line 84
    iget-boolean v0, v0, Lcom/google/android/gms/internal/cast/b0;->i:Z

    .line 85
    .line 86
    const-string v1, "is_output_switcher_enabled"

    .line 87
    .line 88
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 89
    .line 90
    .line 91
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 92
    .line 93
    .line 94
    :goto_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/a0;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/a0;->h:LD3/c;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "Must be called from the main thread."

    .line 12
    .line 13
    invoke-static {v1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, LD3/c;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/google/android/gms/internal/cast/b0;->c:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/google/android/gms/cast/CastDevice;->R:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iput-object v2, v1, Lcom/google/android/gms/internal/cast/b0;->c:Ljava/lang/String;

    .line 40
    .line 41
    iget v2, v0, Lcom/google/android/gms/cast/CastDevice;->O:I

    .line 42
    .line 43
    iput v2, v1, Lcom/google/android/gms/internal/cast/b0;->g:I

    .line 44
    .line 45
    iget-object v0, v0, Lcom/google/android/gms/cast/CastDevice;->K:Ljava/lang/String;

    .line 46
    .line 47
    iput-object v0, v1, Lcom/google/android/gms/internal/cast/b0;->h:Ljava/lang/String;

    .line 48
    .line 49
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    const/4 v0, 0x0

    .line 56
    new-array v0, v0, [Ljava/lang/Object;

    .line 57
    .line 58
    sget-object v1, Lcom/google/android/gms/internal/cast/a0;->j:LH3/b;

    .line 59
    .line 60
    iget-object v2, v1, LH3/b;->a:Ljava/lang/String;

    .line 61
    .line 62
    const-string v3, "The analyticsSession should not be null for logging. Create a dummy one."

    .line 63
    .line 64
    invoke-virtual {v1, v3, v0}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/a0;->d()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sget-object v2, Lcom/google/android/gms/internal/cast/a0;->j:LH3/b;

    .line 5
    .line 6
    const-string v3, "Create a new ApplicationAnalyticsSession based on CastSession"

    .line 7
    .line 8
    invoke-virtual {v2, v3, v1}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/a0;->b:Lcom/google/android/gms/internal/cast/c;

    .line 12
    .line 13
    new-instance v2, Lcom/google/android/gms/internal/cast/b0;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/cast/b0;-><init>(Lcom/google/android/gms/internal/cast/c;)V

    .line 16
    .line 17
    .line 18
    sget-wide v3, Lcom/google/android/gms/internal/cast/b0;->l:J

    .line 19
    .line 20
    const-wide/16 v5, 0x1

    .line 21
    .line 22
    add-long/2addr v3, v5

    .line 23
    sput-wide v3, Lcom/google/android/gms/internal/cast/b0;->l:J

    .line 24
    .line 25
    iput-object v2, p0, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/a0;->h:LD3/c;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, v1, LD3/c;->g:Lcom/google/android/gms/internal/cast/q;

    .line 32
    .line 33
    iget-boolean v1, v1, Lcom/google/android/gms/internal/cast/q;->L:Z

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_0
    iput-boolean v1, v2, Lcom/google/android/gms/internal/cast/b0;->i:Z

    .line 41
    .line 42
    sget-object v1, LD3/a;->k:LH3/b;

    .line 43
    .line 44
    const-string v1, "Must be called from the main thread."

    .line 45
    .line 46
    invoke-static {v1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget-object v3, LD3/a;->m:LD3/a;

    .line 50
    .line 51
    invoke-static {v3}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v3, v3, LD3/a;->d:LD3/b;

    .line 58
    .line 59
    iget-object v3, v3, LD3/b;->G:Ljava/lang/String;

    .line 60
    .line 61
    iput-object v3, v2, Lcom/google/android/gms/internal/cast/b0;->b:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/a0;->h:LD3/c;

    .line 64
    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-static {v1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v2, LD3/c;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 73
    .line 74
    :goto_1
    if-eqz v1, :cond_3

    .line 75
    .line 76
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 77
    .line 78
    if-nez v2, :cond_2

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    iget-object v3, v1, Lcom/google/android/gms/cast/CastDevice;->R:Ljava/lang/String;

    .line 82
    .line 83
    iput-object v3, v2, Lcom/google/android/gms/internal/cast/b0;->c:Ljava/lang/String;

    .line 84
    .line 85
    iget v3, v1, Lcom/google/android/gms/cast/CastDevice;->O:I

    .line 86
    .line 87
    iput v3, v2, Lcom/google/android/gms/internal/cast/b0;->g:I

    .line 88
    .line 89
    iget-object v1, v1, Lcom/google/android/gms/cast/CastDevice;->K:Ljava/lang/String;

    .line 90
    .line 91
    iput-object v1, v2, Lcom/google/android/gms/internal/cast/b0;->h:Ljava/lang/String;

    .line 92
    .line 93
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/a0;->h:LD3/c;

    .line 99
    .line 100
    if-nez v2, :cond_4

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_4
    invoke-virtual {v2}, LD3/f;->b()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    :goto_3
    iput v0, v1, Lcom/google/android/gms/internal/cast/b0;->j:I

    .line 108
    .line 109
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/a0;->e:LX3/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/a0;->d:Lcom/google/android/gms/internal/cast/X;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-wide/32 v2, 0x493e0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final f()Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 3
    .line 4
    sget-object v2, Lcom/google/android/gms/internal/cast/a0;->j:LH3/b;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-array v0, v3, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v1, "The analytics session is null when matching with application ID."

    .line 12
    .line 13
    invoke-virtual {v2, v1, v0}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return v3

    .line 17
    :cond_0
    sget-object v1, LD3/a;->k:LH3/b;

    .line 18
    .line 19
    const-string v1, "Must be called from the main thread."

    .line 20
    .line 21
    invoke-static {v1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v4, LD3/a;->m:LD3/a;

    .line 25
    .line 26
    invoke-static {v4}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v4, LD3/a;->d:LD3/b;

    .line 33
    .line 34
    iget-object v1, v1, LD3/b;->G:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 39
    .line 40
    iget-object v4, v4, Lcom/google/android/gms/internal/cast/b0;->b:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return v0

    .line 57
    :cond_2
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    .line 59
    aput-object v1, v0, v3

    .line 60
    .line 61
    const-string v1, "The analytics session doesn\'t match the application ID %s"

    .line 62
    .line 63
    invoke-virtual {v2, v1, v0}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return v3
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/a0;->f()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/google/android/gms/internal/cast/b0;->f:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v0

    .line 31
    :cond_2
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    .line 33
    aput-object p1, v0, v2

    .line 34
    .line 35
    const-string p1, "The analytics session doesn\'t match the receiver session ID %s."

    .line 36
    .line 37
    sget-object v1, Lcom/google/android/gms/internal/cast/a0;->j:LH3/b;

    .line 38
    .line 39
    invoke-virtual {v1, p1, v0}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return v2
.end method
