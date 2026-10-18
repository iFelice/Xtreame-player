.class public final Lcom/google/android/gms/internal/ads/fh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dh;


# instance fields
.field public final synthetic a:I

.field public final b:Lo3/K;


# direct methods
.method public synthetic constructor <init>(Lo3/L;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/ads/fh;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fh;->b:Lo3/K;

    .line 7
    .line 8
    return-void
.end method

.method private final b(Ljava/util/HashMap;)V
    .locals 4

    .line 1
    const-string v0, "content_url_opted_out"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fh;->b:Lo3/K;

    .line 14
    .line 15
    check-cast v0, Lo3/L;

    .line 16
    .line 17
    invoke-virtual {v0}, Lo3/L;->s()V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lo3/L;->a:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    iget-boolean v2, v0, Lo3/L;->u:Z

    .line 24
    .line 25
    if-ne v2, p1, :cond_0

    .line 26
    .line 27
    monitor-exit v1

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iput-boolean p1, v0, Lo3/L;->u:Z

    .line 32
    .line 33
    iget-object v2, v0, Lo3/L;->g:Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    const-string v3, "content_url_opted_out"

    .line 38
    .line 39
    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 40
    .line 41
    .line 42
    iget-object p1, v0, Lo3/L;->g:Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {v0}, Lo3/L;->t()V

    .line 48
    .line 49
    .line 50
    monitor-exit v1

    .line 51
    :goto_0
    return-void

    .line 52
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p1
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/fh;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "content_vertical_opted_out"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fh;->b:Lo3/K;

    .line 19
    .line 20
    check-cast v0, Lo3/L;

    .line 21
    .line 22
    invoke-virtual {v0}, Lo3/L;->s()V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lo3/L;->a:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    iget-boolean v2, v0, Lo3/L;->v:Z

    .line 29
    .line 30
    if-ne v2, p1, :cond_0

    .line 31
    .line 32
    monitor-exit v1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iput-boolean p1, v0, Lo3/L;->v:Z

    .line 37
    .line 38
    iget-object v2, v0, Lo3/L;->g:Landroid/content/SharedPreferences$Editor;

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    const-string v3, "content_vertical_opted_out"

    .line 43
    .line 44
    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    .line 47
    iget-object p1, v0, Lo3/L;->g:Landroid/content/SharedPreferences$Editor;

    .line 48
    .line 49
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {v0}, Lo3/L;->t()V

    .line 53
    .line 54
    .line 55
    monitor-exit v1

    .line 56
    :goto_0
    return-void

    .line 57
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p1

    .line 59
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/fh;->b(Ljava/util/HashMap;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
