.class public final synthetic LI6/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC6/p;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Z

.field public final synthetic I:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Serializable;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, LI6/j;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LI6/j;->I:Ljava/io/Serializable;

    .line 7
    .line 8
    iput-boolean p2, p0, LI6/j;->H:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, LI6/j;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lx6/j;

    .line 7
    .line 8
    check-cast p2, Lx6/h;

    .line 9
    .line 10
    invoke-interface {p1, p2}, Lx6/j;->N(Lx6/j;)Lx6/j;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :pswitch_0
    iget-object v0, p0, LI6/j;->I:Ljava/io/Serializable;

    .line 16
    .line 17
    check-cast v0, [C

    .line 18
    .line 19
    check-cast p1, Ljava/lang/CharSequence;

    .line 20
    .line 21
    check-cast p2, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    const-string v1, "$this$DelimitedRangesSequence"

    .line 28
    .line 29
    invoke-static {p1, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v1, p0, LI6/j;->H:Z

    .line 33
    .line 34
    invoke-static {p2, p1, v1, v0}, LI6/k;->K0(ILjava/lang/CharSequence;Z[C)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-gez p1, :cond_0

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/4 p2, 0x1

    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    new-instance v0, Lt6/c;

    .line 52
    .line 53
    invoke-direct {v0, p1, p2}, Lt6/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    move-object p1, v0

    .line 57
    :goto_0
    return-object p1

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
