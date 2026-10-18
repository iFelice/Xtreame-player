.class public final synthetic LA0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LA0/x;

.field public final synthetic I:LA0/w;


# direct methods
.method public synthetic constructor <init>(LA0/x;LA0/w;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, LA0/s;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LA0/s;->H:LA0/x;

    .line 7
    .line 8
    iput-object p2, p0, LA0/s;->I:LA0/w;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, LA0/s;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LA0/s;->I:LA0/w;

    .line 4
    .line 5
    iget-object v2, p0, LA0/s;->H:LA0/x;

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
    iget-object v0, v1, LA0/w;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lm0/t;

    .line 16
    .line 17
    iget v0, v0, Lm0/t;->z:F

    .line 18
    .line 19
    iget-object v1, v2, LA0/x;->h:Lm0/r0;

    .line 20
    .line 21
    check-cast v1, Lf6/c;

    .line 22
    .line 23
    iget-object v2, v1, Lf6/c;->I:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, LA0/Y;

    .line 26
    .line 27
    iget-object v2, v2, LA0/Y;->f:Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    new-instance v3, LA0/X;

    .line 30
    .line 31
    invoke-direct {v3, v1, v0}, LA0/X;-><init>(Lf6/c;F)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    iget v0, v1, LA0/w;->b:I

    .line 39
    .line 40
    iget-object v0, v2, LA0/x;->h:Lm0/r0;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
