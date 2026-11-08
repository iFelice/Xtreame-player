.class public final synthetic LA0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LA0/x;

.field public final synthetic I:Ljava/lang/InterruptedException;


# direct methods
.method public synthetic constructor <init>(LA0/x;Ljava/lang/InterruptedException;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, LA0/o;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LA0/o;->H:LA0/x;

    .line 7
    .line 8
    iput-object p2, p0, LA0/o;->I:Ljava/lang/InterruptedException;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, LA0/o;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LA0/o;->I:Ljava/lang/InterruptedException;

    .line 4
    .line 5
    iget-object v2, p0, LA0/o;->H:LA0/x;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance v0, Lm0/o0;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v2, LA0/x;->h:Lm0/r0;

    .line 19
    .line 20
    check-cast v1, Lf6/c;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lf6/c;->f(Lm0/o0;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    invoke-static {v1}, Lm0/o0;->a(Ljava/lang/Exception;)Lm0/o0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, v2, LA0/x;->h:Lm0/r0;

    .line 31
    .line 32
    check-cast v1, Lf6/c;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lf6/c;->f(Lm0/o0;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
