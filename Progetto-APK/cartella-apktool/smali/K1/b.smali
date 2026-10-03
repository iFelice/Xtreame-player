.class public final LK1/b;
.super LD6/h;
.source "SourceFile"

# interfaces
.implements LC6/l;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, LK1/b;->G:I

    .line 2
    .line 3
    iput-object p1, p0, LK1/b;->H:Landroid/content/Context;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, LD6/h;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, LK1/b;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, LK1/b;->H:Landroid/content/Context;

    .line 5
    .line 6
    const-string v3, "it"

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {p1, v3}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, LL1/g;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-direct {p1, v2, v0}, LL1/g;-><init>(Landroid/content/Context;I)V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :pswitch_0
    check-cast p1, Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p1, v3}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, LL1/g;

    .line 29
    .line 30
    invoke-direct {p1, v2, v1}, LL1/g;-><init>(Landroid/content/Context;I)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :pswitch_1
    check-cast p1, Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {p1, v3}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance p1, LK1/c;

    .line 40
    .line 41
    invoke-direct {p1, v2, v1}, LK1/c;-><init>(Landroid/content/Context;I)V

    .line 42
    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
