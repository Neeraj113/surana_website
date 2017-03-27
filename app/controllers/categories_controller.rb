class CategoriesController < ApplicationController
	layout 'category.html.erb'

	def prepare_meta_tags(options={})
		site_name   = "Surana Sanitations"
		title       = options[:title]
		description = options[:description]
		keywords 	= options[:keywords]
		image       = options[:image] || "your-default-image-url"
		current_url = request.url
		# Let's prepare a nice set of defaults
		defaults = {
			site:           site_name,
			title:       	title,
			image:       	image,
			description: 	description,
			'google-site-verification':    'kZ-n--38610LddRUQtTzeci5Y2E8jyu1i681Oo0ll0k',
			language:    	'english',
			googlebot:   	'index, follow',
			google:      'notranslate',
			robots:      'index, follow',
			web_author:  'Surana Sanitations',
			distribution: 'global',
			rating:       'general',
			'revisit-after': '7 days',
			'reply-to': '&#x73;&#x75;&#x72;&#x61;&#x6E;&#x61;&#x73;&#x61;&#x6E;&#x69;&#x74;&#x61;&#x74;&#x69;&#x6F;&#x6E;&#x73;&#x40;&#x67;&#x6D;&#x61;&#x69;&#x6C;&#x2E;&#x63;&#x6F;&#x6D;',
			abstract:    'House of Tiles, Sanitaryware & Bathroom Fittings',
			reverse:     true,
			keywords:    %w[web software development mobile app],
			twitter: {
				site_name: site_name,
				site: '@suranasanitary',
				card: 'Summary',
				domain: request.protocol + request.host_with_port,
				description: description,
				image: image,
				creator: '@suranasanitary',
				url: current_url,
				title: title + ' | Dealers | Surana Sanitations | Visakhapatnam'
			},
			og: {
				url: current_url,
				site_name: site_name,
				title: title +  '| Dealers | Surana Sanitations | Visakhapatnam',
				image: image,
				description: description,
				type: 'Product'
			}
		}

		options.reverse_merge!(defaults)
		set_meta_tags options
	end

	def index
		prepare_meta_tags title: "Tiles, Sanitaryware, Pipes, Bathroom Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "House Of Tiles, CP Fittings, Sanitaryware & Plumbing Items",
		                reverse: false
	end

	def about_us
		prepare_meta_tags title: "About Us",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "House of Tiles, Sanitaryware, Plumbing and Accessory Items in Visakhapatnam #SuranaSanitations"
	end
	
	def bathroom_accessories
		prepare_meta_tags title: "Bathroom Accessories",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Jaquar, Prayag, Bathking, Xen, Seiko, Bright(Lion,BSP,Amar) Brands | Bathroom Accessories | Surana Sanitations| Visakhapatnam"
	end

	def bathroom_fittings
		prepare_meta_tags title: "Bathroom Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "jaquar, cera, bright, shakti, prayag, faucet, kitchen faucets, kitchen sink faucets, sink faucets, water faucet, water tap, bathroom taps, basin taps, tap online, sensor taps, sink taps, dealers, distributor, vizag, visakhapatnam",
		                description: "Jaquar, Cera, Bright(Lion, BSP, Amar), Prayag, Shakti Brands | Bathroom Fittings | Surana Sanitations | Visakhapatnam"
	end

	def bathtubs
		prepare_meta_tags title: "Bathtubs",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Jaquar, Cera Brands | Bathtubs | Surana Sanitations | Visakhapatnam"
	end

	def brass_valves_and_fittings
		prepare_meta_tags title: "Brass Valves And Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Zoloto, Bright(Lion, BSP, Amar), Peiro, Super Brands | Brass Valves & Fittings | Surana Sanitations | Visakhapatnam"
	end

	def ci_manhole_covers
		prepare_meta_tags title: "C.I Manhole Covers",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Swastika, Binayaka Brands | C.I Manhole Covers | Surana Sanitations | Visakhapatnam"
	end

	def ci_pipes_and_fittings
		prepare_meta_tags title: "C.I Pipes And Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "P.I.C, SON Brands | C.I Pipes and Fittings | Surana Sanitations | Visakhapatnam"
	end

	def cpvc_pipes_and_fittings
		prepare_meta_tags title: "CPVC Pipes And Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Astral, Ashirvad, Prince Brands | CPVC Pipes & Fittings | Surana Sanitations | Visakhapatnam"
	end

	def gi_pipes_and_fittings
		prepare_meta_tags title: "G.I Pipes And Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Oswal, Jindal, H.B, Tata Brands | G.I Pipes & Fittings | Surana Sanitations | Visakhapatnam"
	end

	def hand_dryer
		prepare_meta_tags title: "Hand Dryer",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Jaquar, Cera, Imported Brands | Hand Dryer | Surana Sanitations | Visakhapatnam"
	end

	def hdpe_pipes_and_fittings
		prepare_meta_tags title: "HDPE Pipes And Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Reliance, Sri Tulsi Brands | HDPE Pipes & Fittings | Surana Sanitations | Visakhapatnam"
	end

	def kitchen_sinks
		prepare_meta_tags title: "Kitchen Sinks",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Nirali, Jayna, Chandini, Prayag Brands | Sinks | Surana Sanitations | Visakhapatnam"
	end

	def mirrors_and_cabinets
		prepare_meta_tags title: "Mirrors And Cabinets",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Prayag, Sonata, Cera Brands | Mirrors & Cabinets | Surana Sanitations | Visakhapatnam"
	end

	def ppr_pipes_and_fittings
		prepare_meta_tags title: "PPR Pipes And Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Prince Brand | PPR Pipes & Fittings | Surana Sanitations | Visakhapatnam"
	end

	def ptmt_fittings
		prepare_meta_tags title: "PTMT Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Prayag, Shakti, Polytuf Brands | PTMT Fittings | Surana Sanitations | Visakhapatnam"
	end

	def pvc_pipes_and_fittings
		prepare_meta_tags title: "PVC Pipes And Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Sudhakar, Prince, Astral, Nandi Brands | PVC Pipes & Fittings | Surana Sanitations | Visakhapatnam"
	end

	def sanitaryware
		prepare_meta_tags title: "Sanitaryware",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Jaquar, Cera, Parryware Brands | Sanitaryware | Surana Sanitations | Visakhapatnam"
	end

	def shower_enclosures
		prepare_meta_tags title: "Shower Enclosures",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Jaquar Brand | Shower Enclosures | Surana Sanitations | Visakhapatnam"
	end

	def shower_panels
		prepare_meta_tags title: "Shower Panels",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Jaquar, Cera Brands | Shower Panels | Surana Sanitations | Visakhapatnam"
	end

	def swr_pipes_and_fittings
		prepare_meta_tags title: "SWR Pipes And Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Sudhakar, Astral, Prince Brands | SWR Pipes & Fittings | Visakhapatnam"
	end

	def tiles
		prepare_meta_tags title: "Tiles",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Johnson, Ardex Endura, Laticrete, Somany, Nitco, Kajaria Brands | Tiles | Surana Sanitations | Visakhapatnam"
	end

	def upvc_pipes_and_fittings
		prepare_meta_tags title: "UPVC Pipes And Fittings",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Kisan, Astral Brands | UPVC Pipes & Fittings | Surana Sanitations | Visakhapatnam"
	end

	def water_heater
		prepare_meta_tags title: "Water Heater",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Jaquar Brand | Water Heater | Surana Sanitations | Visakhapatnam"
	end

	def water_tank
		prepare_meta_tags title: "Water Tank",
		                image: "http://ssbathstudio.com/assets/logo.png",
		                keywords: "sanitaryware, plumbing, accessories, mirror, faucets, sinks, water tank, pvc, upvc, cpvc, swr, gi, ci, pipes, fittings, bathtub, tiles, shower panel, geyser, shower encloser, manhole cover, water heater, dealer, dealers, distributor, distributors, vizag, visakhapatnam, jaquar, cera, johson, sudhakar, prince, astral, ashirvad, prayag, nirali, jayna, laticrete, chandini, shakti, kisan, swastika, pic, ardex, endura, parryware, seiko, polytuf, sintex, xen, surana, sanitations, bath fittings, bath, kitchen, brass valve, ptmt fittings",
		                description: "Sintex, Reno, Sudhakar Brands | Water Tank | Surana Sanitations | Visakhapatnam"
	end

	def contact
		response = verify_google_recptcha(APP_CONFIG['recaptcha_secret_key'],params[:captcha])
		IntroductionMailer.contact_form(params).deliver
		if response["success"]
			IntroductionMailer.introduction_email(params).deliver
			render json: response
		else
			render json: response
		end
	end

	private

	def verify_google_recptcha(secret_key,response)
		status = `curl "https://www.google.com/recaptcha/api/siteverify?secret=#{secret_key}&response=#{response}"`
		hash = JSON.parse(status)
		hash["success"] == true ? true : false
		hash
	end
end
