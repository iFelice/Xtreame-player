.class public final synthetic LK0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LK0/t;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LK0/t;->H:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget v0, p0, LK0/t;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LK0/t;->H:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Ljava/util/Comparator;

    .line 9
    .line 10
    check-cast p1, LD1/Q;

    .line 11
    .line 12
    check-cast p2, LD1/Q;

    .line 13
    .line 14
    sget v0, Landroidx/media3/ui/TrackSelectionView;->U:I

    .line 15
    .line 16
    iget-object v0, p1, LD1/Q;->a:Lm0/l0;

    .line 17
    .line 18
    iget-object v0, v0, Lm0/l0;->b:Lm0/g0;

    .line 19
    .line 20
    iget-object v0, v0, Lm0/g0;->d:[Lm0/t;

    .line 21
    .line 22
    iget p1, p1, LD1/Q;->b:I

    .line 23
    .line 24
    aget-object p1, v0, p1

    .line 25
    .line 26
    iget-object v0, p2, LD1/Q;->a:Lm0/l0;

    .line 27
    .line 28
    iget-object v0, v0, Lm0/l0;->b:Lm0/g0;

    .line 29
    .line 30
    iget-object v0, v0, Lm0/g0;->d:[Lm0/t;

    .line 31
    .line 32
    iget p2, p2, LD1/Q;->b:I

    .line 33
    .line 34
    aget-object p2, v0, p2

    .line 35
    .line 36
    invoke-interface {v1, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :pswitch_0
    check-cast v1, LK0/y;

    .line 42
    .line 43
    invoke-interface {v1, p2}, LK0/y;->b(Ljava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-interface {v1, p1}, LK0/y;->b(Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    sub-int/2addr p2, p1

    .line 52
    return p2

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
