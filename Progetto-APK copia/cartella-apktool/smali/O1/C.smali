.class public abstract LO1/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final G:LO1/D;

.field public final H:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LO1/D;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/database/Observable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LO1/C;->G:LO1/D;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, LO1/C;->H:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public b(I)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public abstract c(LO1/c0;I)V
.end method

.method public abstract d(Landroidx/recyclerview/widget/RecyclerView;I)LO1/c0;
.end method

.method public e(LO1/c0;)V
    .locals 0

    .line 1
    return-void
.end method
