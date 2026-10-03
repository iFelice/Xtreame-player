.class public final Lcom/google/api/AuthProvider;
.super Lcom/google/protobuf/i1;
.source "SourceFile"

# interfaces
.implements Lw4/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/i1;",
        "Lw4/d;"
    }
.end annotation


# static fields
.field public static final AUDIENCES_FIELD_NUMBER:I = 0x4

.field public static final AUTHORIZATION_URL_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final ISSUER_FIELD_NUMBER:I = 0x2

.field public static final JWKS_URI_FIELD_NUMBER:I = 0x3

.field public static final JWT_LOCATIONS_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2;"
        }
    .end annotation
.end field


# instance fields
.field private audiences_:Ljava/lang/String;

.field private authorizationUrl_:Ljava/lang/String;

.field private id_:Ljava/lang/String;

.field private issuer_:Ljava/lang/String;

.field private jwksUri_:Ljava/lang/String;

.field private jwtLocations_:Lcom/google/protobuf/u1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/u1;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/AuthProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/api/AuthProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    .line 7
    .line 8
    const-class v1, Lcom/google/api/AuthProvider;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/i1;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/i1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/i1;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/api/AuthProvider;->id_:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/api/AuthProvider;->issuer_:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/api/AuthProvider;->jwksUri_:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/api/AuthProvider;->audiences_:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/api/AuthProvider;->authorizationUrl_:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {}, Lcom/google/protobuf/i1;->emptyProtobufList()Lcom/google/protobuf/u1;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/u1;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic access$000()Lcom/google/api/AuthProvider;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/api/AuthProvider;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->setId(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/google/api/AuthProvider;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->setAudiences(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/google/api/AuthProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->clearAudiences()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/google/api/AuthProvider;Lcom/google/protobuf/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->setAudiencesBytes(Lcom/google/protobuf/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lcom/google/api/AuthProvider;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->setAuthorizationUrl(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lcom/google/api/AuthProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->clearAuthorizationUrl()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1500(Lcom/google/api/AuthProvider;Lcom/google/protobuf/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->setAuthorizationUrlBytes(Lcom/google/protobuf/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1600(Lcom/google/api/AuthProvider;ILcom/google/api/JwtLocation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/api/AuthProvider;->setJwtLocations(ILcom/google/api/JwtLocation;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1700(Lcom/google/api/AuthProvider;Lcom/google/api/JwtLocation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->addJwtLocations(Lcom/google/api/JwtLocation;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1800(Lcom/google/api/AuthProvider;ILcom/google/api/JwtLocation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/api/AuthProvider;->addJwtLocations(ILcom/google/api/JwtLocation;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1900(Lcom/google/api/AuthProvider;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->addAllJwtLocations(Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/google/api/AuthProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->clearId()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2000(Lcom/google/api/AuthProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->clearJwtLocations()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2100(Lcom/google/api/AuthProvider;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->removeJwtLocations(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/google/api/AuthProvider;Lcom/google/protobuf/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->setIdBytes(Lcom/google/protobuf/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/google/api/AuthProvider;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->setIssuer(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/google/api/AuthProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->clearIssuer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/google/api/AuthProvider;Lcom/google/protobuf/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->setIssuerBytes(Lcom/google/protobuf/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/google/api/AuthProvider;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->setJwksUri(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/google/api/AuthProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->clearJwksUri()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/google/api/AuthProvider;Lcom/google/protobuf/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->setJwksUriBytes(Lcom/google/protobuf/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addAllJwtLocations(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/JwtLocation;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->ensureJwtLocationsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/u1;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/b;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addJwtLocations(ILcom/google/api/JwtLocation;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->ensureJwtLocationsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/u1;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addJwtLocations(Lcom/google/api/JwtLocation;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->ensureJwtLocationsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/u1;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAudiences()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/api/AuthProvider;->getDefaultInstance()Lcom/google/api/AuthProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getAudiences()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/api/AuthProvider;->audiences_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearAuthorizationUrl()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/api/AuthProvider;->getDefaultInstance()Lcom/google/api/AuthProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getAuthorizationUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/api/AuthProvider;->authorizationUrl_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/api/AuthProvider;->getDefaultInstance()Lcom/google/api/AuthProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/api/AuthProvider;->id_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearIssuer()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/api/AuthProvider;->getDefaultInstance()Lcom/google/api/AuthProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getIssuer()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/api/AuthProvider;->issuer_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearJwksUri()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/api/AuthProvider;->getDefaultInstance()Lcom/google/api/AuthProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getJwksUri()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/api/AuthProvider;->jwksUri_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearJwtLocations()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/i1;->emptyProtobufList()Lcom/google/protobuf/u1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/u1;

    .line 6
    .line 7
    return-void
.end method

.method private ensureJwtLocationsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/u1;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/protobuf/c;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/google/protobuf/c;->G:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/protobuf/i1;->mutableCopy(Lcom/google/protobuf/u1;)Lcom/google/protobuf/u1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/u1;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/AuthProvider;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lw4/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/protobuf/i1;->createBuilder()Lcom/google/protobuf/b1;

    move-result-object v0

    check-cast v0, Lw4/c;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/AuthProvider;)Lw4/c;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/i1;->createBuilder(Lcom/google/protobuf/i1;)Lcom/google/protobuf/b1;

    move-result-object p0

    check-cast p0, Lw4/c;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/AuthProvider;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseDelimitedFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/api/AuthProvider;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseDelimitedFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;)Lcom/google/api/AuthProvider;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/r;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/r;Lcom/google/protobuf/O0;)Lcom/google/api/AuthProvider;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/r;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/w;)Lcom/google/api/AuthProvider;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/w;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/w;Lcom/google/protobuf/O0;)Lcom/google/api/AuthProvider;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Lcom/google/protobuf/w;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/AuthProvider;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/api/AuthProvider;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/io/InputStream;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/AuthProvider;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/O0;)Lcom/google/api/AuthProvider;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;Ljava/nio/ByteBuffer;Lcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/AuthProvider;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;[B)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/O0;)Lcom/google/api/AuthProvider;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/i1;->parseFrom(Lcom/google/protobuf/i1;[BLcom/google/protobuf/O0;)Lcom/google/protobuf/i1;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/i1;->getParserForType()Lcom/google/protobuf/e2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private removeJwtLocations(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->ensureJwtLocationsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/u1;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setAudiences(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/AuthProvider;->audiences_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setAudiencesBytes(Lcom/google/protobuf/r;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/r;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/r;->t()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/api/AuthProvider;->audiences_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setAuthorizationUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/AuthProvider;->authorizationUrl_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setAuthorizationUrlBytes(Lcom/google/protobuf/r;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/r;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/r;->t()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/api/AuthProvider;->authorizationUrl_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/AuthProvider;->id_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setIdBytes(Lcom/google/protobuf/r;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/r;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/r;->t()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/api/AuthProvider;->id_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setIssuer(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/AuthProvider;->issuer_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setIssuerBytes(Lcom/google/protobuf/r;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/r;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/r;->t()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/api/AuthProvider;->issuer_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setJwksUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/AuthProvider;->jwksUri_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setJwksUriBytes(Lcom/google/protobuf/r;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/r;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/r;->t()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/api/AuthProvider;->jwksUri_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setJwtLocations(ILcom/google/api/JwtLocation;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->ensureJwtLocationsIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/u1;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/h1;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw p1

    .line 15
    :pswitch_0
    sget-object p1, Lcom/google/api/AuthProvider;->PARSER:Lcom/google/protobuf/e2;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-class p2, Lcom/google/api/AuthProvider;

    .line 20
    .line 21
    monitor-enter p2

    .line 22
    :try_start_0
    sget-object p1, Lcom/google/api/AuthProvider;->PARSER:Lcom/google/protobuf/e2;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    new-instance p1, Lcom/google/protobuf/c1;

    .line 27
    .line 28
    sget-object p3, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    .line 29
    .line 30
    invoke-direct {p1, p3}, Lcom/google/protobuf/c1;-><init>(Lcom/google/protobuf/i1;)V

    .line 31
    .line 32
    .line 33
    sput-object p1, Lcom/google/api/AuthProvider;->PARSER:Lcom/google/protobuf/e2;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit p2

    .line 39
    goto :goto_2

    .line 40
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1

    .line 42
    :cond_1
    :goto_2
    return-object p1

    .line 43
    :pswitch_1
    sget-object p1, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    .line 44
    .line 45
    return-object p1

    .line 46
    :pswitch_2
    new-instance p1, Lw4/c;

    .line 47
    .line 48
    invoke-static {}, Lcom/google/api/AuthProvider;->access$000()Lcom/google/api/AuthProvider;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p1, p2}, Lcom/google/protobuf/b1;-><init>(Lcom/google/protobuf/i1;)V

    .line 53
    .line 54
    .line 55
    return-object p1

    .line 56
    :pswitch_3
    new-instance p1, Lcom/google/api/AuthProvider;

    .line 57
    .line 58
    invoke-direct {p1}, Lcom/google/api/AuthProvider;-><init>()V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    :pswitch_4
    const/4 p1, 0x7

    .line 63
    new-array p1, p1, [Ljava/lang/Object;

    .line 64
    .line 65
    const-string p3, "id_"

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    aput-object p3, p1, v0

    .line 69
    .line 70
    const-string p3, "issuer_"

    .line 71
    .line 72
    aput-object p3, p1, p2

    .line 73
    .line 74
    const-string p2, "jwksUri_"

    .line 75
    .line 76
    const/4 p3, 0x2

    .line 77
    aput-object p2, p1, p3

    .line 78
    .line 79
    const-string p2, "audiences_"

    .line 80
    .line 81
    const/4 p3, 0x3

    .line 82
    aput-object p2, p1, p3

    .line 83
    .line 84
    const-string p2, "authorizationUrl_"

    .line 85
    .line 86
    const/4 p3, 0x4

    .line 87
    aput-object p2, p1, p3

    .line 88
    .line 89
    const-string p2, "jwtLocations_"

    .line 90
    .line 91
    const/4 p3, 0x5

    .line 92
    aput-object p2, p1, p3

    .line 93
    .line 94
    const-class p2, Lcom/google/api/JwtLocation;

    .line 95
    .line 96
    const/4 p3, 0x6

    .line 97
    aput-object p2, p1, p3

    .line 98
    .line 99
    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208\u0005\u0208\u0006\u001b"

    .line 100
    .line 101
    sget-object p3, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    .line 102
    .line 103
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/i1;->newMessageInfo(Lcom/google/protobuf/Q1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    :pswitch_5
    const/4 p1, 0x0

    .line 109
    return-object p1

    .line 110
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    return-object p1

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAudiences()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/AuthProvider;->audiences_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAudiencesBytes()Lcom/google/protobuf/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/AuthProvider;->audiences_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/r;->l(Ljava/lang/String;)Lcom/google/protobuf/q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAuthorizationUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/AuthProvider;->authorizationUrl_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAuthorizationUrlBytes()Lcom/google/protobuf/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/AuthProvider;->authorizationUrl_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/r;->l(Ljava/lang/String;)Lcom/google/protobuf/q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/AuthProvider;->id_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/AuthProvider;->id_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/r;->l(Ljava/lang/String;)Lcom/google/protobuf/q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/AuthProvider;->issuer_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIssuerBytes()Lcom/google/protobuf/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/AuthProvider;->issuer_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/r;->l(Ljava/lang/String;)Lcom/google/protobuf/q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getJwksUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwksUri_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJwksUriBytes()Lcom/google/protobuf/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwksUri_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/r;->l(Ljava/lang/String;)Lcom/google/protobuf/q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getJwtLocations(I)Lcom/google/api/JwtLocation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/u1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/api/JwtLocation;

    .line 8
    .line 9
    return-object p1
.end method

.method public getJwtLocationsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/u1;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getJwtLocationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/JwtLocation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/u1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJwtLocationsOrBuilder(I)Lw4/J;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/u1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lw4/J;

    .line 8
    .line 9
    return-object p1
.end method

.method public getJwtLocationsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lw4/J;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/u1;

    .line 2
    .line 3
    return-object v0
.end method
