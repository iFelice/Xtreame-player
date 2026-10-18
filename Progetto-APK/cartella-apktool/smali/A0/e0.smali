.class public final synthetic LA0/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Z

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LA0/h0;ZLA0/g0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LA0/e0;->G:I

    iput-object p1, p0, LA0/e0;->I:Ljava/lang/Object;

    iput-boolean p2, p0, LA0/e0;->H:Z

    iput-object p3, p0, LA0/e0;->J:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Le2/n;Lm2/j;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, LA0/e0;->G:I

    iput-object p1, p0, LA0/e0;->I:Ljava/lang/Object;

    iput-object p2, p0, LA0/e0;->J:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, LA0/e0;->H:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, LA0/e0;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LA0/e0;->I:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Le2/n;

    .line 9
    .line 10
    iget-object v1, p0, LA0/e0;->J:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lm2/j;

    .line 13
    .line 14
    sget-object v2, Le2/n;->S:Ljava/lang/String;

    .line 15
    .line 16
    iget-boolean v2, p0, LA0/e0;->H:Z

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Le2/n;->b(Lm2/j;Z)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, LA0/e0;->I:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, LA0/h0;

    .line 25
    .line 26
    iget-boolean v1, p0, LA0/e0;->H:Z

    .line 27
    .line 28
    iget-object v2, p0, LA0/e0;->J:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, LA0/g0;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    :try_start_0
    iget-object v3, v0, LA0/h0;->e:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :try_start_1
    iget-boolean v4, v0, LA0/h0;->g:Z

    .line 39
    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    monitor-exit v3

    .line 45
    goto :goto_3

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_0
    :try_start_2
    iget-object v1, v0, LA0/h0;->e:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 52
    :try_start_3
    iget-object v3, v0, LA0/h0;->f:Ljava/util/ArrayDeque;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, LA0/g0;

    .line 59
    .line 60
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    :try_start_4
    invoke-interface {v2}, LA0/g0;->run()V

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :catch_0
    move-exception v1

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    invoke-interface {v3}, LA0/g0;->run()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_1
    move-exception v2

    .line 74
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 75
    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 76
    :goto_1
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 77
    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 78
    :goto_2
    invoke-virtual {v0, v1}, LA0/h0;->b(Ljava/lang/Exception;)V

    .line 79
    .line 80
    .line 81
    :goto_3
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
