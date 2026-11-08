.class public final synthetic LD0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LD0/n;

.field public final synthetic I:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(LD0/n;Ljava/lang/Exception;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, LD0/j;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LD0/j;->H:LD0/n;

    .line 7
    .line 8
    iput-object p2, p0, LD0/j;->I:Ljava/lang/Exception;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, LD0/j;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LD0/j;->I:Ljava/lang/Exception;

    .line 4
    .line 5
    iget-object v2, p0, LD0/j;->H:LD0/n;

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
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, v2, LD0/n;->b:LD0/o;

    .line 16
    .line 17
    check-cast v0, LB0/L;

    .line 18
    .line 19
    iget-object v0, v0, LB0/L;->G:LB0/O;

    .line 20
    .line 21
    iget-object v0, v0, LB0/O;->X:LC0/a;

    .line 22
    .line 23
    check-cast v0, LC0/A;

    .line 24
    .line 25
    invoke-virtual {v0}, LC0/A;->T()LC0/b;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-instance v3, LC0/v;

    .line 30
    .line 31
    const/4 v4, 0x2

    .line 32
    invoke-direct {v3, v2, v1, v4}, LC0/v;-><init>(LC0/b;Ljava/lang/Exception;I)V

    .line 33
    .line 34
    .line 35
    const/16 v1, 0x3f6

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1, v3}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_0
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v0, v2, LD0/n;->b:LD0/o;

    .line 44
    .line 45
    check-cast v0, LB0/L;

    .line 46
    .line 47
    iget-object v0, v0, LB0/L;->G:LB0/O;

    .line 48
    .line 49
    iget-object v0, v0, LB0/O;->X:LC0/a;

    .line 50
    .line 51
    check-cast v0, LC0/A;

    .line 52
    .line 53
    invoke-virtual {v0}, LC0/A;->T()LC0/b;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    new-instance v3, LC0/v;

    .line 58
    .line 59
    const/4 v4, 0x1

    .line 60
    invoke-direct {v3, v2, v1, v4}, LC0/v;-><init>(LC0/b;Ljava/lang/Exception;I)V

    .line 61
    .line 62
    .line 63
    const/16 v1, 0x405

    .line 64
    .line 65
    invoke-virtual {v0, v2, v1, v3}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
