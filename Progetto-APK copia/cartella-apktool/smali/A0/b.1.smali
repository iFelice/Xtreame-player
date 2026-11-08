.class public final synthetic LA0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/g0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LA0/c;


# direct methods
.method public synthetic constructor <init>(LA0/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LA0/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, LA0/b;->b:LA0/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, LA0/b;->a:I

    .line 2
    .line 3
    iget-object v1, p0, LA0/b;->b:LA0/c;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, LA0/c;->L:Lm0/v;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lm0/v;->a()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, v1, LA0/c;->J:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget v0, v1, LA0/c;->M:I

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    iput v0, v1, LA0/c;->M:I

    .line 26
    .line 27
    iget-object v0, v1, LA0/c;->J:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    iget v1, v1, LA0/c;->M:I

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    throw v0

    .line 49
    :cond_2
    :goto_0
    return-void

    .line 50
    :pswitch_1
    iget-object v0, v1, LA0/c;->J:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iget-object v0, v1, LA0/c;->K:LA0/T;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    check-cast v0, LA0/a;

    .line 64
    .line 65
    invoke-virtual {v0}, LA0/a;->a()V

    .line 66
    .line 67
    .line 68
    const-wide/high16 v0, -0x8000000000000000L

    .line 69
    .line 70
    invoke-static {v0, v1}, LA0/g;->b(J)V

    .line 71
    .line 72
    .line 73
    :cond_3
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
