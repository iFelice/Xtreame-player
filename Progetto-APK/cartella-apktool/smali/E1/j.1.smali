.class public final LE1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LE1/u;

.field public final synthetic I:LE1/h;

.field public final synthetic J:Ljava/util/Collection;

.field public final synthetic K:LE1/l;


# direct methods
.method public synthetic constructor <init>(LE1/l;LE1/u;LE1/h;Ljava/util/Collection;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p5, p0, LE1/j;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LE1/j;->K:LE1/l;

    .line 7
    .line 8
    iput-object p2, p0, LE1/j;->H:LE1/u;

    .line 9
    .line 10
    iput-object p3, p0, LE1/j;->I:LE1/h;

    .line 11
    .line 12
    iput-object p4, p0, LE1/j;->J:Ljava/util/Collection;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, LE1/j;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LE1/j;->K:LE1/l;

    .line 4
    .line 5
    iget-object v2, p0, LE1/j;->H:LE1/u;

    .line 6
    .line 7
    iget-object v3, p0, LE1/j;->J:Ljava/util/Collection;

    .line 8
    .line 9
    iget-object v4, p0, LE1/j;->I:LE1/h;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1, v4, v3}, LE1/u;->a(LE1/l;LE1/h;Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    invoke-virtual {v2, v1, v4, v3}, LE1/u;->a(LE1/l;LE1/h;Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
