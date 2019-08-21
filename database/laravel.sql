-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 21 2019 г., 07:26
-- Версия сервера: 5.6.41
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descr` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `descr`, `created_at`, `updated_at`) VALUES
(2, 'rpg', 'description some', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_18_114257_create_categories_table', 1),
(4, '2019_08_18_115535_create_products_table', 1),
(5, '2019_08_19_175534_add_extra_fied_to_users_table', 1),
(6, '2019_08_20_143054_create_orders_table', 1),
(7, '2019_08_20_235519_add_extra_field_to_users_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `email`, `user_id`, `product_id`, `total`, `created_at`, `updated_at`) VALUES
(1, 'test@test.tu', 1, 2, 23423, '2019-08-20 20:00:00', '2019-08-26 20:00:00'),
(2, 'ubuntu@ubuntu.com', 1, 2, 83043, '2019-08-20 20:22:34', '2019-08-20 20:22:34'),
(3, 'ubuntu@ubuntu.com', 1, 2, 83043, '2019-08-20 20:23:47', '2019-08-20 20:23:47'),
(4, 'ubuntu@ubuntu.com', 1, 2, 83043, '2019-08-20 20:26:17', '2019-08-20 20:26:17'),
(5, 'ubuntu@ubuntu.com', 1, 2, 83043, '2019-08-20 20:30:20', '2019-08-20 20:30:20'),
(6, 'ubuntu@ubuntu.com', 1, 2, 83043, '2019-08-20 20:30:49', '2019-08-20 20:30:49'),
(7, 'ubuntu@ubuntu.com', 1, 2, 83043, '2019-08-20 20:34:10', '2019-08-20 20:34:10'),
(8, 'ubuntu@ubuntu.com', 1, 2, 83043, '2019-08-20 20:34:15', '2019-08-20 20:34:15'),
(9, 'ubuntu@ubuntu.com', 1, 2, 83043, '2019-08-20 20:34:52', '2019-08-20 20:34:52'),
(10, 'ubuntu@ubuntu.com', 1, 2, 83043, '2019-08-20 20:35:47', '2019-08-20 20:35:47'),
(11, 'ubuntu@ubuntu.com', 1, 2, 83043, '2019-08-20 20:36:09', '2019-08-20 20:36:09'),
(12, 'ubuntu@ubuntu.com', 1, 2, 83043, '2019-08-20 20:37:39', '2019-08-20 20:37:39'),
(13, 'test@test.com', 2, 2, 83043, '2019-08-20 20:40:56', '2019-08-20 20:40:56');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descr` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `photo`, `descr`, `created_at`, `updated_at`) VALUES
(2, NULL, 'Autem delectus qui.', 83043, 'https://lorempixel.com/616/353/?38798', 'Amet labore ipsa excepturi. Nesciunt hic velit neque et. Tempora et ut soluta iusto magni. Earum voluptas fugiat sint voluptatibus aut nesciunt vitae. Molestias illum qui voluptate praesentium. Similique eos debitis ullam dolor. Cupiditate nihil rerum optio. Ut non delectus velit qui quia perferendis quis consequatur. Dolore vel aut accusantium a quae. Atque sequi autem et voluptatum. Asperiores eos alias reprehenderit est ducimus modi aut.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(3, 2, 'Provident architecto temporibus.', 11876, 'https://lorempixel.com/616/353/?92317', 'Dignissimos animi cumque nam placeat perspiciatis deserunt veritatis tempore. Quo asperiores quis molestiae aut. Repellendus sequi quis et unde quis eveniet consequatur. Veritatis omnis optio veniam culpa corrupti quasi sunt. Sunt optio fugit nemo enim harum et ab. Labore pariatur laboriosam earum qui. Assumenda veritatis nihil non omnis natus illum quia.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(4, 2, 'Dolorem a.', 87689, 'https://lorempixel.com/616/353/?58739', 'Cupiditate et voluptatem officia omnis ipsa asperiores quia. Eaque eos quod molestiae earum minima ad ab. Et ducimus atque reprehenderit. Velit facilis harum amet esse autem voluptas molestiae consequuntur. In modi distinctio et possimus et aut. Voluptatum est consectetur similique ipsam non rerum saepe reprehenderit.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(5, NULL, 'Est magnam.', 43157, 'https://lorempixel.com/616/353/?96954', 'Porro velit sunt enim porro eius. Occaecati pariatur ducimus qui et commodi qui qui. Sit nihil id esse sed eveniet. Sed quod veniam qui nisi nihil. Iure eaque nisi iste dolor. Nihil corrupti nobis aspernatur autem saepe est et. Et est voluptatem ab sapiente cumque totam. Officia tenetur blanditiis voluptas saepe. Fugit voluptatem eius id beatae. Facilis fuga occaecati sed molestias.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(6, 2, 'Asperiores laboriosam.', 4551, 'https://lorempixel.com/616/353/?50364', 'Quia provident ea ratione quibusdam incidunt distinctio aut. Aut vitae ut non sunt in. Esse earum voluptatibus non et odit et nisi. Dolorum et aliquid aliquam nihil. Et modi unde eos ut asperiores repudiandae hic. Aut nulla id molestias est est. Recusandae nam voluptates alias adipisci aut. Earum similique exercitationem ut sapiente aspernatur et. Fugit et omnis et ad sed tempore et. Sint odio autem pariatur.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(7, 2, 'Nobis quaerat.', 4535, 'https://lorempixel.com/616/353/?76136', 'Est voluptas occaecati fugit consequuntur aut. Quas voluptatem qui et at nesciunt quasi est repellendus. Qui quos unde ratione vel. Minus vel harum a. Cumque in eos et accusantium sapiente ipsum sint consequatur. Velit omnis repudiandae qui asperiores eum ab a. Nihil non cupiditate accusantium eaque facere vero. Illo facere sit ut quod. Consequatur et voluptatum blanditiis vel ipsam. Ut aut iure libero quo est. Enim et deserunt ratione voluptatem. Velit soluta sint expedita.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(8, NULL, 'Accusantium et.', 7923, 'https://lorempixel.com/616/353/?18176', 'Quia maxime impedit sit asperiores. Quae aut explicabo sed. Aut repellendus sed voluptatibus ex. Ea amet error autem quia numquam a aliquam. Quia veritatis totam ullam error ipsum aut. Voluptatem dolorem dolor eos est placeat beatae nostrum corrupti. Modi voluptas architecto dolore fugit. Ad ipsa nulla quo eveniet vel. Ut debitis sit facilis voluptatum aut recusandae. Sed officia culpa asperiores omnis blanditiis.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(9, 2, 'Atque tempore eaque.', 6170, 'https://lorempixel.com/616/353/?47745', 'Dolor et est incidunt impedit. Et asperiores ut sunt at harum quia. Molestiae quaerat veritatis sit et. Ut eligendi earum magni et temporibus qui. Ut error aliquam impedit cupiditate. Esse laborum maxime similique saepe ut esse. Est qui nihil animi sapiente asperiores accusamus. Dolores numquam eos minima vel. Assumenda et labore fugit similique et sapiente.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(10, 2, 'Totam velit nihil.', 1056, 'https://lorempixel.com/616/353/?74794', 'Architecto exercitationem numquam deleniti facere mollitia explicabo. Repellendus architecto ipsa velit ipsam nesciunt cum consequuntur. Laudantium ipsum quia natus alias enim. Deserunt culpa quasi aliquid officia corrupti. Ducimus voluptates est sed reiciendis distinctio. Ad qui laudantium possimus ut et libero harum. Quod aut dolorem et aliquam voluptas.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(11, NULL, 'Possimus doloremque.', 94334, 'https://lorempixel.com/616/353/?11652', 'Similique autem dicta aut nemo architecto suscipit recusandae. Tempora omnis eos sed aperiam. Aliquam tempore incidunt quidem dolore. Dicta vel sint eaque in nihil. Reiciendis dicta molestiae voluptatum minus id. Sint suscipit eum est adipisci sapiente. Consequuntur odio optio dignissimos quia alias expedita facere. Quasi laudantium suscipit delectus. Dolorum ut id est quam sequi provident cum. Nam exercitationem veniam quo voluptatibus incidunt impedit.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(12, 2, 'Vero consequuntur maxime.', 11366, 'https://lorempixel.com/616/353/?21784', 'Dolores similique doloribus quia aspernatur quis. Nostrum dolorum qui itaque eligendi tempore. Ea consequatur et quia. Ut quisquam libero maxime amet libero et voluptatibus. Et sint reprehenderit et unde eligendi. Ut ut illum assumenda id numquam eos quo. Qui non minus magni soluta sed rerum quas. Quidem explicabo cum id maiores facere eaque optio. Quae eos dignissimos numquam qui voluptates quisquam.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(13, NULL, 'Saepe qui fugiat.', 71507, 'https://lorempixel.com/616/353/?35851', 'Eum natus et molestiae sit porro. Excepturi est et distinctio rerum autem ut. Excepturi qui eius est ut. Nostrum dolore consequatur sunt natus ipsa. Beatae vel consequuntur ea fugiat. Ducimus eum provident quia. Porro quia ratione tempora sed eaque quia. Ut corporis magni omnis molestiae dolores quo. Ab quidem deserunt quod ad dolores et recusandae. Blanditiis deserunt ipsam veritatis accusantium dolores omnis.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(14, 2, 'Nemo sed.', 74776, 'https://lorempixel.com/616/353/?61099', 'Nihil accusantium occaecati velit blanditiis velit. Autem quaerat aut assumenda. Autem aperiam commodi autem ut. Non reiciendis accusantium aut eum velit nesciunt. Delectus architecto nostrum qui commodi cupiditate. Voluptatem iste qui qui exercitationem. Ad dolorem quo illo. Error nostrum necessitatibus doloremque eligendi.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(15, 2, 'Sequi quas sint.', 8112, 'https://lorempixel.com/616/353/?22291', 'Eos debitis autem at inventore fugiat veritatis quam. Aut magnam delectus similique saepe facere. Deserunt aut iure saepe. Rerum non aspernatur debitis cum. Illum voluptates eius illo dolorem. Ut aut dolores tenetur veniam. Magni est in et et illo facere voluptatem consectetur.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(16, 2, 'Omnis debitis.', 9743, 'https://lorempixel.com/616/353/?20963', 'Hic omnis facere itaque voluptates porro. Illum ut architecto nulla debitis. Repellendus facilis tempora animi recusandae. Occaecati repellendus maiores deleniti temporibus ipsam. Qui qui autem consectetur. Alias illum mollitia iusto et saepe placeat. Blanditiis iste praesentium ut id atque porro. Praesentium minus rem provident ea culpa magni impedit. Deleniti rem ut quia magnam voluptates distinctio sed neque. Impedit ullam sapiente quidem fuga laboriosam in distinctio.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(17, NULL, 'Vel omnis ut.', 86945, 'https://lorempixel.com/616/353/?60159', 'Voluptas sunt voluptate nostrum ut voluptas tempora. Est maxime illo aut quae asperiores voluptas. Ipsam impedit in laudantium. Molestiae tempora dolor ipsam commodi et. Ab eum accusantium expedita quas vitae. Dolore aut debitis sunt inventore est quos. Consequatur officia earum magni impedit eius quibusdam. Dolore modi corporis dolore unde. Sunt aliquid ex voluptatem impedit facilis. Est repudiandae sit at molestiae dignissimos et. Omnis dolor quam nisi est dolore nihil.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(18, 2, 'Enim ratione.', 57293, 'https://lorempixel.com/616/353/?67275', 'Repellat totam tenetur tempora velit. Repudiandae iure alias pariatur cumque eos saepe. Iste eligendi quas quis. Aut eos et suscipit error eum accusamus totam. Corporis vitae fugiat quis pariatur. Maiores culpa nemo quia aut error maiores. Voluptatem deserunt quia deleniti. Optio laudantium quibusdam eius. Aspernatur praesentium consectetur corporis iste. Rerum et non molestiae et.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(19, NULL, 'Nisi ut.', 41950, 'https://lorempixel.com/616/353/?67773', 'Assumenda enim at nemo inventore et voluptatibus. Non est quia qui dolorum reiciendis itaque. Nobis nobis modi laborum non molestiae sed et. Ullam modi quis impedit adipisci eius voluptas qui. Quidem necessitatibus dolorum tenetur quis cupiditate. Inventore quis nulla earum expedita eos. Saepe fugiat ut minus quod et quos et. Exercitationem dolor aut quae non temporibus qui.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(20, 2, 'Aut esse repudiandae.', 20318, 'https://lorempixel.com/616/353/?20326', 'Quam eos suscipit perspiciatis recusandae necessitatibus. Est aperiam vel tempore placeat. Dolore illo voluptatem repellendus officia. Corporis tenetur magni enim optio omnis qui consequuntur. Incidunt quod sed non nisi. Blanditiis aperiam et hic temporibus occaecati sunt. Aliquid et explicabo reprehenderit laborum sed ex. Quas eligendi enim voluptatem sit qui est voluptates enim. Quod est est excepturi.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(21, NULL, 'Corporis veritatis eveniet.', 83337, 'https://lorempixel.com/616/353/?78160', 'Est labore laudantium porro consequatur. Ipsum dolores ut ipsa perferendis illum ut amet. Magnam sapiente accusantium distinctio sed aperiam eos animi. Et alias ipsam provident. Quis consequatur illum dolorum quos. Quis amet debitis sequi culpa. Id aliquam odio aspernatur. Fugiat eligendi quas quia debitis minus inventore aliquid molestiae. Consequuntur qui maxime voluptatum et illum. Temporibus voluptatem iste nostrum et. Alias est ipsam laudantium enim et aperiam architecto.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(22, 2, 'Enim voluptatem excepturi.', 42742, 'https://lorempixel.com/616/353/?79781', 'Illo autem eum voluptas et ratione aspernatur quos voluptas. Totam aut repellat veritatis quia. Provident ullam corporis necessitatibus quis eaque qui. Iusto similique voluptates at doloribus similique. Porro facere sit eligendi nobis dolores magnam veniam. Commodi cum aperiam accusamus accusantium repellat enim. Explicabo impedit aliquam totam alias.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(23, NULL, 'Ab incidunt enim.', 93084, 'https://lorempixel.com/616/353/?95471', 'Reiciendis quibusdam sit exercitationem rem distinctio corrupti officia rerum. Modi similique et qui rerum tenetur reprehenderit. Nisi ipsa cum atque. Perspiciatis autem libero laborum qui corrupti aperiam laboriosam. Quas incidunt minus sit facere libero quisquam quidem. Quas rerum tempora veritatis sit. Veniam modi quaerat fugit optio cum itaque. Velit maiores temporibus enim. Autem est ut velit possimus id autem blanditiis.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(24, 2, 'Sed dolor molestiae.', 38834, 'https://lorempixel.com/616/353/?16008', 'Excepturi soluta repellat blanditiis voluptas et. Sit mollitia vel qui eligendi voluptatem. In voluptatem omnis reprehenderit quia debitis. Incidunt adipisci est quo. Quibusdam in debitis quas nihil velit. Nesciunt beatae velit ullam impedit. Eum ut tempora dignissimos aliquam nisi et. Tempore quaerat eaque aut ut.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(25, NULL, 'Est hic totam.', 80949, 'https://lorempixel.com/616/353/?84580', 'Dolor est ad nisi eos fugit quas optio. Ab culpa est nam voluptas pariatur est possimus. Dolores aut aut sequi nisi maiores quo. Hic ipsam sit et. Id aspernatur modi laudantium officiis deleniti. Blanditiis quas odit eius dolores et. Aut eius earum rem aut vitae. Est autem minima dolorum culpa. Accusamus aut quia exercitationem debitis.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(26, 2, 'Consectetur doloribus voluptatem.', 70830, 'https://lorempixel.com/616/353/?36073', 'Perspiciatis maiores et ratione est. Aspernatur sed sint atque earum. Tempore iure nostrum magni eos. Rerum delectus delectus enim. Ut dolores repellendus nemo et rem laboriosam. Quidem excepturi consectetur et temporibus corrupti nam dolorum. Nihil et iure nostrum consectetur odit eius. Voluptas modi et animi facilis mollitia laudantium atque earum. Minus rerum recusandae veniam rem officiis. Tenetur adipisci dolorem eum voluptatum ullam in.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(27, 2, 'Est sunt numquam.', 98206, 'https://lorempixel.com/616/353/?83518', 'Earum officiis tempore quos eos ea ducimus. Qui beatae quos voluptas animi repudiandae non. Ut occaecati dolores provident incidunt. Nesciunt ratione repudiandae non tenetur voluptatum enim. Sit assumenda est voluptatem maxime esse aut et cupiditate. Sit accusamus ipsam omnis odit error. Porro blanditiis qui dolores et quia. Quis quidem libero facere rem est aut et. Velit sed at nemo eos laborum velit.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(28, 2, 'Iusto voluptatem.', 16237, 'https://lorempixel.com/616/353/?86444', 'Rerum ex dolorem quidem ut vero repudiandae. Quidem aperiam omnis est voluptates voluptatem. Quis est ratione accusamus distinctio et. Cupiditate similique cupiditate tenetur fuga. Voluptatibus molestiae esse quo corporis. Sapiente sed et necessitatibus totam. Perferendis voluptates eius sed non repellendus. Id est voluptate ipsa sapiente est.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(29, NULL, 'Et voluptate recusandae.', 16606, 'https://lorempixel.com/616/353/?28174', 'Rerum officiis voluptas debitis dignissimos. Architecto velit harum dolorem sint dolor voluptate animi. Unde possimus et illo dignissimos provident ut voluptate. Sit assumenda placeat voluptatem deleniti. Exercitationem consequatur quas dolores aperiam in rerum qui. Nisi distinctio praesentium veritatis omnis aut est est. Atque voluptates voluptatem voluptatem vero ea. Vitae est quisquam laudantium qui exercitationem ex laboriosam iusto. In dignissimos quae dolorem quod ut eius.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(30, 2, 'Voluptate odit.', 87591, 'https://lorempixel.com/616/353/?21466', 'Fugit qui dolorem eos illo perferendis dolores. Placeat minus temporibus repellat reiciendis et qui iste voluptatem. Nihil vitae vero et qui sit. Vel consequatur vel qui et hic omnis non. Perspiciatis facilis recusandae corporis modi quisquam incidunt et. Eos excepturi repellendus aspernatur incidunt qui id at sint. Quasi natus id eum deserunt culpa dignissimos eos numquam. Omnis rerum velit recusandae fugit.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(31, NULL, 'Ipsam in qui.', 40701, 'https://lorempixel.com/616/353/?21191', 'Vel eligendi voluptatem officia sit vel enim repellat. Ab ex veritatis molestias eveniet quia voluptas accusamus. Est rerum aut et id odit. Veniam qui delectus reprehenderit qui quam. Quaerat voluptatibus ad odit voluptatem. Itaque consequatur et sed odio enim voluptas. Vel quae cumque voluptas modi deserunt. Ea voluptas placeat eveniet. Reiciendis odio accusamus excepturi eos. Commodi autem quo et et sed consectetur voluptatibus unde. Minima porro necessitatibus libero in placeat.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(32, 2, 'Beatae ipsa nobis.', 25160, 'https://lorempixel.com/616/353/?16332', 'Odio quibusdam nisi dolores aut ad voluptas. Voluptatem aut et sint hic voluptas aut. Quia ab odio qui praesentium. Animi suscipit est quod autem aut. Et qui aut velit aliquam dolorem placeat dicta. Nam mollitia necessitatibus et doloribus consequatur. Tempora odit laborum facere aliquid illum. Ipsam consequatur est qui voluptatum provident ipsam. Quia quis ut atque beatae exercitationem nam. Ut debitis quibusdam voluptatem voluptate. Illo aut assumenda incidunt vel.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(33, 2, 'Sit adipisci.', 70197, 'https://lorempixel.com/616/353/?98549', 'Quas cupiditate quisquam eum quasi quia eum vel. Hic qui commodi dolor doloribus est enim mollitia. Nulla quis dolor dolorem qui modi quibusdam delectus. Et eaque dolorem et. Quo quia laboriosam quia incidunt et corporis sapiente magni. Laudantium repellendus ipsam amet et. Ex culpa beatae at. Tenetur placeat repellendus quia dolorem omnis labore ut. Voluptatum voluptates et id eius est praesentium architecto ut. Aut quo eos excepturi molestias quos id nobis.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(34, NULL, 'Delectus voluptatem.', 37664, 'https://lorempixel.com/616/353/?82664', 'Commodi est dicta quo ut ad perferendis repudiandae. Est saepe quia eveniet ut alias ratione non. Et quo ut quos excepturi harum. Omnis iusto sequi fugit omnis labore nostrum ut. Placeat et repellat corrupti. Et molestias hic distinctio. Et quaerat qui sunt aliquam error.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(35, 2, 'Quia occaecati.', 19365, 'https://lorempixel.com/616/353/?78292', 'Et perspiciatis quia cumque consequuntur minima voluptatum corrupti fuga. Quo alias ut ad suscipit sunt eaque inventore reiciendis. Accusamus non in asperiores est. Eum nesciunt velit est vel. Porro ut nisi cumque rerum. Aut itaque nam aut eveniet ea. Est repellat ea similique aut et aut qui.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(36, 2, 'Perspiciatis eveniet quae.', 56014, 'https://lorempixel.com/616/353/?31062', 'Repellendus dolor tenetur temporibus voluptas sed excepturi rem. Fugit soluta neque eligendi et praesentium. Aperiam exercitationem facilis itaque dolorum ut perferendis officiis quisquam. Ut provident ea dolorum aut incidunt non. Alias quia dolores eum distinctio ullam sunt. Soluta est dolorem dolorum consequuntur quis tempore. Reprehenderit numquam laboriosam doloremque debitis nam.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(37, NULL, 'Reiciendis esse.', 92130, 'https://lorempixel.com/616/353/?34282', 'Quisquam autem earum deleniti ratione quam. Ut est non alias recusandae adipisci. Commodi odio non omnis cum et alias accusamus. Dicta corporis vel minus quia totam delectus qui. Cumque autem aut nihil. Quod libero inventore odit commodi. Et magnam sed beatae facere illum. Debitis molestiae ut sed ad repudiandae tempore minima molestiae. Dolorem fugiat autem sapiente quia porro dolore.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(38, NULL, 'Et rerum.', 29771, 'https://lorempixel.com/616/353/?68880', 'Beatae ullam iste consequatur sit necessitatibus. Modi odio eum corrupti ratione aut. Maxime blanditiis illo repudiandae veritatis aliquid in. Fugit est dolor pariatur est dolore fugit quaerat iure. Et magni officiis assumenda alias. Ex accusantium dolorum soluta. Voluptatum sed ratione nihil ut autem nesciunt. Id voluptate sapiente est ratione saepe est voluptate perferendis.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(39, NULL, 'Consequuntur labore sequi.', 37083, 'https://lorempixel.com/616/353/?63874', 'Eos qui ab voluptatem enim quas quis dolor. Aliquam accusamus optio odit autem qui cumque. Omnis nesciunt aperiam natus tenetur doloremque alias autem. Vel quia similique minus et distinctio ut dolor. Necessitatibus voluptatibus omnis natus consequuntur. Dicta eum quam labore quisquam. Libero rerum rerum ad. Praesentium veritatis dignissimos rerum saepe assumenda atque. Sed earum magnam vero ut totam sed.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(40, NULL, 'Consequuntur officiis dicta.', 61947, 'https://lorempixel.com/616/353/?73356', 'Error doloribus molestiae voluptatum dolore. Sed culpa qui soluta quia nihil consectetur omnis fugit. Deserunt ut nostrum voluptate ducimus ipsum sint. Sit asperiores recusandae voluptatibus sequi vitae ad. Voluptates fugiat inventore reprehenderit neque quos natus accusantium. Quia tenetur odit quidem maiores. Et dolor voluptates optio culpa expedita. Alias quidem laboriosam consequatur.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(41, NULL, 'Incidunt ducimus.', 23321, 'https://lorempixel.com/616/353/?49431', 'Inventore neque vel ut aut quos. Consequatur qui neque officiis quam sed autem nihil. Quo quis ut culpa est possimus voluptatibus ut. Similique aliquid voluptatem ut enim sint eaque in. Quod tempora voluptatem modi totam adipisci nihil incidunt. Amet quis dicta quod reprehenderit. Sed accusamus et voluptatum est. Quae ut dolores aut commodi et. Et nisi suscipit qui in soluta unde. Molestias dicta voluptatem quidem aut molestiae repellendus quae exercitationem.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(42, NULL, 'Quae nemo.', 4096, 'https://lorempixel.com/616/353/?96046', 'Et ad quas consequatur repudiandae. Aut quis aut explicabo in voluptatem officiis. Qui eos dolores et quibusdam. Odio ut dicta aliquid maiores ratione. Ullam necessitatibus ullam aut consequatur asperiores. Asperiores at fuga et non facilis enim. Dolores voluptas omnis aspernatur autem accusantium labore. Eos iure dolorem placeat sit et aut porro.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(43, NULL, 'Fuga adipisci.', 46986, 'https://lorempixel.com/616/353/?48963', 'Ullam similique reprehenderit et ullam ex. Sunt corrupti quas officiis aut dolorem dolore minima id. Consequatur praesentium sit consequuntur et dolores. Ad quo ut qui explicabo tenetur exercitationem amet nihil. Veritatis ad qui voluptatem qui explicabo magni. Quae quos sit suscipit repudiandae et eaque quia. Voluptas error quaerat velit aut rerum. Vel omnis in aperiam saepe voluptate et ducimus.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(44, 2, 'Blanditiis voluptates voluptates.', 55999, 'https://lorempixel.com/616/353/?97301', 'Vel iste est quo odit. Natus cumque id nihil fugit. Ut odio laboriosam et quo. Consectetur perferendis rerum qui amet sit et veritatis et. Optio iste id aut at dolor. Eligendi molestiae doloremque exercitationem nostrum ut. Eos quia voluptatibus aut at cum doloribus ut. Laboriosam alias sunt corporis quibusdam ut facilis.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(45, NULL, 'Quae rem sunt.', 55250, 'https://lorempixel.com/616/353/?13080', 'Atque dolorem sint quia consequatur. Maxime quia sint aut voluptatem. Illo nihil dolores saepe perferendis et. Maiores qui harum vitae facere assumenda autem eligendi. Ad enim repudiandae quas ea autem repudiandae nobis. Architecto nulla veniam sapiente cupiditate dolores magnam laboriosam. Rerum cum et magni eligendi explicabo enim et. Ea maiores est modi. Aut voluptas architecto qui culpa ipsa quia. Odit sint ut ut distinctio necessitatibus ipsum esse reprehenderit.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(46, 2, 'Eum at.', 99692, 'https://lorempixel.com/616/353/?95658', 'Dolorem iusto nihil id. Quo laudantium vel necessitatibus in tempora quaerat. Dolor laboriosam corrupti nam repellat. Sequi laudantium veniam consequatur libero assumenda sint in quaerat. Et quia aut qui voluptatem autem aperiam. Sit sunt inventore et quod atque. Laudantium consectetur ut natus earum in. Voluptate nam quo sunt aut earum. Necessitatibus amet asperiores aut quidem similique. Perferendis dolores iure commodi.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(47, 2, 'Dolores mollitia maiores.', 60104, 'https://lorempixel.com/616/353/?48059', 'Veniam accusamus et itaque repudiandae quo aut qui. Quis rem sit error officia molestias. Dolore fugit tempore ipsum qui tempore. Aut magni aut accusantium ipsam aut. Est enim a omnis dolorum laudantium quis voluptatem asperiores. Id dolorem ut laboriosam. Perferendis numquam odit dolore doloribus sint autem. Impedit voluptatem fugiat dolor a. Ea est eligendi occaecati quis placeat.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(48, 2, 'Laborum dolores.', 63094, 'https://lorempixel.com/616/353/?34348', 'Officia tenetur ut rem quis totam dolorem adipisci. Et et dolor omnis laborum adipisci minima consequatur. Quos delectus sapiente nihil aliquid provident error dolorum nemo. Qui delectus et cumque porro. Quo soluta earum mollitia. Qui laudantium aut eos qui amet cupiditate. Hic reiciendis voluptas nihil.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(49, 2, 'Est nulla autem.', 23409, 'https://lorempixel.com/616/353/?46237', 'Sint deserunt autem officia veniam. Atque dicta accusamus qui distinctio iste adipisci consequatur. Sed dolorem quo qui assumenda et eos. Aut eveniet perferendis saepe ea. Vitae rerum eius et harum commodi deserunt error aperiam. Possimus odit animi aperiam est repellat in cumque. Veniam qui inventore ipsam possimus eos est. Illo et saepe inventore maxime et in. Iste enim vel rerum et id nam. Nihil accusantium aut eveniet.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(50, NULL, 'Necessitatibus perferendis.', 62202, 'https://lorempixel.com/616/353/?31042', 'Et et nam et enim asperiores. Aspernatur cum labore corrupti ratione veniam. Quia qui perferendis est consequatur. Rerum voluptas ut sint nihil sed. Minus ex in non qui ut. Sequi omnis ad sunt quidem nemo sint sed. In molestias et consectetur voluptate nisi quasi ea. Rem odio rem ut deleniti. Vitae minus quis maiores quo maiores molestiae. Eum excepturi delectus beatae dolorem non eum illo doloribus. Velit error minus aliquam ipsam.', '2019-08-20 19:36:34', '2019-08-20 19:36:34'),
(51, NULL, 'Quis qui.', 73901, 'https://lorempixel.com/616/353/?54541', 'Nihil neque vel dolor vitae omnis atque. Magnam corporis sint quo nihil. Labore sed recusandae esse. At et sit molestiae perspiciatis non at saepe. Qui quis sit hic qui quia explicabo. Molestiae quis quis commodi ut architecto porro. Expedita dolorem et non ipsum et architecto. Alias illo omnis quasi illum quae omnis beatae velit. Quia minus sunt rerum omnis dolores quasi quis.', '2019-08-20 19:36:34', '2019-08-20 19:36:34');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `email_notification` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`, `email_notification`) VALUES
(1, 'ubuntu', 'ubuntu@ubuntu.com', NULL, '$2y$10$C/Pd4nbcZdfnhg5UrV.jVuoB.I3nchsubOA6fa5cPWQqot/ULeSWC', NULL, '2019-08-20 19:37:58', '2019-08-20 21:03:53', 1, 'test@adsadj.com'),
(2, 'test@test.com', 'test@test.com', NULL, '$2y$10$GSLvZBsS15BYgEy0uTrddeVDU4Fk4bSN9HBUvphVIQYMD3lmzrTtm', NULL, '2019-08-20 20:40:47', '2019-08-20 20:40:47', 0, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_product_id_foreign` (`product_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
