.class public Lcom/ies_net/artemis/ArtemisActivity;
.super Landroid/app/NativeActivity;
.source "ArtemisActivity.java"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# instance fields
.field private assetNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

.field private dialog:Landroid/app/AlertDialog$Builder;

.field private iabClient:Lcom/android/billingclient/api/BillingClient;

.field private iabConsume:Z

.field private iabDescription:Ljava/lang/String;

.field private iabPrice:Ljava/lang/String;

.field private iabPurchase:Z

.field private iabSku:Ljava/lang/String;

.field private iabTitle:Ljava/lang/String;

.field private iabToken:Ljava/lang/String;

.field private libraryLoaded:Z

.field private progress:Landroid/app/ProgressDialog;

.field private self:Lcom/ies_net/artemis/ArtemisActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    const/4 v0, 0x0

    .line 574
    iput-boolean v0, p0, Lcom/ies_net/artemis/ArtemisActivity;->libraryLoaded:Z

    return-void
.end method

.method private FinishPurchase(ILcom/android/billingclient/api/BillingResult;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "result"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    .line 503
    iget-object v3, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabDescription:Ljava/lang/String;

    iget-object v5, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabPrice:Ljava/lang/String;

    iget-object v6, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabToken:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/ies_net/artemis/ArtemisActivity;->OnFinishPurchase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private native OnFinishPurchase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "title",
            "description",
            "price",
            "token",
            "errorResponse",
            "errorMessage"
        }
    .end annotation
.end method

.method private native OnFinishVideo()V
.end method

.method private native OnReadyPlayAssetDelivery(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "assetPaths"
        }
    .end annotation
.end method

.method static synthetic access$000(Lcom/ies_net/artemis/ArtemisActivity;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/ies_net/artemis/ArtemisActivity;->assetNames:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ies_net/artemis/ArtemisActivity;)Lcom/google/android/play/core/assetpacks/AssetPackManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/ies_net/artemis/ArtemisActivity;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ies_net/artemis/ArtemisActivity;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabClient:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ies_net/artemis/ArtemisActivity;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabPurchase:Z

    return p0
.end method

.method static synthetic access$200(Lcom/ies_net/artemis/ArtemisActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/ies_net/artemis/ArtemisActivity;->progress:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ies_net/artemis/ArtemisActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity;->progress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ies_net/artemis/ArtemisActivity;)Lcom/ies_net/artemis/ArtemisActivity;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/ies_net/artemis/ArtemisActivity;->self:Lcom/ies_net/artemis/ArtemisActivity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ies_net/artemis/ArtemisActivity;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/ies_net/artemis/ArtemisActivity;->dialog:Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method static synthetic access$402(Lcom/ies_net/artemis/ArtemisActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity;->dialog:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ies_net/artemis/ArtemisActivity;ILcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/ies_net/artemis/ArtemisActivity;->FinishPurchase(ILcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/ies_net/artemis/ArtemisActivity;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabSku:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/ies_net/artemis/ArtemisActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/ies_net/artemis/ArtemisActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/ies_net/artemis/ArtemisActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabPrice:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public DownloadExpansionFiles(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 173
    new-instance v0, Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/vending/licensing/AESObfuscator;

    const/16 v3, 0x14

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V

    .line 175
    invoke-virtual {v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->resetPolicy()V

    .line 177
    new-instance v1, Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lcom/google/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V

    .line 179
    iput-object p0, p0, Lcom/ies_net/artemis/ArtemisActivity;->self:Lcom/ies_net/artemis/ArtemisActivity;

    .line 181
    new-instance p1, Lcom/ies_net/artemis/ArtemisActivity$4;

    invoke-direct {p1, p0, v0}, Lcom/ies_net/artemis/ArtemisActivity$4;-><init>(Lcom/ies_net/artemis/ArtemisActivity;Lcom/google/android/vending/licensing/APKExpansionPolicy;)V

    invoke-virtual {v1, p1}, Lcom/google/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V

    return-void

    :array_0
    .array-data 1
        -0x6t
        -0x73t
        0x15t
        -0x77t
        0x43t
        0x58t
        0x1ct
        -0x1at
        0x54t
        0x43t
        -0x20t
        0x6ft
        0x6ct
        0x66t
        -0x2ct
        0x2et
        0x5et
        0x31t
        -0x62t
        -0x2ft
    .end array-data
.end method

.method public DownloadResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dir",
            "name",
            "url"
        }
    .end annotation

    .line 253
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ies_net/artemis/DownloadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "DIR"

    .line 257
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "NAME"

    .line 258
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "URL"

    .line 259
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 261
    invoke-virtual {p0, v0, p1}, Lcom/ies_net/artemis/ArtemisActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x0

    .line 262
    invoke-virtual {p0, p1, p1}, Lcom/ies_net/artemis/ArtemisActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected native EmulateKeyEvent(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "status"
        }
    .end annotation
.end method

.method public EnablePlayAssetDelivery(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "names"
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/AssetPackManagerFactory;->getInstance(Landroid/content/Context;)Lcom/google/android/play/core/assetpacks/AssetPackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    const-string v0, ","

    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity;->assetNames:Ljava/util/List;

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/ies_net/artemis/ArtemisActivity;->assetNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/ies_net/artemis/ArtemisActivity;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    iget-object v2, p0, Lcom/ies_net/artemis/ArtemisActivity;->assetNames:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->getPackLocation(Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackLocation;

    move-result-object v1

    if-nez v1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {p1, p0}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->registerListener(Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;)V

    .line 159
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity;->assetNames:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->fetch(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;

    return-void

    .line 162
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "|"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->assetsPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ies_net/artemis/ArtemisActivity;->OnReadyPlayAssetDelivery(Ljava/lang/String;)V

    return-void
.end method

.method protected native ExecuteTag(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation
.end method

.method public InAppBilling(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "sku",
            "purchase",
            "consume"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purchase "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Artemis"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {p0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabClient:Lcom/android/billingclient/api/BillingClient;

    .line 293
    iput-object p2, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabSku:Ljava/lang/String;

    .line 294
    iput-boolean p3, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabPurchase:Z

    .line 295
    iput-boolean p4, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabConsume:Z

    const-string p2, ""

    .line 296
    iput-object p2, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabTitle:Ljava/lang/String;

    .line 297
    iput-object p2, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabDescription:Ljava/lang/String;

    .line 298
    iput-object p2, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabPrice:Ljava/lang/String;

    .line 299
    iput-object p2, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabToken:Ljava/lang/String;

    .line 300
    iput-object p0, p0, Lcom/ies_net/artemis/ArtemisActivity;->self:Lcom/ies_net/artemis/ArtemisActivity;

    .line 304
    new-instance p2, Lcom/ies_net/artemis/ArtemisActivity$5;

    invoke-direct {p2, p0}, Lcom/ies_net/artemis/ArtemisActivity$5;-><init>(Lcom/ies_net/artemis/ArtemisActivity;)V

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method public OnPurchaseSucceeded(Lcom/android/billingclient/api/Purchase;ILcom/android/billingclient/api/BillingResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "purchase",
            "code",
            "result"
        }
    .end annotation

    .line 511
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabToken:Ljava/lang/String;

    .line 513
    iget-boolean v0, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabConsume:Z

    if-nez v0, :cond_1

    .line 515
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-direct {p0, p2, p3}, Lcom/ies_net/artemis/ArtemisActivity;->FinishPurchase(ILcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 520
    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object p1

    .line 522
    iget-object p3, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v0, Lcom/ies_net/artemis/ArtemisActivity$6;

    invoke-direct {v0, p0, p2}, Lcom/ies_net/artemis/ArtemisActivity$6;-><init>(Lcom/ies_net/artemis/ArtemisActivity;I)V

    invoke-virtual {p3, p1, v0}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    return-void

    .line 539
    :cond_1
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p1

    .line 541
    iget-object p3, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v0, Lcom/ies_net/artemis/ArtemisActivity$7;

    invoke-direct {v0, p0, p2}, Lcom/ies_net/artemis/ArtemisActivity$7;-><init>(Lcom/ies_net/artemis/ArtemisActivity;I)V

    invoke-virtual {p3, p1, v0}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    return-void
.end method

.method public PlayVideo(Ljava/lang/String;IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "offset",
            "length",
            "volume",
            "skip"
        }
    .end annotation

    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ies_net/artemis/VideoViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000

    .line 272
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "PATH"

    .line 274
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "OFFSET"

    .line 275
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "LENGTH"

    .line 276
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "VOLUME"

    .line 277
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "SKIP"

    .line 278
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 280
    invoke-virtual {p0, v0, p1}, Lcom/ies_net/artemis/ArtemisActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x0

    .line 281
    invoke-virtual {p0, p1, p1}, Lcom/ies_net/artemis/ArtemisActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    .line 479
    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisActivity;->finish()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 483
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisActivity;->OnFinishVideo()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 439
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 441
    iget-boolean p1, p0, Lcom/ies_net/artemis/ArtemisActivity;->libraryLoaded:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 445
    :try_start_0
    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :catch_0
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "android.app.lib_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 450
    iput-boolean p1, p0, Lcom/ies_net/artemis/ArtemisActivity;->libraryLoaded:Z

    :cond_0
    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purchase onPurchasesUpdated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Artemis"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    if-ne p2, v2, :cond_0

    const/16 p2, -0xc

    .line 409
    invoke-direct {p0, p2, p1}, Lcom/ies_net/artemis/ArtemisActivity;->FinishPurchase(ILcom/android/billingclient/api/BillingResult;)V

    goto :goto_0

    :cond_0
    const/4 p2, -0x6

    .line 411
    invoke-direct {p0, p2, p1}, Lcom/ies_net/artemis/ArtemisActivity;->FinishPurchase(ILcom/android/billingclient/api/BillingResult;)V

    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ies_net/artemis/ArtemisActivity;->iabSku:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 422
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 424
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    if-eq v0, v2, :cond_3

    const-string p2, "Purchase onPurchasesUpdated not PURCHASED."

    .line 426
    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x8

    .line 428
    invoke-direct {p0, p2, p1}, Lcom/ies_net/artemis/ArtemisActivity;->FinishPurchase(ILcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 431
    :cond_3
    invoke-virtual {p0, p2, v2, p1}, Lcom/ies_net/artemis/ArtemisActivity;->OnPurchaseSucceeded(Lcom/android/billingclient/api/Purchase;ILcom/android/billingclient/api/BillingResult;)V

    return-void

    :cond_4
    :goto_1
    const-string p2, "Purchase onPurchasesUpdated invalid list."

    .line 417
    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x7

    .line 419
    invoke-direct {p0, p2, p1}, Lcom/ies_net/artemis/ArtemisActivity;->FinishPurchase(ILcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 459
    invoke-super {p0}, Landroid/app/NativeActivity;->onResume()V

    .line 461
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public onStateUpdate(Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PAD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Artemis"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x7

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {p1, p0}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->showCellularDataConfirmation(Landroid/app/Activity;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/ies_net/artemis/ArtemisActivity$1;

    invoke-direct {v0, p0}, Lcom/ies_net/artemis/ArtemisActivity$1;-><init>(Lcom/ies_net/artemis/ArtemisActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    goto/16 :goto_1

    .line 114
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/ies_net/artemis/ArtemisActivity;->assetNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 118
    iget-object v1, p0, Lcom/ies_net/artemis/ArtemisActivity;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    iget-object v2, p0, Lcom/ies_net/artemis/ArtemisActivity;->assetNames:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->getPackLocation(Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackLocation;

    move-result-object v1

    if-nez v1, :cond_2

    .line 122
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity;->assetNames:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->fetch(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;

    return-void

    .line 125
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "|"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackLocation;->assetsPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_4
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity;->progress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/ies_net/artemis/ArtemisActivity$3;

    invoke-direct {v0, p0}, Lcom/ies_net/artemis/ArtemisActivity$3;-><init>(Lcom/ies_net/artemis/ArtemisActivity;)V

    invoke-virtual {p0, v0}, Lcom/ies_net/artemis/ArtemisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 135
    :cond_5
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity;->assetPackManager:Lcom/google/android/play/core/assetpacks/AssetPackManager;

    invoke-interface {v0, p0}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->unregisterListener(Lcom/google/android/play/core/assetpacks/AssetPackStateUpdateListener;)V

    .line 136
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ies_net/artemis/ArtemisActivity;->OnReadyPlayAssetDelivery(Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_6
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity;->progress:Landroid/app/ProgressDialog;

    if-nez v0, :cond_7

    .line 91
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->totalBytesToDownload()J

    move-result-wide v3

    .line 92
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->bytesDownloaded()J

    move-result-wide v5

    .line 94
    iput-object p0, p0, Lcom/ies_net/artemis/ArtemisActivity;->self:Lcom/ies_net/artemis/ArtemisActivity;

    .line 96
    new-instance p1, Lcom/ies_net/artemis/ArtemisActivity$2;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/ies_net/artemis/ArtemisActivity$2;-><init>(Lcom/ies_net/artemis/ArtemisActivity;JJ)V

    invoke-virtual {p0, p1}, Lcom/ies_net/artemis/ArtemisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 108
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->bytesDownloaded()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onStateUpdate(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    .line 50
    check-cast p1, Lcom/google/android/play/core/assetpacks/AssetPackState;

    invoke-virtual {p0, p1}, Lcom/ies_net/artemis/ArtemisActivity;->onStateUpdate(Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasFocus"
        }
    .end annotation

    .line 57
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onWindowFocusChanged(Z)V

    .line 59
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1006

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
