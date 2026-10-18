.class public final synthetic LD0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:I

.field public final synthetic I:J

.field public final synthetic J:J

.field public final synthetic K:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;IJJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p7, p0, LD0/l;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LD0/l;->K:Ljava/lang/Object;

    .line 7
    .line 8
    iput p2, p0, LD0/l;->H:I

    .line 9
    .line 10
    iput-wide p3, p0, LD0/l;->I:J

    .line 11
    .line 12
    iput-wide p5, p0, LD0/l;->J:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, LD0/l;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LD0/l;->K:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, LS0/b;

    .line 9
    .line 10
    iget-object v0, v1, LS0/b;->b:LC0/a;

    .line 11
    .line 12
    check-cast v0, LC0/A;

    .line 13
    .line 14
    iget-object v1, v0, LC0/A;->J:LC0/z;

    .line 15
    .line 16
    iget-object v2, v1, LC0/z;->b:Lz4/H;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, v1, LC0/z;->b:Lz4/H;

    .line 27
    .line 28
    invoke-static {v1}, Ly4/k;->G(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, LO0/y;

    .line 33
    .line 34
    :goto_0
    invoke-virtual {v0, v1}, LC0/A;->Q(LO0/y;)LC0/b;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v10, LC0/w;

    .line 39
    .line 40
    iget v4, p0, LD0/l;->H:I

    .line 41
    .line 42
    const/4 v9, 0x1

    .line 43
    iget-wide v5, p0, LD0/l;->I:J

    .line 44
    .line 45
    iget-wide v7, p0, LD0/l;->J:J

    .line 46
    .line 47
    move-object v2, v10

    .line 48
    move-object v3, v1

    .line 49
    invoke-direct/range {v2 .. v9}, LC0/w;-><init>(LC0/b;IJJI)V

    .line 50
    .line 51
    .line 52
    const/16 v2, 0x3ee

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2, v10}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_0
    check-cast v1, LD0/n;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v0, v1, LD0/n;->b:LD0/o;

    .line 66
    .line 67
    check-cast v0, LB0/L;

    .line 68
    .line 69
    iget-object v0, v0, LB0/L;->G:LB0/O;

    .line 70
    .line 71
    iget-object v0, v0, LB0/O;->X:LC0/a;

    .line 72
    .line 73
    check-cast v0, LC0/A;

    .line 74
    .line 75
    invoke-virtual {v0}, LC0/A;->T()LC0/b;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    new-instance v10, LC0/w;

    .line 80
    .line 81
    iget v3, p0, LD0/l;->H:I

    .line 82
    .line 83
    const/4 v8, 0x0

    .line 84
    iget-wide v4, p0, LD0/l;->I:J

    .line 85
    .line 86
    iget-wide v6, p0, LD0/l;->J:J

    .line 87
    .line 88
    move-object v1, v10

    .line 89
    move-object v2, v9

    .line 90
    invoke-direct/range {v1 .. v8}, LC0/w;-><init>(LC0/b;IJJI)V

    .line 91
    .line 92
    .line 93
    const/16 v1, 0x3f3

    .line 94
    .line 95
    invoke-virtual {v0, v9, v1, v10}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
