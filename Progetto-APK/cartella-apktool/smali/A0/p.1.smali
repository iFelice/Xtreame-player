.class public final synthetic LA0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/g0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LA0/p;->a:I

    .line 5
    .line 6
    iput-object p1, p0, LA0/p;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, LA0/p;->a:I

    .line 2
    .line 3
    iget-object v1, p0, LA0/p;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, LA0/a0;

    .line 9
    .line 10
    invoke-virtual {v1}, LA0/a0;->b()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast v1, LA0/E;

    .line 15
    .line 16
    invoke-virtual {v1}, LA0/E;->r()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    check-cast v1, LA0/Z;

    .line 21
    .line 22
    iget-object v0, v1, LA0/Z;->J:LA0/E;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, LA0/E;->b()V

    .line 28
    .line 29
    .line 30
    const-wide/high16 v0, -0x8000000000000000L

    .line 31
    .line 32
    invoke-static {v0, v1}, LA0/g;->b(J)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_2
    check-cast v1, LA0/D;

    .line 37
    .line 38
    invoke-virtual {v1}, LA0/D;->flush()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_3
    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
