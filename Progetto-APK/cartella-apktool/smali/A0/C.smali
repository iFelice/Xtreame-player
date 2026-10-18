.class public final synthetic LA0/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LA0/C;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LA0/C;->H:Ljava/lang/Object;

    .line 7
    .line 8
    iput-wide p3, p0, LA0/C;->I:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, LA0/C;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-wide v2, p0, LA0/C;->I:J

    .line 5
    .line 6
    iget-object v4, p0, LA0/C;->H:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast v4, LD0/n;

    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, v4, LD0/n;->b:LD0/o;

    .line 19
    .line 20
    check-cast v0, LB0/L;

    .line 21
    .line 22
    iget-object v0, v0, LB0/L;->G:LB0/O;

    .line 23
    .line 24
    iget-object v0, v0, LB0/O;->X:LC0/a;

    .line 25
    .line 26
    check-cast v0, LC0/A;

    .line 27
    .line 28
    invoke-virtual {v0}, LC0/A;->T()LC0/b;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    new-instance v5, LC0/y;

    .line 33
    .line 34
    invoke-direct {v5, v4, v1, v2, v3}, LC0/y;-><init>(Ljava/lang/Object;IJ)V

    .line 35
    .line 36
    .line 37
    const/16 v1, 0x3f2

    .line 38
    .line 39
    invoke-virtual {v0, v4, v1, v5}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_0
    check-cast v4, LA0/D;

    .line 44
    .line 45
    iget-object v0, v4, LA0/D;->j:Lm0/r0;

    .line 46
    .line 47
    check-cast v0, Lf6/c;

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v2, v3, v1}, Lf6/c;->g(JZ)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_1
    check-cast v4, LA0/D;

    .line 55
    .line 56
    iget-object v0, v4, LA0/D;->j:Lm0/r0;

    .line 57
    .line 58
    check-cast v0, Lf6/c;

    .line 59
    .line 60
    invoke-virtual {v0, v2, v3, v1}, Lf6/c;->g(JZ)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
