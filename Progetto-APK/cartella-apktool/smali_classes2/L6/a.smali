.class public final LL6/a;
.super Lc1/d;
.source "SourceFile"


# static fields
.field public static final synthetic I:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public H:I

.field private volatile synthetic _state$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    .line 3
    const-string v1, "_state$volatile"

    .line 4
    .line 5
    const-class v2, LL6/a;

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, LL6/a;->I:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-direct {p0, v0}, Lc1/d;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, LL6/a;->_state$volatile:Ljava/lang/Object;

    .line 6
    .line 7
    return-void
.end method
